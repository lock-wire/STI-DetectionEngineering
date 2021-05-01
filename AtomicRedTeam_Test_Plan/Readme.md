# Gap Analysis with Atomic Red Team Test Commands
![Alt text](./Windows_Endpoint_Test_Plan_Filtered.svg)

## T1012: Discovery | Query Registry
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1012 -TestNumbers 1` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1012/T1012.md

## T1016: Discover | System Network Configuration Discovery
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1016 -TestNumbers 1` \
Sec: Atomic Test #2  \
`Invoke-AtomicTest T1016 -TestNumbers 2` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1016/T1016.md

## T1021.002: Lateral-Movement | Remote Services | SMB/Windows Admin Shares
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1021.002 -TestNumbers 1 -InputArgs @{"user_name" = "$env:username"; "password" = (Read-Host "Enter Password"); "share_name" = "C$"; "computer_name" = "$env:computername"}` \
Sec: Atomic Test #2  \
`Invoke-AtomicTest T1021.002 -TestNumbers 1 -InputArgs @{"share_name" = "C$"; "map_name" = "G"; "computer_name" = "$env:computername"}` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1021.002/T1021.002.md

## T1021.003: Lateral-Movement | Remote Services | Distributed Component Object Mode
Pri: Atomic Test #1  \
`Invoke-AtomicTest T1021.003 -TestNumbers 1 -InputArgs @{"computer_name" = "$env:computername"}` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1021.003/T1021.003.md

## T1021.006: Lateral-Movement | Remote Services | Windows Remote Management
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1021.006 -TestNumbers 1` \
Sec: Atomic Test #2  \
`Invoke-AtomicTest T1021.006 -TestNumbers 2 -InputArgs @{"host_name" = "$env:computername"; "remote_command" = "cmd.exe /c whoami"}` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1021.006/T1021.006.md

## T1053.005: Execution/Persistencec/Privilege Escalation | ScheduledTask/Job | ScheduledTask
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1053.005 -TestNumbers 1` \
Sec: Atomic Test #4 \
`Invoke-AtomicTest T1053.005 -TestNumbers 4` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1053.005/T1053.005.md

## T1057: Discovery | Process Discovery
Pri: Atomic Test #2  \
`Invoke-AtomicTest T1057 -TestNumbers 2 -InputArgs @{"output_file" = "$home\loot.txt"}` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1057/T1057.md

## T1059.001: Execution | Command and Scripting Interpreter | PowerShell
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1059.001 -TestNumbers 1` \
Sec: Atomic Test #12 \
`Invoke-AtomicTest T1059.001 -TestNumbers 12` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1059.001/T1059.001.md

## T1059.003: Execution | Command and Scripting Interpreter | Windows Command Shell
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1059.003 -TestNumbers 1 -InputArgs @{"command_to_execute" = "dir c:\"; "script_path" = "$env:TEMP\T1059.003_script.bat"}` \
Sec: Atomic Test #2 \
`Invoke-AtomicTest T1059.003 -TestNumbers 2` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1059.003/T1059.003.md

## T1069.001: Discover | Permission Groups Discovery | Local Groups
Pri: Atomic Test #2 \
`Invoke-AtomicTest T1069.001 -TestNumbers 2` \
Sec: Atomic Test #3 \
`Invoke-AtomicTest T1069.001 -TestNumbers 3` \
Reference:  https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1069.001/T1069.001.md

## T1070.001: Defense Evastion | Indicator Removal on Host | ClearWindowsEvent Logs
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1070.001 -TestNumbers 1` \
Sec: Atomic Test #2 \
`Invoke-AtomicTest T1070.001 -TestNumbers 2` \
Reference:  https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1070.001/T1070.001.md

## T1070.003: Defense Evastion | Indicator Removal on Host | Clear Command History
Pri: Atomic Test #10 \
`Invoke-AtomicTest T1070.003 -TestNumbers 10` \
Sec: Atomic Test #11 \
`Invoke-AtomicTest T1070.003 -TestNumbers 11` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1070.003/T1070.003.md

## T1071.001: Command and Control | Application Layer Protocol | Web Protocols
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1071.001 -TestNumbers 1` \
Sec: ~~Atomic Test #2~~ **Required curl.exe** \
`Invoke-AtomicTest T1071.001 -TestNumbers 2` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1071.001/T1071.001.md

## T1071.004: Command and Control | Application Layer Protocol | DNS
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1071.004 -TestNumbers 1` \
Sec: Atomic Test #2 \
`Invoke-AtomicTest T1071.004 -TestNumbers 2` \
Reference:  https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1071.004/T1071.004.md

## T1078.003: Initial Access/Persistence/Privilege Escalation/Defense Evasion | Valid Accounts | Local Accounts
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1078.003 -TestNumbers 1` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1078.003/T1078.003.md

## T1083: Discovery | File and Directory Discovery
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1083 -TestNumbers 1` \
Sec: Atomic Test #2 \
`Invoke-AtomicTest T1083 -TestNumbers 2` \
Reference:  https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1083/T1083.md

## T1087.001: Discovery | Account Discovery | Local Account
Pri: Atomic Test #8 \
`Invoke-AtomicTest T1087.001 -TestNumbers 8` \
Sec: Atomic Test #9 \
`Invoke-AtomicTest T1087.001 -TestNumbers 9` \
Reference:  https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1087.001/T1087.001.md

## T1090.001: Command and Control | Proxy | Internal Proxy
Pri: Atomic Test # \  
`Invoke-AtomicTest T1090.001 -TestNumbers 3` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1090.001/T1090.001.md

## T1098: Persistence | Account Manipulation
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1098 -TestNumbers 1` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1098/T1098.md

## T1106: Execution | Native API
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1106 -TestNumbers 1` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1106/T1106.md

## T1110.001: Credential Access | Brute Force | Password Guessing
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1110.001 -TestNumbers 1` \
Reference:  https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1110.001/T1110.001.md

## T1197: Persistence/Defense Evasion | BITS Jobs
Pri: Atomic Test #3 \
`Invoke-AtomicTest T1197 -TestNumbers 3` \
Sec: Atomic Test #4 \
`Invoke-AtomicTest T1197 -TestNumbers 4` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1197/T1197.mdhttps://github

## T1219: Command and Control | Remote Access Software
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1219 -TestNumbers 1` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1219/T1219.md

## T1518.001: Discovery | Software Discovery | Security Software Discovery
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1518.001 -TestNumbers 1` \
Sec: Atomic Test #2 \
`Invoke-AtomicTest T1518.001 -TestNumbers 2` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1518.001/T1518.001.md

## T1546.001: Persistence/Privilege Escalation | Event Triggered Execution | Change Default File Association
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1546.001 -TestNumbers 1` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1546.001/T1546.001.md

## T1546.011: Persistence/Privilege Escalation | Event Triggered Execution | Application Shimming
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1546.011 -TestNumbers 1` \
Sec: Atomic Test #3 \
`Invoke-AtomicTest T1546.011 -TestNumbers 3` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1546.011/T1546.011.md

## T1548.002: Privilege Escalation/Defense Evasion | Abuse Elevation Control Mechanism | Bypass User Account Control
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1548.002 -TestNumbers 1` \
Sec: Atomic Test #2 \
`Invoke-AtomicTest T1548.002 -TestNumbers 2` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1548.002/T1548.002.md

## T1555: Credential Access | Credentials from Password Stores
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1555 -TestNumbers 1` \
Reference:  https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1555/T1555.md

## T1566.001: Initial Access | Phishing | Spearphishing Attachment
Pri: Atomic Test #2 \
`Invoke-AtomicTest T1566.001 -TestNumbers 2` \
Sec: Atomic Test #1 \
`Invoke-AtomicTest T1566.001 -TestNumbers 1` \
Reference:https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1566.001/T1566.001.md

## T1569.002: Execution | System Services | Service Execution
Pri: Atomic Test #2 \
`Invoke-AtomicTest T1569.002 -TestNumbers 2` \
Sec: Atomic Test #5 \
`Invoke-AtomicTest T1569.002 -TestNumbers 5` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1047/T1047.md

## T1571: Command and Control | Non-Standard Port
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1571 -TestNumbers 1` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1571/T1571.md

## T1573: Command and Control | Encrypted Channel
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1573 -TestNumbers 1` \
Reference:  https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1573/T1573.md

## T1574.001: Persistence/Privilege Escalation/ Defense Evasion | Hijack Execution Flow | DLL Search Order Hijacking
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1574.001 -TestNumbers 1` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1574.001/T1574.001.md

## T1574.002: Persistence/Privilege Escalation/ Defense Evasion | Hijack Execution Flow | DLL Side-Loading
Pri: Atomic Test #1 \
`Invoke-AtomicTest T1574.002 -TestNumbers 1` \
Reference: https://github.com/redcanaryco/atomic-red-team/blob/master/atomics/T1574.002/T1574.002.md