[Setup]
AppName=JFK Patient Management System
AppVersion=1.0
DefaultDirName={pf}\JFK Patient Management System
DefaultGroupName=JFK Patient Management System
OutputDir=.
OutputBaseFilename=JFK_Patient_Management_System_Installer
Compression=lzma2
SolidCompression=yes
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Files]
; Include the executable and any additional files
Source: "dist\GUI.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "background.jpg"; DestDir: "{app}"; Flags: ignoreversion
Source: "background.jpg"; DestDir: "{app}"; Flags: ignoreversion
[Icons]
; Create a desktop shortcut
Name: "{commondesktop}\JFK Patient Management System"; Filename: "{app}\GUI.exe"
; Create a start menu shortcut
Name: "{group}\JFK Patient Management System"; Filename: "{app}\GUI.exe"

[Run]
; Run the application after installation
Filename: "{app}\GUI.exe"; Description: "Launch JFK Patient Management System"; Flags: nowait postinstall skipifsilent