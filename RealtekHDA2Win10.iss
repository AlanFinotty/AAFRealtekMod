// SCRIPT CREATED BY ALAN FINOTTY
// Preprocessor Section
#define RtkAppName "AAF Optimus Sound"
#define CTAppName "Sound Blaster Connect 2"
#define CTApp2Name "Sound Blaster X-Fi MB5"
#define RtkAppVersion GetFileVersion("D:\Audio\HDA\Driver64-4\RealtekSysDriver\RTKVHD64.sys")
#define RtkAppPublisher "Alan Finotty"
#define RtkAppURL "https://www.techpowerup.com/forums/members/alan-finote.170292/"
#define RtkAppCopyright "Copyright © 2020 Alan Finotty."
#define AAFStyleSkinFilepath "{localappdata}\AAFStyle"
#define AAFSkinFilename "BlueGraphite.vsf"
#define AAFWhiteSkinFilename "Windows10.vsf"
#define AAFDarkSkinFilename "Windows10Dark.vsf"

// Setup Config Section
[Setup]
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
AppId={{F132AF7F-7BCA-4EDE-8A7C-958108FE7DBC}
AppName={#RtkAppName}
AppVersion={#RtkAppVersion}
AppVerName={#RtkAppName}
AppPublisher={#RtkAppPublisher}
AppPublisherURL={#RtkAppURL}
AppSupportURL={#RtkAppURL}
AppUpdatesURL={#RtkAppURL}
DefaultDirName={sd}\ProgramData\AAFMod\Files
DisableDirPage=yes
DefaultGroupName={#RtkAppName}
DisableProgramGroupPage=yes
DisableFinishedPage=yes
DisableWelcomePage=no
DisableReadyPage=no
OutputDir=D:\Downloads\Programas\AAF Installers
OutputBaseFilename=AAFHDAudioPack-{#RtkAppVersion}
SetupIconFile=D:\Audio\HDA\Driver64-4\favicon.ico
Uninstallable=yes
UninstallDisplayName={#RtkAppName}
UninstallFilesDir={app}
UninstallDisplayIcon={win}\System32\favicon.ico
Compression=lzma2/ultra64
SolidCompression=yes
SignedUninstaller=yes
SignTool=signtool
SignTool=signtool2
SignToolRetryCount=10
VersionInfoCopyright={#RtkAppCopyright}
VersionInfoCompany={#RtkAppPublisher}
VersionInfoVersion={#RtkAppVersion}
VersionInfoDescription={#RtkAppName}
VersionInfoOriginalFileName=AAFHDAudioPack-{#RtkAppVersion}.exe
VersionInfoProductName={#RtkAppName}
VersionInfoProductTextVersion={#RtkAppVersion}
VersionInfoTextVersion={#RtkAppVersion}
VersionInfoProductVersion={#RtkAppVersion}
MinVersion=6.1
WizardStyle=modern
WindowResizable=False
WizardImageStretch=yes
WizardImageAlphaFormat=premultiplied
WizardSizePercent=150,125
WizardResizable=no
RestartApplications=False
DirExistsWarning=no
PrivilegesRequired=admin
AlwaysRestart=no
RestartIfNeededByRun=no
DisableStartupPrompt=True
DisableReadyMemo=True
AppCopyright={#RtkAppCopyright}
UserInfoPage=False
InternalCompressLevel=ultra64
BackColor=$00F26B31
AppComments=Driver Modified by {#RtkAppPublisher}
AllowCancelDuringInstall=True
AllowNoIcons=True
AllowRootDirectory=True
UpdateUninstallLogAppName=False
DEPCompatible=yes
UninstallRestartComputer=yes
DefaultDialogFontName=Segoe UI
SetupLogging=yes

// Language Section
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

// Language Options Section
[LangOptions]
LanguageName=English
LanguageID=$0409
DialogFontName=Segoe UI
DialogFontSize=10
WelcomeFontName=Segoe UI
WelcomeFontSize=18
TitleFontName=Segoe UI
TitleFontSize=32
CopyrightFontName=Segoe UI
CopyrightFontSize=13

// Messages Section
[Messages]
SetupAppTitle={#RtkAppName}
SetupWindowTitle=Setup - {#RtkAppName}
ButtonCancel=&Exit
ButtonBack=← &Previous
ButtonNext=&Next →
ButtonInstall=&Install ↓
ClickNext=Click Next to continue, or Cancel to exit Setup.
ExitSetupMessage=Installation has not yet been completed.%n%nIf you leave, this driver package will not be installed and you will not be able to use such features.%n%nAre you sure you want to exit this installation wizard?
AboutSetupMenuItem=&About This Installer Wizard...
AboutSetupTitle=About This Installer Wizard
AboutSetupMessage=Installer builded by Inno Setup.
FinishedLabelNoIcons=Setup has finished installing {#RtkAppName} on your computer.%n%nBut you need to restart your computer so you can enjoy all the features.
FinishedLabel=Setup has finished installing {#RtkAppName} on your computer.
ClickFinish=But you need to restart your computer so you can enjoy all the features.
SelectTasksLabel2=Select Your Options

// Source Files Section
[Files]
Source: "D:\Audio\RtlUpd64.exe"; DestDir: "{app}\Uninst"; Flags: ignoreversion
Source: "D:\Audio\HDA\Driver64-4\*"; DestDir: "{app}\Driver"; Flags: deleteafterinstall ignoreversion
Source: "D:\Audio\HDA\Driver64-4\RealtekSysDriver\*"; DestDir: "{app}\Driver\RealtekSysDriver"; Flags: deleteafterinstall ignoreversion
Source: "D:\Audio\HDA\Driver64-4\HDX.inf"; DestDir: "{app}\Driver"; Flags: ignoreversion; Attribs: hidden
Source: "D:\Audio\HDA\Driver64-4\APO_000_15063\APO_000_EXT\*"; DestDir: "{app}\Driver\APO_000_15063\APO_000_EXT"; Flags: deleteafterinstall ignoreversion recursesubdirs; MinVersion: 10.0.15063
Source: "D:\Audio\HDA\Driver64-4\APO_000_15063\APO_000_EXT\Apo000Ext.inf"; DestDir: "{app}\Driver\APO_000_15063\APO_000_EXT"; Flags: ignoreversion; MinVersion: 10.0.15063; Attribs: hidden
Source: "D:\Audio\HDA\Driver64-4\APO_000_15063\APO_000_SWC\*"; DestDir: "{app}\Driver\APO_000_15063\APO_000_SWC"; Flags: deleteafterinstall ignoreversion recursesubdirs; Tasks: RTKAPO; MinVersion: 10.0.15063
Source: "D:\Audio\HDA\Driver64-4\APO_000_15063\APO_000_SWC\Apo000Swc.inf"; DestDir: "{app}\Driver\APO_000_15063\APO_000_SWC"; Flags: ignoreversion; Tasks: RTKAPO; MinVersion: 10.0.15063; Attribs: hidden
Source: "D:\Audio\HDA\Driver64-4\APO_000_15063\APO_000_SWC2\*"; DestDir: "{app}\Driver\APO_000_15063\APO_000_SWC2"; Flags: deleteafterinstall ignoreversion recursesubdirs; Tasks: RTKAPO2; MinVersion: 10.0.15063
Source: "D:\Audio\HDA\Driver64-4\APO_000_15063\APO_000_SWC2\Apo000Swc2.inf"; DestDir: "{app}\Driver\APO_000_15063\APO_000_SWC2"; Flags: ignoreversion; Tasks: RTKAPO2; MinVersion: 10.0.15063; Attribs: hidden
Source: "D:\Audio\HDA\Driver64-4\AAF_15063\*"; DestDir: "{app}\Driver\AAF_15063"; Flags: deleteafterinstall ignoreversion recursesubdirs; Tasks: AAF; MinVersion: 10.0.15063
Source: "D:\Audio\HDA\Driver64-4\AAF_15063\AAF_ASIO_EXT\AAFAsioExt.inf"; DestDir: "{app}\Driver\AAF_15063\AAF_ASIO_EXT"; Flags: ignoreversion; Tasks: AAF; MinVersion: 10.0.15063; Attribs: hidden
Source: "D:\Audio\HDA\Driver64-4\AAF_15063\AAF_ASIO_SWC\AAFAsioSwc.inf"; DestDir: "{app}\Driver\AAF_15063\AAF_ASIO_SWC"; Flags: ignoreversion; Tasks: AAF; MinVersion: 10.0.15063; Attribs: hidden
Source: "D:\Audio\HDA\Driver64-4\APO_001_15063\*"; DestDir: "{app}\Driver\APO_001_15063"; Flags: deleteafterinstall ignoreversion recursesubdirs; Tasks: CT\SBC; MinVersion: 10.0.15063
Source: "D:\Audio\HDA\Driver64-4\APO_001_15063\APO_001_EXT\Apo001Ext.inf"; DestDir: "{app}\Driver\APO_001_15063\APO_001_EXT"; Flags: ignoreversion; Tasks: CT\SBC; MinVersion: 10.0.15063; Attribs: hidden
Source: "D:\Audio\HDA\Driver64-4\APO_001_15063\APO_001_SWC\Apo001Swc.inf"; DestDir: "{app}\Driver\APO_001_15063\APO_001_SWC"; Flags: ignoreversion; Tasks: CT\SBC; MinVersion: 10.0.15063; Attribs: hidden
Source: "D:\Audio\SBCon2\*"; DestDir: "{pf32}\Creative\Sound Blaster Connect 2"; Flags: ignoreversion recursesubdirs; Tasks: CT\SBC; MinVersion: 10.0.15063
Source: "D:\Audio\SBConnSvc\*"; DestDir: "{pf32}\Creative\Connection Service"; Flags: ignoreversion; Tasks: CT\SBC; MinVersion: 10.0.15063
Source: "D:\Audio\X-Fi\*"; DestDir: "{app}\X-Fi"; Flags: ignoreversion recursesubdirs; Tasks: CT\XFI
Source: "D:\Audio\HDA\Driver64-4\APO_002_16299\*"; DestDir: "{app}\Driver\APO_002_15063"; Flags: deleteafterinstall ignoreversion recursesubdirs; Tasks: AVO; MinVersion: 10.0.16299
Source: "D:\Audio\HDA\Driver64-4\APO_002_16299\APO_002_EXT\Apo002Ext.inf"; DestDir: "{app}\Driver\APO_002_16299\APO_002_EXT"; Flags: ignoreversion; Tasks: AVO; MinVersion: 10.0.16299; Attribs: hidden
Source: "D:\Audio\HDA\Driver64-4\APO_002_16299\APO_002_SWC\Apo002Swc.inf"; DestDir: "{app}\Driver\APO_002_16299\APO_002_SWC"; Flags: ignoreversion; Tasks: AVO; MinVersion: 10.0.16299; Attribs: hidden
Source: "D:\Audio\Nahimic\*"; DestDir: "{sd}\ProgramData\AAF\Nahimic"; Flags: deleteafterinstall ignoreversion; Tasks: AVO; MinVersion: 10.0.16299
Source: "D:\Audio\HDA\Driver64-4\APO_003_15063\*"; DestDir: "{app}\Driver\APO_003_15063"; Flags: deleteafterinstall ignoreversion recursesubdirs; Tasks: ATM; MinVersion: 10.0.15063
Source: "D:\Audio\HDA\Driver64-4\APO_003_15063\APO_003_EXT\Apo003Ext.inf"; DestDir: "{app}\Driver\APO_003_15063\APO_003_EXT"; Flags: ignoreversion; Tasks: ATM; MinVersion: 10.0.15063; Attribs: hidden
Source: "D:\Audio\HDA\Driver64-4\APO_003_15063\APO_003_SWC\Apo003Swc.inf"; DestDir: "{app}\Driver\APO_003_15063\APO_003_SWC"; Flags: ignoreversion; Tasks: ATM; MinVersion: 10.0.15063; Attribs: hidden
Source: "D:\Audio\Atmos\*"; DestDir: "{sd}\ProgramData\AAF\Atmos"; Flags: deleteafterinstall ignoreversion; Tasks: ATM; MinVersion: 10.0.15063
Source: "D:\Audio\Licensing\*"; DestDir: "{app}\KGA"; Flags: deleteafterinstall ignoreversion; Tasks: CT\SBC CT\XFI
Source: "D:\Audio\RtkConfig\*"; DestDir: "{cf64}\AAF\RtkConfig"; Flags: ignoreversion
Source: "D:\Audio\RtkConfig\RT.pdb"; DestDir: "{cf64}\AAF\RtkConfig"; Flags: ignoreversion; Attribs: hidden
Source: "D:\Audio\HDABUS\aafbus64.cat"; Flags: dontcopy
Source: "D:\Audio\HDABUS\AAFBus64.inf"; Flags: dontcopy
Source: "D:\Audio\devcon.exe"; DestDir: "{sys}"; Flags: ignoreversion
Source: "D:\Cert\Cert.cmd"; Flags: dontcopy; Attribs: hidden
Source: "D:\Documentos\AAF Script\StyleDll\AAF.VStyles.Uninstall.dll"; DestDir: "{#AAFStyleSkinFilepath}"
Source: "D:\Documentos\AAF Script\StyleFiles\{#AAFSkinFilename}"; DestDir: "{#AAFStyleSkinFilepath}"
Source: "D:\Documentos\AAF Script\StyleFiles\{#AAFDarkSkinFilename}"; DestDir: "{#AAFStyleSkinFilepath}"
Source: "D:\Documentos\AAF Script\StyleFiles\{#AAFWhiteSkinFilename}"; DestDir: "{#AAFStyleSkinFilepath}"
Source: "D:\Documentos\AAF Script\StyleDll\AAF.VStyles.Install.dll"; Flags: dontcopy
Source: "D:\Documentos\AAF Script\StyleFiles\{#AAFSkinFilename}"; Flags: dontcopy
Source: "D:\Documentos\AAF Script\StyleFiles\{#AAFDarkSkinFilename}"; Flags: dontcopy
Source: "D:\Documentos\AAF Script\StyleFiles\{#AAFWhiteSkinFilename}"; Flags: dontcopy
Source: "D:\Audio\SetACL.exe"; Flags: dontcopy
Source: "D:\Imagens\My Logos\MyWizardBlackImage.bmp"; Flags: dontcopy
Source: "D:\Imagens\My Logos\MyWizardWhiteImage.bmp"; Flags: dontcopy
Source: "D:\Imagens\My Logos\21.bmp"; Flags: dontcopy

// Shortcut Icons Section
[Icons]
Name: "{commondesktop}\Realtek Audio Device Tweak"; Filename: "{cf64}\AAF\RtkConfig\AudioDevice.exe"
Name: "{commonstartmenu}\Creative SB Connect"; Filename: "{pf32}\Creative\Sound Blaster Connect 2\Creative.SBConnect.exe"; Tasks: CT\SBC

// Registry Section
[Registry]
Root: HKLM; Subkey: "SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "Creative.CreativeConnectionService"; ValueData: """{pf32}\Creative\Connection Service\Connection Service.exe"""; Flags: uninsdeletevalue; Tasks: CT\SBC
Root: HKLM; Subkey: "SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "Creative.SBConnect"; ValueData: """{pf32}\Creative\Sound Blaster Connect 2\Creative.SBConnect.exe"" /background"; Flags: uninsdeletevalue; Tasks: CT\SBC

// Setup Tasks Section
[Tasks]
Name: RTKAPO; Description: "Realtek Default APO"; GroupDescription: "Realtek Semiconductor"; Flags: exclusive; MinVersion: 10.0.15063
Name: RTKAPO2; Description: "Realtek APO with DDL/DTS"; GroupDescription: "Realtek Semiconductor"; Flags: exclusive; MinVersion: 10.0.15063
Name: CT; Description: "Install Creative Suite"; GroupDescription: "Creative Labs"; Flags: checkablealone
Name: CT\SBC; Description: "Install {#CTAppName}"; GroupDescription: "Creative Labs"; Flags: exclusive; MinVersion: 10.0.15063
Name: CT\SBC\B360; Description: "BlasterX 360° SKU License"; GroupDescription: "Creative Labs"; Flags: exclusive; MinVersion: 10.0.15063
Name: CT\SBC\B720; Description: "BlasterX 720° SKU License"; GroupDescription: "Creative Labs"; Flags: exclusive; MinVersion: 10.0.15063
Name: CT\XFI; Description: "Install {#CTApp2Name}"; GroupDescription: "Creative Labs"; Flags: exclusive; OnlyBelowVersion: 10.0.14393
Name: AVO; Description: "Install A-Volute Nahimic 3"; GroupDescription: "A-Volute"; Flags: checkablealone; MinVersion: 10.0.15063
Name: ATM; Description: "Install Dolby ATMOS"; GroupDescription: "Dolby"; Flags: checkablealone; MinVersion: 10.0.15063
Name: AAF; Description: "Install AAF Extra ASIO"; GroupDescription: "ASIO"; Flags: checkablealone; MinVersion: 10.0.15063

// Uninstall Parameters Section
[UninstallRun]
Filename: "{cmd}"; Parameters: "/c taskkill /IM Creative.SBConnect.exe /T /F"; StatusMsg: "Now Shutting Down Active {#CTAppName} Instances"; Flags: runhidden waituntilterminated; Tasks: CT\SBC; MinVersion: 10.0.15063
Filename: "{cmd}"; Parameters: "/c taskkill /IM Connection Service.exe /T /F"; StatusMsg: "Now Shutting Down Active {#CTAppName} Instances"; Flags: runhidden waituntilterminated; Tasks: CT\SBC; MinVersion: 10.0.15063
Filename: "{cmd}"; Parameters: "/c taskkill /IM Creative.AudPosService.exe /T /F"; StatusMsg: "Now Shutting Down Active {#CTAppName} Instances"; Flags: runhidden waituntilterminated; Tasks: CT\SBC; MinVersion: 10.0.15063
Filename: "{cmd}"; Parameters: "/c taskkill /IM SBXFIMB5.exe /T /F"; StatusMsg: "Now Shutting Down Active {#CTApp2Name} Instances"; Flags: runhidden waituntilterminated; Tasks: CT\XFI
Filename: "{app}\Uninst\RtlUpd64.exe"; Parameters: "-r"; StatusMsg: "Now Uninstalling {#RtkAppName} Driver"; Flags: waituntilterminated
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_AAF&PID_APO_000"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_AAF&PID_ASIO"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AAF; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_AAF&PID_APO_001"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: CT\SBC; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_AAF&PID_APO_002"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_AAF&PID_APO_003"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =Extension ""HDAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO CT\SBC CT\XFI ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =Extension ""INTELAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO CT\SBC CT\XFI ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =MEDIA ""HDAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated
Filename: "{sys}\devcon.exe"; Parameters: "disable =MEDIA ""INTELAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_AAF&PID_APO_000"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_AAF&PID_ASIO"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AAF; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_AAF&PID_APO_001"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: CT\SBC; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_AAF&PID_APO_002"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_AAF&PID_APO_003"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =Extension ""HDAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO CT\SBC CT\XFI ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =Extension ""INTELAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO CT\SBC CT\XFI ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =MEDIA ""HDAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated
Filename: "{sys}\devcon.exe"; Parameters: "remove =MEDIA ""INTELAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\HDX.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Driver"; Flags: runhidden waituntilterminated
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\AAF_15063\AAF_ASIO_EXT\AAFAsioExt.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AAF; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\APO_000_15063\APO_000_EXT\Apo000Ext.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\APO_001_15063\APO_001_EXT\Apo001Ext.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: CT\SBC; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\APO_002_16299\APO_002_EXT\Apo002Ext.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\APO_003_15063\APO_003_EXT\Apo003Ext.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\AAF_15063\AAF_ASIO_SWC\AAFAsioSwc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AAF; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\APO_000_15063\APO_000_SWC\Apo000Swc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: RTKAPO; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\APO_000_15063\APO_000_SWC2\Apo000Swc2.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: RTKAPO2; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\APO_001_15063\APO_000_SWC\Apo001Swc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: CT\SBC; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\APO_002_16299\APO_000_SWC\Apo002Swc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\APO_000_15063\APO_000_SWC\Apo003Swc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{pf32}\Creative\Connection Service\Creative.AudPosService.exe"; Parameters: "/uninstall"; StatusMsg: "Now Shutting Down Active {#CTAppName} Instances"; Flags: runhidden waituntilterminated; Tasks: CT\SBC; MinVersion: 10.0.15063
Filename: "{pf32}\InstallShield Installation Information\{{918A4598-866C-4B8F-8901-13F8593EBED6}\setup.exe"; Parameters: "/remove"; Flags: waituntilterminated; Tasks: CT\XFI
Filename: "{cmd}"; Parameters: "/c powershell.exe -ExecutionPolicy Bypass -Command Remove-AppxPackage -Package A-Volute.Nahimic_1.4.4.0_x64__w2gh52qy24etm -AllUsers"; StatusMsg: "Now Uninstalling Nahimic 3 Application"; Flags: runhidden waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{cmd}"; Parameters: "/c powershell.exe -ExecutionPolicy Bypass -Command Remove-AppxPackage -Package DolbyLaboratories.DolbyAtmos_3.20602.609.0_x64__rz1tebttyb220 -AllUsers"; StatusMsg: "Now Uninstalling Dolby Atmos Application"; Flags: runhidden waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063

// Uninstall Delete Section
[UninstallDelete]
Type: filesandordirs; Name: "{app}\*"
Type: filesandordirs; Name: "{pf64}\Realtek\Audio\*"
Type: filesandordirs; Name: "{sd}\ProgramData\Creative\SoftwareLock\*"; Tasks: CT\SBC CT\XFI
Type: filesandordirs; Name: "{sd}\ProgramData\Creative\*"; Tasks: CT\SBC CT\XFI
Type: filesandordirs; Name: "{pf32}\Creative\Sound Blaster Connect 2\*"; Tasks: CT\SBC
Type: filesandordirs; Name: "{cf64}\AAF\RtkConfig\*"
Type: filesandordirs; Name: "{#AAFStyleSkinFilepath}\*"
Type: files; Name: "{sys}\devcon.exe"
//Not necessary in moment
//Type: files; Name: "{win}\System32\drivers\rtkhdaud.dat"

// Code Section - Pascal Script
[Code]
var
  ResultCode, ErrorCode: Integer;
  Form: TSetupForm;
	AboutButton, TPUButton, Button: TNewButton;
  Page: TWizardPage;
  EffectListPage: TOutputMsgWizardPage;
	Version: TWindowsVersion;
  FilenameLabel, StatusLabel: TNewStaticText;
	AppsUseLightTheme: Cardinal;
	PageDescriptionLabel, PageNameLabel: TLabel;
	
	
procedure LoadAAFStyle(AAFStyleFilename: String); 
	external 'LoadVCLStyleW@files:AAF.VStyles.Install.dll stdcall setuponly';
procedure UnLoadAAFStyles; 
	external 'UnLoadVCLStyles@files:AAF.VStyles.Install.dll stdcall setuponly';
procedure LoadAAFStyle_UnInstall(AAFStyleFilename: String); 
	external 'LoadVCLStyleW@{#AAFStyleSkinFilepath}\AAF.VStyles.Uninstall.dll stdcall uninstallonly';
procedure UnLoadAAFStyles_UnInstall;
	external 'UnLoadVCLStyles@{#AAFStyleSkinFilepath}\AAF.VStyles.Uninstall.dll stdcall uninstallonly';
	
function InitializeSetup(): Boolean;
begin
	GetWindowsVersionEx(Version);
	if (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 17134) then begin
		RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize', 'AppsUseLightTheme', AppsUseLightTheme);
		RegQueryDWordValue(HKCU, 'Software\Microsoft\Windows\CurrentVersion\Themes\Personalize', 'AppsUseLightTheme', AppsUseLightTheme);
		if AppsUseLightTheme = 0 then begin
			ExtractTemporaryFile('{#AAFDarkSkinFilename}');
			LoadAAFStyle(ExpandConstant('{tmp}\{#AAFDarkSkinFilename}'));
			ExtractTemporaryFile('MyWizardBlackImage.bmp');
		end else if AppsUseLightTheme = 1 then begin
			ExtractTemporaryFile('{#AAFWhiteSkinFilename}');
			LoadAAFStyle(ExpandConstant('{tmp}\{#AAFWhiteSkinFilename}'));                       
			ExtractTemporaryFile('MyWizardWhiteImage.bmp');
		end;
	end else if (Version.Major <= 10) and (Version.Minor >= 0) and (Version.Build < 17134) then begin
		ExtractTemporaryFile('{#AAFSkinFilename}');
		ExtractTemporaryFile('MyWizardBlackImage.bmp');
		LoadAAFStyle(ExpandConstant('{tmp}\{#AAFSkinFilename}'));
	end;
	if RegKeyExists(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{F132AF7F-7BCA-4EDE-8A7C-958108FE7DBC}_is1') or RegKeyExists(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{F132AF7F-7BCA-4EDE-8A7C-958108FE7DBC}') then begin
		if MsgBox('You already have a copy of {#RtkAppName} installed.'#13#13 + 'Removing the currently installed version is required to continue with this installation wizard.', mbCriticalError, mb_Ok) = IDOK then
		Exit;
	end else
		if MsgBox('This package included a driver for the Internal HD Audio Bus, especially for those with Intel Smart Sound Technology (SST) technology on their computers'#13 + 
		'(everyone will have the preference to install it), in order to replace the enumerator of the bus, changing it from "INTELAUDIO" to "HDAUDIO" and making your Realtek audio chip more compatible with APOs.'#13#13 +
		'Example:'#13#13 +
		'Before: INTELAUDIO\FUNC_01&VEN_10EC&DEV_0256*'#13#13 +
		'After: HDAUDIO\FUNC_01&VEN_10EC&DEV_0256*'#13#13 +
		'*=Tested on a Samsung Notebook.' +
		'Model: Samsung Essentials E30 with Intel SST - NP350XAA-KF3'#13#13 +
		'Do you want to install AAF Optimus Bus Driver?', mbConfirmation, MB_YESNO) = IDYES then begin
			ExtractTemporaryFile('aafbus64.cat');
			ExtractTemporaryFile('AAFBus64.inf');
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{tmp}\AAFBus64.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			Result := True;
		end else
			Result := True;
	if (RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\EnterpriseCertificates\Root\Certificates\FABEA89FA3A89BBD83ED34066507466C57673054') = FALSE) and (RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Policies\Microsoft\SystemCertificates\Root\Certificates\FABEA89FA3A89BBD83ED34066507466C57673054') = FALSE) then begin
		ExtractTemporaryFile('Cert.cmd');
		Exec(ExpandConstant('{tmp}\Cert.cmd'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		DeleteFile(ExpandConstant('{tmp}\Cert.cmd'));
	end else
		Result := True;
end;

procedure AboutButtonOnClick(Sender: TObject);
begin
  MsgBox('{#RtkAppCopyright}'#13#13 + 'Thank you very much. I hope you enjoy the work.', mbInformation, mb_Ok);
end;

procedure TPUButtonOnClick(Sender: TObject);
begin
  if MsgBox('You will be redirected to my profile page on TechPowerUp', mbInformation, mb_Ok) = IDOK then
  ShellExecAsOriginalUser('open', 'https://www.techpowerup.com/forums/members/alan-finote.170292/', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

procedure ButtonOnClick(Sender: TObject);
begin
  ShellExecAsOriginalUser('open', 'ms-settings:developers','', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

procedure FormButtonOnClick(Sender: TObject);
begin
 Form := CreateCustomForm();
  try
  Form.ClientWidth := ScaleX(256);
  Form.ClientHeight := ScaleY(128);
  Form.Caption := 'TSetupForm';
	Form.Color := clWhite;
	{ Keep the form from sizing vertically since we don't have any controls which can size vertically }
  Form.KeepSizeY := True;
  { Center on WizardForm. Without this call it will still automatically center, but on the screen }
  Form.FlipSizeAndCenterIfNeeded(False, WizardForm, False);
 finally
  Form.Free();
 end;
end;

procedure CreateAboutButtonAndURLLabel(ParentForm: TSetupForm);
begin
  AboutButton := TNewButton.Create(ParentForm);
  AboutButton.Left := ParentForm.ClientWidth - WizardForm.CancelButton.Left - WizardForm.CancelButton.Width;
  AboutButton.Top := WizardForm.CancelButton.Top;
  AboutButton.Width := WizardForm.CancelButton.Width;
  AboutButton.Height := WizardForm.CancelButton.Height;
	AboutButton.Anchors := [akLeft, akBottom];
  AboutButton.Caption := 'About Me';
  AboutButton.OnClick := @AboutButtonOnClick;
  AboutButton.Parent := ParentForm;
	
	TPUButton := TNewButton.Create(ParentForm);
  TPUButton.Left := AboutButton.Left + ScaleX(85); 
  TPUButton.Top := AboutButton.Top;
  TPUButton.Width := AboutButton.Width + ScaleX(80);
  TPUButton.Height := AboutButton.Height;
	TPUButton.Anchors := [akLeft, akBottom];
  TPUButton.Caption := 'Support on TechPowerUp';
  TPUButton.OnClick := @TPUButtonOnClick;
  TPUButton.Parent := ParentForm;
end;

function CloneStaticTextToLabel(StaticText: TNewStaticText): TLabel;
begin
  Result := TLabel.Create(WizardForm);
  Result.Parent := StaticText.Parent;
  Result.Left := StaticText.Left;
  Result.Top := StaticText.Top;
  Result.Width := StaticText.Width;
  Result.Height := StaticText.Height;
  Result.AutoSize := StaticText.AutoSize;
  Result.ShowAccelChar := StaticText.ShowAccelChar;
  Result.WordWrap := StaticText.WordWrap;
  Result.Font := StaticText.Font;
	Result.Font.Color := clWhite;
  StaticText.Visible := False;
end;

procedure InheritBoundsRect(ASource, ATarget: TControl);
begin
  ATarget.Left := ASource.Left;
  ATarget.Top := ASource.Top;
  ATarget.Width := ASource.Width;
  ATarget.Height := ASource.Height;
end;

procedure InitializeWizard();
begin
	CreateAboutButtonAndURLLabel(WizardForm);
	WizardForm.WizardSmallBitmapImage.Hide;
	WizardForm.NextButton.Top := WizardForm.CancelButton.Top;
	WizardForm.BackButton.Top := WizardForm.NextButton.Top;
	WizardForm.NextButton.Left := WizardForm.CancelButton.Left;
	WizardForm.BackButton.Left := WizardForm.NextButton.Left - ScaleX(85);
	WizardForm.CancelButton.Hide;
	WizardForm.CancelButton.Visible := False;
	WizardForm.WelcomeLabel1.Caption := 'Welcome To The {#RtkAppName} Setup Wizard';
	WizardForm.ProgressGauge.Visible := False;
	WizardForm.ProgressGauge.Hide;
	WizardForm.BeveledLabel.Caption := '{#RtkAppCopyright} Driver Version: {#RtkAppVersion}';

  //ExtractTemporaryFile('21.bmp');
  //BitmapImage := TBitmapImage.Create(WizardForm);
	//BitmapImage.BackColor := clSilver;
  //BitmapImage.Parent := WizardForm.MainPanel;
  //BitmapImage.Width := WizardForm.MainPanel.Width;
  //BitmapImage.Height := WizardForm.MainPanel.Height;
  //BitmapImage.Stretch := True;
  //BitmapImage.AutoSize := False;
  //BitmapImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\21.bmp'));
	
	StatusLabel := TNewStaticText.Create(WizardForm);
  StatusLabel.Parent := WizardForm.StatusLabel.Parent;
  StatusLabel.Left := WizardForm.StatusLabel.Left;
  StatusLabel.Top := WizardForm.StatusLabel.Top;
  StatusLabel.Width := WizardForm.StatusLabel.Width;
  StatusLabel.Height := WizardForm.StatusLabel.Height;
  StatusLabel.AutoSize := WizardForm.StatusLabel.AutoSize;
	WizardForm.StatusLabel.Visible := False;
	StatusLabel.Caption := 'The selected features are being installed. Please wait...';
	
	FilenameLabel := TNewStaticText.Create(WizardForm);
  FilenameLabel.Parent := WizardForm.FilenameLabel.Parent;
  FilenameLabel.Left := WizardForm.FilenameLabel.Left;
  FilenameLabel.Top := WizardForm.FilenameLabel.Top;
  FilenameLabel.Width := WizardForm.FilenameLabel.Width + ScaleX(300);
	FilenameLabel.Height := WizardForm.FilenameLabel.Height;
	FilenameLabel.WordWrap := WizardForm.FilenameLabel.WordWrap;
  FilenameLabel.AutoSize := WizardForm.FilenameLabel.AutoSize;
	WizardForm.FilenameLabel.Visible := False;
	
	PageNameLabel := CloneStaticTextToLabel(WizardForm.PageNameLabel);
	PageNameLabel.Width := FilenameLabel.Width;
  PageDescriptionLabel := CloneStaticTextToLabel(WizardForm.PageDescriptionLabel);
	PageDescriptionLabel.Width := PageNameLabel.Width;
	
	Page := PageFromID(wpWelcome);
	GetWindowsVersionEx(Version);

  if (Version.Major = 6) and (Version.Minor = 1) then begin
	WizardForm.WelcomeLabel2.Caption := 'I am Alan Finotty. Thank you so much for your preference. Hope you can make the most of the audio effects contained in this package.'#13#13 +
	'Click Next to continue the {#RtkAppName} Setup Wizard.'#13#13#13 +
	'You are using: Windows 7';
	end;

	if (Version.Major = 6) and (Version.Minor = 2) then begin
	WizardForm.WelcomeLabel2.Caption := 'I am Alan Finotty. Thank you so much for your preference. Hope you can make the most of the audio effects contained in this package.'#13#13 +
	'Click Next to continue the {#RtkAppName} Setup Wizard.'#13#13#13 +
	'You are using: Windows 8';
	end;
	
	if (Version.Major = 6) and (Version.Minor = 3) then begin
	WizardForm.WelcomeLabel2.Caption := 'I am Alan Finotty. Thank you so much for your preference. Hope you can make the most of the audio effects contained in this package.'#13#13 +
	'Click Next to continue the {#RtkAppName} Setup Wizard.'#13#13#13 +
	'You are using: Windows 8.1';
	end;
	
	if (Version.Major = 10) and (Version.Minor = 0) then begin
	WizardForm.WelcomeLabel2.Caption := 'I am Alan Finotty. Thank you so much for your preference. Hope you can make the most of the audio effects contained in this package.'#13#13 +
	'Click Next to continue the {#RtkAppName} Setup Wizard.'#13#13#13 +
	'You are using: Windows 10';
	end;
	
	if (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
	WizardForm.WelcomeLabel2.Caption := 'I am Alan Finotty. Thank you so much for your preference. Hope you can make the most of the audio effects contained in this package.'#13#13 +
	'Click Next to continue the {#RtkAppName} Setup Wizard.'#13#13#13 +
	'You are using: Windows 10'#13#13#13#13#13#13#13#13 +
	'Check your system development settings to ensure successful installation of the UWP apps in this package. It is recommended to enable Sideload or Developer modes.'#13 +
	'To perform this action, click the button below:';
		
	Button := TNewButton.Create(Page);
  Button.Left := WizardForm.WelcomeLabel2.Left;
  Button.Top := WizardForm.WelcomeLabel2.Top + ScaleY(232);
  Button.Width := ScaleX(82);
  Button.Height := ScaleY(23);
  Button.Caption := 'Verify Your Windows Development Configurations';
  Button.OnClick := @ButtonOnClick;
  Button.Parent := Page.Surface;
	end;
	
	if (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 17134) then
	begin
		RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize', 'AppsUseLightTheme', AppsUseLightTheme);
		RegQueryDWordValue(HKCU, 'Software\Microsoft\Windows\CurrentVersion\Themes\Personalize', 'AppsUseLightTheme', AppsUseLightTheme);
		if AppsUseLightTheme = 0 then begin
			WizardForm.WizardBitmapImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\MyWizardBlackImage.bmp'));
		end else if AppsUseLightTheme = 1 then begin
			WizardForm.WizardBitmapImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\MyWizardWhiteImage.bmp'));
		end;
	end else if (Version.Major <= 10) and (Version.Minor >= 0) and (Version.Build < 17134) then
	begin
		WizardForm.WizardBitmapImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\MyWizardBlackImage.bmp'));
	end;
	
	EffectListPage := CreateOutputMsgPage(Page.ID,
	'Sound Effects', 'List of Sound Effects enabled in this driverpack',
	'Realtek Default APO (Windows 7 Onwards)'#13#13#13 +
	'Realtek APO with DDL/DTS (Windows 10 15063 Onwards)'#13#13#13 +
	'{#CTApp2Name} (Windows 7 to Windows 10 14393)'#13#13#13 +
	'{#CTAppName} (Windows 10 15063 Onwards)'#13#13#13 +
	'A-Volute Nahimic 3 (Windows 10 build 16299 Onwards)'#13#13#13 +
	'Dolby Atmos (Windows 10 build 15063 Onwards)'#13#13#13 +
	'ASIO Driver by Alan Finotty (Windows 10 build 15063 Onwards)'#13#13#13 +
	'Realtek Audio Device Tweak Utility (Windows 7 Onwards)');
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  PageDescriptionLabel.Caption := WizardForm.PageDescriptionLabel.Caption;
  PageNameLabel.Caption := WizardForm.PageNameLabel.Caption;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
// Begin Install Section
	if CurStep = ssInstall then begin
		PageNameLabel.Caption := 'Installing Features';
		PageDescriptionLabel.Caption := '';
		FilenameLabel.Caption := 'Current Task: Extracting Files and Resources...';
	end;
	if CurStep = ssPostInstall then begin
		PageNameLabel.Caption := 'Installing Features';
		PageDescriptionLabel.Caption := '';
	// Take ownership and add permissions for Capture and Render audio keys, including subkeys, in Windows Registry to the Administrators Group
		ExtractTemporaryFile('SetACL.exe');
		FilenameLabel.Caption := 'Current Task: ADM Machine Group is Taking Ownership Capture and Render audio keys and subkeys...';
		Exec(ExpandConstant('{tmp}\SetACL.exe'), '-on "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture" -ot reg -actn setowner -ownr "n:S-1-5-32-544"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Exec(ExpandConstant('{tmp}\SetACL.exe'), '-on "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Exec(ExpandConstant('{tmp}\SetACL.exe'), '-on "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render" -ot reg -actn setowner -ownr "n:S-1-5-32-544"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Exec(ExpandConstant('{tmp}\SetACL.exe'), '-on "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
	// Take ownership and add permissions for DriverStore Folder and subfolders to the Administrators Group
		FilenameLabel.Caption := 'Current Task: ADM Machine Group is Taking Ownership DriverStore Folder and subfolders...';
	  Exec(ExpandConstant('{tmp}\SetACL.exe'), ExpandConstant('-on "{sys}\DriverStore" -ot file -actn setowner -ownr "n:S-1-5-32-544"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Exec(ExpandConstant('{tmp}\SetACL.exe'), ExpandConstant('-on "{sys}\DriverStore" -ot file -actn ace -ace "n:S-1-5-32-544;p:full"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Exec(ExpandConstant('{tmp}\SetACL.exe'), ExpandConstant('-on "{sys}\DriverStore\*" -ot file -actn setowner -ownr "n:S-1-5-32-544"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Exec(ExpandConstant('{tmp}\SetACL.exe'), ExpandConstant('-on "{sys}\DriverStore\*" -ot file -actn ace -ace "n:S-1-5-32-544;p:full"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
	// Install Realtek Main Driver
		if (Version.Major <= 10) and (Version.Minor >= 0) and (Version.Build <= 14393) then begin
			FilenameLabel.Caption := 'Current Task: Installing {#RtkAppName}...';
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\HDX.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		end else
		if (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
			FilenameLabel.Caption := 'Current Task: Installing {#RtkAppName} along with Extensions and Software Components...';
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('/add-driver "{app}\Driver\*.inf" /subdirs /install'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		end;
	// Install KGA Licenses
		if (WizardIsTaskSelected('CT\SBC')) or (WizardIsTaskSelected('CT\XFI')) then begin
			FilenameLabel.Caption := 'Current Task: Extracting KGA Licenses...';
			Exec(ExpandConstant('{app}\KGA\GenKGA.exe'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			Exec(ExpandConstant('{app}\KGA\GenKGA3.exe'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			Sleep(400);
		end;
  	// Select 360°
		if WizardIsTaskSelected('CT\SBC\B360') then begin
			FilenameLabel.Caption := 'Current Task: Configuring KGA License File for BlasterX 360°...';
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA30CF234.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA200FF2D.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTAE90C24A.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD1JXF23A.kga')); // Sound Blaster X-Fi MB2 - Sound Blaster Panel - DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD3SPO23G.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD5H2W3DK.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTH6K23AS7.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL34AF61R.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL42SW23M.kga')); // DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLA20RVB5.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD2JX234.kga')); // DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD14KLI5.kga')); // DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLE2C3BA1.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLI37CVX2.kga'));
			//DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLLAS4HX2.kga')); // Sound BlasterX 360°                                                                                                                              
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLMN34SX2.kga')); // Sound Blaster Cinema 3                                                                                                                                  
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLNBK2HX2.kga')); // Sound BlasterX 720°
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLO3H65X2.kga')); 
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLP22SV21.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLPS4HTX2.kga')); // Sound Blaster Cinema 5
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLS2SR4X2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT02H0X2.kga'));   
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT9SJDX2.kga')); // Sound Blaster Cinema 2
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT11HL3X.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT21H1X2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT46HL1X.kga'));                                                                                                                                 
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT47H9X2.kga')); // Sound Blaster Cinema
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT53HURX.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT72HL2X.kga'));                                                                                            
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT99HB0X.kga')); // Sound Blaster X-Fi MB2 - THX TruStudio Pro
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLTD2H3X2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLUE8XYX2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLXS2Q3X2.kga')); // Sound Blaster X-Fi MB5
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTT78HSK12.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTT92KD23N.kga'));
			Sleep(400);
		end;
	// Select 720°
		if WizardIsTaskSelected('CT\SBC\B720') then begin
			FilenameLabel.Caption := 'Current Task: Configuring KGA License File for BlasterX 720°...';
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA30CF234.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA200FF2D.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTAE90C24A.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD1JXF23A.kga')); // Sound Blaster X-Fi MB2 - Sound Blaster Panel - DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD3SPO23G.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD5H2W3DK.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTH6K23AS7.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL34AF61R.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL42SW23M.kga')); // DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLA20RVB5.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD2JX234.kga')); // DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD14KLI5.kga')); // DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLE2C3BA1.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLI37CVX2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLLAS4HX2.kga')); // Sound BlasterX 360°                                                                                                                               
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLMN34SX2.kga')); // Sound Blaster Cinema 3                                                                                                                                  
			//DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLNBK2HX2.kga')); // Sound BlasterX 720°
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLO3H65X2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLP22SV21.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLPS4HTX2.kga')); // Sound Blaster Cinema 5
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLS2SR4X2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT02H0X2.kga'));   
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT9SJDX2.kga')); // Sound Blaster Cinema 2
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT11HL3X.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT21H1X2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT46HL1X.kga'));                                                                                                                                 
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT47H9X2.kga')); // Sound Blaster Cinema
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT53HURX.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT72HL2X.kga'));                                                                                            
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT99HB0X.kga')); // Sound Blaster X-Fi MB2 - THX TruStudio Pro
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLTD2H3X2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLUE8XYX2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLXS2Q3X2.kga')); // Sound Blaster X-Fi MB5
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTT78HSK12.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTT92KD23N.kga'));
			Sleep(400);
		end;
	// Install Connection Service
		if WizardIsTaskSelected('CT\SBC') then begin
			FilenameLabel.Caption := 'Current Task: Installing and Initializing Creative Connection Service...';
			Exec(ExpandConstant('{pf32}\Creative\Connection Service\Creative.AudPosService.exe'), '/install', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			Exec(ExpandConstant('{pf32}\Creative\Connection Service\Connection Service.exe'), '', '', SW_HIDE, ewNoWait, ResultCode);
			Exec(ExpandConstant('{sys}\net.exe'), 'start Creative.AudPosService', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		end;
	// Select Xtreme Fidelity
		if WizardIsTaskSelected('CT\XFI') and (Version.Major <= 10) and (Version.Minor >= 0) and (Version.Build <= 14393) then begin
			FilenameLabel.Caption := 'Current Task: Configuring KGA License File for Xtreme Fidelity...';
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA30CF234.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA200FF2D.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTAE90C24A.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD1JXF23A.kga')); // Sound Blaster X-Fi MB2 - Sound Blaster Panel - DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD3SPO23G.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD5H2W3DK.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTH6K23AS7.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL34AF61R.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL42SW23M.kga')); // DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLA20RVB5.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD2JX234.kga')); // DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD14KLI5.kga')); // DTS Patcher
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLE2C3BA1.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLI37CVX2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLLAS4HX2.kga')); // Sound BlasterX 360°                                                                                                                               
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLMN34SX2.kga')); // Sound Blaster Cinema 3                                                                                                                                  
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLNBK2HX2.kga')); // Sound BlasterX 720°
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLO3H65X2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLP22SV21.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLPS4HTX2.kga')); // Sound Blaster Cinema 5
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLS2SR4X2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT02H0X2.kga'));   
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT9SJDX2.kga')); // Sound Blaster Cinema 2
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT11HL3X.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT21H1X2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT46HL1X.kga'));                                                                                                                                 
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT47H9X2.kga')); // Sound Blaster Cinema
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT53HURX.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT72HL2X.kga'));                                                                                            
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT99HB0X.kga')); // Sound Blaster X-Fi MB2 - THX TruStudio Pro
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLTD2H3X2.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLUE8XYX2.kga'));
			//DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLXS2Q3X2.kga')); // Sound Blaster X-Fi MB5
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTT78HSK12.kga'));
			DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTT92KD23N.kga'));
			Sleep(400);
			FilenameLabel.Caption := 'Current Task: Installing {#CTApp2Name}...';
			Exec(ExpandConstant('{app}\X-Fi\setup.exe'), '/silent /s /q /qn', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		end;
	// Install Nahimic 3
		if WizardIsTaskSelected('AVO') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 16299) then begin
			FilenameLabel.Caption := 'Current Task: Installing A-Volute Nahimic 3 App with Dependencies...';
			Exec(ExpandConstant('{cmd}'), ExpandConstant('/c powershell.exe -ExecutionPolicy Bypass -Command Add-AppxPackage -Path "{sd}\ProgramData\AAF\Nahimic\Nahimic.AppxBundle" -DependencyPath "{sd}\ProgramData\AAF\Nahimic\Microsoft.NET.Native.Framework.2.2_2.2.27912.0_x64__8wekyb3d8bbwe.Appx","{sd}\ProgramData\AAF\Nahimic\Microsoft.NET.Native.Runtime.2.2_2.2.28604.0_x64__8wekyb3d8bbwe.Appx","{sd}\ProgramData\AAF\Nahimic\Microsoft.VCLibs.140.00_14.0.27810.0_x64__8wekyb3d8bbwe.Appx" -ForceApplicationShutdown -ForceUpdateFromAnyVersion'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		end;
	// Install Dolby Atmos
		if WizardIsTaskSelected('ATM') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
			FilenameLabel.Caption := 'Current Task: Installing Dolby Atmos App with Dependencies...';
			Exec(ExpandConstant('{cmd}'), ExpandConstant('/c powershell.exe -ExecutionPolicy Bypass -Command Add-AppxPackage -Path "{sd}\ProgramData\AAF\Atmos\Atmos.Appx" -DependencyPath "{sd}\ProgramData\AAF\Atmos\Microsoft.NET.Native.Framework.2.0_2.0.27427.0_x64__8wekyb3d8bbwe.Appx","{sd}\ProgramData\AAF\Atmos\Microsoft.NET.Native.Runtime.2.0_2.0.25709.0_x64__8wekyb3d8bbwe.Appx","{sd}\ProgramData\AAF\Atmos\Microsoft.VCLibs.140.00_14.0.27810.0_x64__8wekyb3d8bbwe.Appx" -ForceApplicationShutdown -ForceUpdateFromAnyVersion'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		end;
	end;
// End Install Section
	if CurStep = ssDone then begin
		RegDeleteValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{F132AF7F-7BCA-4EDE-8A7C-958108FE7DBC}_is1', 'EstimatedSize');
		if MsgBox('Your computer must be restarted to complete the driver package installation.'#13 + 'Do you want to restart your PC now ?', mbConfirmation, MB_YESNO) = IDYES then begin
			Exec(ExpandConstant('{sys}\shutdown.exe'), '/r /f /t 0 /d p:1:2', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		end else
			Exit;
	end;
end;

procedure DeinitializeSetup();
begin
  UnLoadAAFStyles;
end;

function InitializeUninstall: Boolean;
begin
	GetWindowsVersionEx(Version);
	if (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 17134) then
	begin
		RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize', 'AppsUseLightTheme', AppsUseLightTheme);
		RegQueryDWordValue(HKCU, 'Software\Microsoft\Windows\CurrentVersion\Themes\Personalize', 'AppsUseLightTheme', AppsUseLightTheme);
		if AppsUseLightTheme = 0 then begin
			LoadAAFStyle_UnInstall(ExpandConstant('{#AAFStyleSkinFilepath}\{#AAFDarkSkinFilename}'));
		end else if AppsUseLightTheme = 1 then begin
			LoadAAFStyle_UnInstall(ExpandConstant('{#AAFStyleSkinFilepath}\{#AAFWhiteSkinFilename}'));
		end;
	end else if (Version.Major <= 10) and (Version.Minor >= 0) and (Version.Build < 17134) then
	begin
	LoadAAFStyle_UnInstall(ExpandConstant('{#AAFStyleSkinFilepath}\{#AAFSkinFilename}'));
	end;
  Result := True;
end;

procedure InitializeUninstallProgressForm();
begin
	UninstallProgressForm.WizardSmallBitmapImage.Hide;
  UninstallProgressForm.ProgressBar.Visible := False; 
  UninstallProgressForm.ProgressBar.Hide;
	UninstallProgressForm.BeveledLabel.Caption := '{#RtkAppCopyright} Driver Version: {#RtkAppVersion}';
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
if CurUninstallStep = usPostUninstall then begin
	RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture');
	RegDeleteKeyIncludingSubkeys(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render');
end;
end;

procedure DeinitializeUninstall();
begin
  UnLoadAAFStyles_UnInstall;
end; 