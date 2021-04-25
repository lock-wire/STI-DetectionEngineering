# STI-ISE5901
STI ISE 5901 Whitepaper repository

## AtomicRedTeam Test Plan in MITRE ATT&CK Navigator
![Alt text](./Windows_Endpoint_Test_Plan.svg)
<img src="./Windows_Endpoint_Test_Plan.svg">
- The AtomicRedTeam Test Plan is stored in json format.  
- Import the json into the MITRE ATT&CK Navigator in Security Onion 2.3.x or at https://mitre-attack.github.io/attack-navigator/.
- **50** techniques and sub-techniques selected in 9 of the 12 MITRE ATT&CK Enterprise 
1. https://jqplay.org/
2. Paste test plan json into JSON window.
3. Copy into Filter: \
`.techniques[] | {techniqueID: .techniqueID, comment: .comment} | .techniqueID`
4. Copy and Paste Output into techniques.txt
5. PowerShell command to sort, unique, and count \
`get-content techniques.txt | sort-object | get-unique | measure-object -word`
- **34** Unique techniques will be tested (Duplications removed) \
1. https://jqplay.org/
2. Paste test plan json into JSON window.
3. Copy into Filter: \
`.techniques[] | {techniqueID: .techniqueID, comment: .comment} | select(.comment!="") | .techniqueID`
4. Copy and Paste Output into techniqueID.txt
5. PowerShell command to sort, unique, and count \
`get-content techniqueID.txt | sort-object | get-unique | measure-object -word`
- **71** Atomic Red Team tests planned
1. https://jqplay.org/
2. Paste test plan json into JSON window.
3. Copy into Filter: \
`.techniques[] | {techniqueID: .techniqueID, comment: .comment} | select(.comment!="") | .comment`
4. Copy and Paste Output into comments.txt
5. PowerShell command to sort, unique, and count \
`(get-content comments.txt).split("|") | select-string "Atomic Test #" | sort-object | measure-object -line`


## Install Invoke-AtomicRedTeam Setup
Follow instructions at https://github.com/redcanaryco/invoke-atomicredteam/wiki

For this research paper, the following setup commands were used.
1. Make a Tools Directory: `New-Item -Path"c:\" -Name "Tools" -ItemType "directory"`
2. Install Invoke-AtomicRedTeam Module:
`IEX (IWR 'https://raw.githubusercontent.com/redcanaryco/invoke-atomicredteam/master/install-atomicredteam.ps1' -UseBasicParsing); \
Install-AtomicRedTeam -InstallPath "c:\Tools" -getAtomics`
3. Update PowerShell profile to automatically install the module in new shell:
1. `notepad $profile`
2. Paste the following, save, then close. 
`Import-Module "C:\Tools\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force \
$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="C:\Tools\atomics"}`