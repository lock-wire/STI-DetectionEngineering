# STI-ISE5901
STI ISE 5901 Whitepaper repository

## AtomicRedTeam Test Plan in MITRE ATT&CK Navigator
- The AtomicRedTeam Test Plan is stored in json format.  
- Import the json into the MITRE ATT&CK Navigator in Security Onion 2.3.x or at https://mitre-attack.github.io/attack-navigator/.

## Install Invoke-AtomicRedTeam Setup
Follow instructions at https://github.com/redcanaryco/invoke-atomicredteam/wiki

For this research paper, the following setup commands were used.
1. Make a Tools Directory: `New-Item -Path "c:\" -Name "Tools" -ItemType "directory"`
2. Install Invoke-AtomicRedTeam Module
	`IEX (IWR 'https://raw.githubusercontent.com/redcanaryco/invoke-atomicredteam/master/install-atomicredteam.ps1' -UseBasicParsing); \
	Install-AtomicRedTeam -InstallPath "c:\Tools" -getAtomics`
3. Update PowerShell profile to automatically install the module in new shell:
	1. `notepad $profile`
	2. Paste the following, save, then close. \
		`Import-Module "C:\Tools\invoke-atomicredteam\Invoke-AtomicRedTeam.psd1" -Force \
		$PSDefaultParameterValues = @{"Invoke-AtomicTest:PathToAtomicsFolder"="C:\Tools\atomics"}`