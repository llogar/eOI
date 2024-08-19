[Setup]
DisableWelcomePage=no
ArchitecturesInstallIn64BitMode=x64
AppName=eOI
AppVerName=eOI
AppPublisherURL=http://www.github.com/llogar/eOI
DefaultDirName={commonpf}\eOI
OutputBaseFilename=eOI-x86_64
DefaultGroupName=eOI

[Languages]
Name: "si"; MessagesFile: "compiler:Languages\Slovenian.isl"

[Files]
; main
Source: ..\install-eOI\x86_64\bin\eOI-tool.exe; DestDir: {app}\bin; Flags: ignoreversion overwritereadonly replacesameversion ignoreversion;
Source: ..\install-eOI\x86_64\bin\pkcs11-tool.exe; DestDir: {app}\bin; Flags: ignoreversion overwritereadonly replacesameversion ignoreversion;
Source: ..\install-eOI\x86_64\bin\pkcs15-tool.exe; DestDir: {app}\bin; Flags: ignoreversion overwritereadonly replacesameversion ignoreversion;
Source: ..\install-eOI\x86_64\dll\*.dll; DestDir: {sys}; Flags: ignoreversion overwritereadonly replacesameversion uninsnosharedfileprompt restartreplace;
Source: ..\install-eOI\i686\dll\*.dll; DestDir: {syswow64}; Flags: ignoreversion overwritereadonly replacesameversion uninsnosharedfileprompt restartreplace;
Source: ..\install-eOI\x86_64\conf\eOI.conf; DestDir: {app}\conf; Permissions: everyone-full
; driver
Source: Driver-eOI\CA.der; DestDir: {app}\driver; Flags: deleteafterinstall;
Source: Driver-eOI\eOI.cat; DestDir: {app}\driver;
Source: Driver-eOI\eOI.inf; DestDir: {app}\driver;

[UninstallDelete]
Type: filesandordirs; Name: "{app}\driver"

[Registry]
Root: HKLM; Subkey: Software\eOI; ValueType: string; ValueName: ConfigFile; ValueData: {app}\conf\eOI.conf; Flags: uninsdeletekey;
Root: HKLM; Subkey: Software\eOI; ValueType: string; ValueName: HomeDir; ValueData: {app}; Flags: uninsdeletekey;
Root: HKLM; Subkey: Software\eOI; ValueType: string; ValueName: CertArea; ValueData: {app}\conf; Flags: uninsdeletekey;
Root: HKLM; Subkey: Software\eOI; ValueType: string; ValueName: PINManagement; ValueData: {app}\bin\eOIMgmt.exe; Flags: uninsdeletekey; Components:

Root: HKLM32; Subkey: Software\eOI; ValueType: string; ValueName: ConfigFile; ValueData: {app}\conf\eOI.conf; Flags: uninsdeletekey;
Root: HKLM32; Subkey: Software\eOI; ValueType: string; ValueName: ProfilesDir; ValueData: {app}\profiles; Flags: uninsdeletekey;

Root: HKLM; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI; ValueType: binary; ValueName: ATR; ValueData: 3b d5 18 ff 81 91 fe 1f c3 80 73 c8 21 10 0a; Flags: uninsdeletekey;
Root: HKLM; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI; ValueType: binary; ValueName: ATRMask; ValueData: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff; Flags: uninsdeletekey;
Root: HKLM; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI; ValueType: string; ValueName: Crypto Provider; ValueData: Microsoft Base Smart Card Crypto Provider; Flags: uninsdeletekey;
Root: HKLM; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI; ValueType: string; ValueName: Smart Card Key Storage Provider; ValueData: Microsoft Smart Card Key Storage Provider; Flags: uninsdeletekey;
Root: HKLM; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI; ValueType: string; ValueName: 80000001; ValueData: eOI-minidriver64.dll; Flags: uninsdeletekey;

Root: HKLM32; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI; ValueType: binary; ValueName: ATR; ValueData: 3b d5 18 ff 81 91 fe 1f c3 80 73 c8 21 10 0a; Flags: uninsdeletekey;
Root: HKLM32; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI; ValueType: binary; ValueName: ATRMask; ValueData: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff; Flags: uninsdeletekey;
Root: HKLM32; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI; ValueType: string; ValueName: Crypto Provider; ValueData: Microsoft Base Smart Card Crypto Provider; Flags: uninsdeletekey;
Root: HKLM32; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI; ValueType: string; ValueName: Smart Card Key Storage Provider; ValueData: Microsoft Smart Card Key Storage Provider; Flags: uninsdeletekey;
Root: HKLM32; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI; ValueType: string; ValueName: 80000001; ValueData: eOI-minidriver32.dll; Flags: uninsdeletekey;

Root: HKLM; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI (contactless); ValueType: binary; ValueName: ATR; ValueData: 3b 85 80 01 80 73 c8 21 10 0e; Flags: uninsdeletekey;
Root: HKLM; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI (contactless); ValueType: binary; ValueName: ATRMask; ValueData: ff ff ff ff ff ff ff ff ff ff; Flags: uninsdeletekey;
Root: HKLM; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI (contactless); ValueType: string; ValueName: Crypto Provider; ValueData: Microsoft Base Smart Card Crypto Provider; Flags: uninsdeletekey;
Root: HKLM; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI (contactless); ValueType: string; ValueName: Smart Card Key Storage Provider; ValueData: Microsoft Smart Card Key Storage Provider; Flags: uninsdeletekey;
Root: HKLM; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI (contactless); ValueType: string; ValueName: 80000001; ValueData: eOI-minidriver64.dll; Flags: uninsdeletekey;

Root: HKLM32; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI (contactless); ValueType: binary; ValueName: ATR; ValueData: 3b 85 80 01 80 73 c8 21 10 0e; Flags: uninsdeletekey;
Root: HKLM32; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI (contactless); ValueType: binary; ValueName: ATRMask; ValueData: ff ff ff ff ff ff ff ff ff ff; Flags: uninsdeletekey;
Root: HKLM32; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI (contactless); ValueType: string; ValueName: Crypto Provider; ValueData: Microsoft Base Smart Card Crypto Provider; Flags: uninsdeletekey;
Root: HKLM32; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI (contactless); ValueType: string; ValueName: Smart Card Key Storage Provider; ValueData: Microsoft Smart Card Key Storage Provider; Flags: uninsdeletekey;
Root: HKLM32; Subkey: Software\Microsoft\Cryptography\Calais\SmartCards\eOI (contactless); ValueType: string; ValueName: 80000001; ValueData: eOI-minidriver32.dll; Flags: uninsdeletekey;

[Run]
Filename: {sys}\certutil.exe; WorkingDir: {app}\driver; Parameters: "-addstore Root CA.der"; StatusMsg: "Adding trusted publisher..."; Flags: waituntilterminated runhidden
Filename: {sys}\pnputil.exe; WorkingDir: {app}\driver; Parameters: "/add-driver eOI.inf"; StatusMsg: "Installing eOI driver..."; Flags: waituntilterminated runhidden

