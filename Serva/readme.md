1. start Serva64.exe
2. powershell(admin) -> "Enable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol"
3. fritzbox -> Heimnetz -> Netzwerk -> Netzwerkeinstellungen -> DHCP -> activate
4. Systemsteuerung\System und Sicherheit\Windows Defender Firewall\Zugelassene Apps
    -> erlaube: "Serva64.exe", "Netzwerkerkennung", "Datei- und Druckerfreigabe (SMB-In)"
5. restart Serva64.exe