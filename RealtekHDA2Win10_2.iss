// SCRIPT CREATED BY ALAN FINOTTY
// Preprocessor Section
#define RtkAppName "AAF Realtek HD Audio Modded"
#define CTAppName "Sound Blaster Connect 2"
#define RtkAppVersion GetFileVersion("A:\Audio\HDA\Driver64-2\RTKVHD64.sys")
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
OutputDir=A:\Downloads\Programas\AAF Installers
OutputBaseFilename=AAFDrvPackInst_HDA-{#RtkAppVersion}
SetupIconFile=A:\Audio\HDA\Driver64-2\favicon.ico
Uninstallable=yes
UninstallDisplayName={#RtkAppName}
UninstallFilesDir={app}
UninstallDisplayIcon={win}\System32\favicon.ico
Compression=lzma2/ultra64
SolidCompression=yes
SignedUninstaller=yes
SignTool=signtool
SignToolRetryCount=10
VersionInfoCopyright={#RtkAppCopyright}
VersionInfoCompany={#RtkAppPublisher}
VersionInfoVersion={#RtkAppVersion}
VersionInfoDescription={#RtkAppName}
VersionInfoOriginalFileName=AAFDrvPackInst_HDA-{#RtkAppVersion}.exe
VersionInfoProductName={#RtkAppName}
VersionInfoProductTextVersion={#RtkAppVersion}
VersionInfoTextVersion={#RtkAppVersion}
VersionInfoProductVersion={#RtkAppVersion}
MinVersion=6.1
WizardStyle=classic
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
//ReadyLabel2b=Click Install to continue installation of {#RtkAppName}.
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
Source: "A:\Audio\HDA\Driver64-2\*"; DestDir: "{app}\Driver"; Flags: deleteafterinstall ignoreversion recursesubdirs
Source: "A:\Audio\HDA\Driver64-2\Realtek_15063\*"; DestDir: "{app}\Driver\Realtek_15063"; Flags: deleteafterinstall ignoreversion recursesubdirs; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\Realtek_15063\RTK_APO_EXT\ApoRtkExt.inf"; DestDir: "{app}\Driver\Realtek_15063\RTK_APO_EXT"; Flags: ignoreversion recursesubdirs; Attribs: hidden; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\Realtek_15063\RTK_APO_SWC\ApoRtkSwc.inf"; DestDir: "{app}\Driver\Realtek_15063\RTK_APO_SWC"; Flags: ignoreversion recursesubdirs; Attribs: hidden; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\AAF\*"; DestDir: "{app}\Driver\3rdParty_15063\AAF"; Flags: deleteafterinstall ignoreversion recursesubdirs; Tasks: AAF; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\AAF\AAF_ASIO_EXT\AAFAsioExt.inf"; DestDir: "{app}\Driver\3rdParty_15063\AAF\AAF_ASIO_EXT"; Flags: ignoreversion recursesubdirs; Attribs: hidden; Tasks: AAF; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\AAF\AAF_ASIO_SWC\AAFAsioSwc.inf"; DestDir: "{app}\Driver\3rdParty_15063\AAF\AAF_ASIO_SWC"; Flags: ignoreversion recursesubdirs; Attribs: hidden; Tasks: AAF; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\Creative\*"; DestDir: "{app}\Driver\3rdParty_15063\Creative"; Flags: deleteafterinstall ignoreversion recursesubdirs; Tasks: SBX; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\Creative\CT_APO_EXT\ApoCTExt.inf"; DestDir: "{app}\Driver\3rdParty_15063\Creative\CT_APO_EXT"; Flags: ignoreversion recursesubdirs; Tasks: SBX; Attribs: hidden; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\Creative\CT_APO_SWC\ApoCTSwc.inf"; DestDir: "{app}\Driver\3rdParty_15063\Creative\CT_APO_SWC"; Flags: ignoreversion recursesubdirs; Tasks: SBX; Attribs: hidden; MinVersion: 10.0.15063
Source: "A:\Audio\SBCon2\*"; DestDir: "{pf32}\Creative\SBConnect2"; Flags: ignoreversion recursesubdirs; Tasks: SBX
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\A-Volute\*"; DestDir: "{app}\Driver\3rdParty_15063\A-Volute"; Flags: deleteafterinstall ignoreversion recursesubdirs; Tasks: AVO; MinVersion: 10.0.16299
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\A-Volute\NH3_APO_EXT\ApoNh3Ext.inf"; DestDir: "{app}\Driver\3rdParty_15063\A-Volute\NH3_APO_EXT"; Flags: ignoreversion recursesubdirs; Tasks: AVO; Attribs: hidden; MinVersion: 10.0.16299
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\A-Volute\NH3_APO_SWC\ApoNh3Swc.inf"; DestDir: "{app}\Driver\3rdParty_15063\A-Volute\NH3_APO_SWC"; Flags: ignoreversion recursesubdirs; Tasks: AVO; Attribs: hidden; MinVersion: 10.0.16299
Source: "A:\Audio\Nahimic\*"; DestDir: "{sd}\ProgramData\AAF\Nahimic"; Flags: deleteafterinstall ignoreversion; Tasks: AVO; MinVersion: 10.0.16299
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\Dolby\*"; DestDir: "{app}\Driver\3rdParty_15063\Dolby"; Flags: deleteafterinstall ignoreversion recursesubdirs; Tasks: ATM; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\Dolby\DOLBY_APO_EXT\ApoDolbyExt.inf"; DestDir: "{app}\Driver\3rdParty_15063\Dolby\DOLBY_APO_EXT"; Flags: ignoreversion recursesubdirs; Tasks: ATM; Attribs: hidden; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\Dolby\DOLBY_APO_SWC\ApoDolbySwc.inf"; DestDir: "{app}\Driver\3rdParty_15063\Dolby\DOLBY_APO_SWC"; Flags: ignoreversion recursesubdirs; Tasks: ATM; Attribs: hidden; MinVersion: 10.0.15063
Source: "A:\Audio\Atmos\*"; DestDir: "{sd}\ProgramData\AAF\Atmos"; Flags: deleteafterinstall ignoreversion; Tasks: ATM; MinVersion: 10.0.15063
Source: "A:\Audio\Licensing\*"; DestDir: "{app}\KGA"; Flags: deleteafterinstall ignoreversion
Source: "A:\Audio\RtkConfig\*"; DestDir: "{cf64}\AAF\RtkConfig"; Flags: ignoreversion
Source: "A:\Audio\RtkConfig\RT.pdb"; DestDir: "{cf64}\AAF\RtkConfig"; Flags: ignoreversion; Attribs: hidden
Source: "A:\Downloads\Comprimidos\HDAUDBUS\aafbus64.cat"; Flags: dontcopy
Source: "A:\Downloads\Comprimidos\HDAUDBUS\AAFBus64.inf"; Flags: dontcopy
Source: "A:\Audio\devcon.exe"; DestDir: "{sys}"; Flags: ignoreversion
Source: "A:\Cert\Cert.cmd"; Flags: dontcopy; Attribs: hidden
Source: "A:\Documentos\AAF Script\StyleDll\AAF.VStyles.Uninstall.dll"; DestDir: "{#AAFStyleSkinFilepath}"; Flags: uninsneveruninstall
Source: "A:\Documentos\AAF Script\StyleFiles\{#AAFSkinFilename}"; DestDir: "{#AAFStyleSkinFilepath}"; Flags: uninsneveruninstall
Source: "A:\Documentos\AAF Script\StyleFiles\{#AAFDarkSkinFilename}"; DestDir: "{#AAFStyleSkinFilepath}"; Flags: uninsneveruninstall
Source: "A:\Documentos\AAF Script\StyleFiles\{#AAFWhiteSkinFilename}"; DestDir: "{#AAFStyleSkinFilepath}"; Flags: uninsneveruninstall
Source: "A:\Documentos\AAF Script\StyleDll\AAF.VStyles.Install.dll"; Flags: dontcopy
Source: "A:\Documentos\AAF Script\StyleFiles\{#AAFSkinFilename}"; Flags: dontcopy
Source: "A:\Documentos\AAF Script\StyleFiles\{#AAFDarkSkinFilename}"; Flags: dontcopy
Source: "A:\Documentos\AAF Script\StyleFiles\{#AAFWhiteSkinFilename}"; Flags: dontcopy
Source: "A:\Audio\SetACL.exe"; Flags: dontcopy
Source: "A:\Audio\DTSAudio.msi"; Flags: dontcopy
Source: "A:\Imagens\My Logos\MyWizardBlackImage.bmp"; Flags: dontcopy
Source: "A:\Imagens\My Logos\MyWizardWhiteImage.bmp"; Flags: dontcopy
Source: "A:\Imagens\My Logos\21.bmp"; Flags: dontcopy

// Shortcut Icons Section
[Icons]
Name: "{commondesktop}\Realtek Audio Device Tweak"; Filename: "{cf64}\AAF\RtkConfig\AudioDevice.exe"

// Setup Tasks Section
[Tasks]
Name: SBX; Description: "Install {#CTAppName}"; GroupDescription: "Creative Labs"; Flags: checkablealone
Name: SBX\B360; Description: "BlasterX 360°"; GroupDescription: "Creative Labs"; Flags: exclusive
Name: SBX\B720; Description: "BlasterX 720°"; GroupDescription: "Creative Labs"; Flags: exclusive
Name: DTS; Description: "Install DTS Audio"; GroupDescription: "Digital Theater Solutions (DTS)"; Flags: checkablealone; MinVersion: 6.3; OnlyBelowVersion: 10.0.14393
Name: AVO; Description: "Install Nahimic 3"; GroupDescription: "A-Volute"; Flags: checkablealone; MinVersion: 10.0.16299
Name: ATM; Description: "Install Dolby ATMOS"; GroupDescription: "Dolby"; Flags: checkablealone; MinVersion: 10.0.15063
Name: AAF; Description: "Install AAF Extra ASIO"; GroupDescription: "ASIO"; Flags: checkablealone; MinVersion: 10.0.15063

// Registry Section
[Registry]
Root: HKLM; Subkey: "SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "Creative.SBConnect"; ValueData: """{pf32}\Creative\SBConnect2\Creative.SBConnect.exe"" /background"; Flags: uninsdeletevalue; Tasks: SBX

// Uninstall Parameters Section
[UninstallRun]
Filename: "{cmd}"; Parameters: "/c taskkill /IM Creative.SBConnect.exe /T /F"; StatusMsg: "Now Shutting Down Active {#CTAppName} Instances"; Flags: runhidden waituntilterminated; Tasks: SBX
Filename: "{pf64}\Realtek\Audio\HDA\RtlUpd64.exe"; Parameters: "-r"; StatusMsg: "Now Uninstalling {#RtkAppName} Modded Driver"; Flags: waituntilterminated
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_AAFTB&PID_RTKAPOSWC"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_AAFTB&PID_AAFASIOEX"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AAF; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_AAFTB&PID_NH3APOSWC"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_AAFTB&PID_CTAPOSWC"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_AAFTB&PID_DOLBYAPOSWC"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =Extension ""HDAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO SBX ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =Extension ""INTELAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO SBX ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_AAFTB&PID_RTKAPOSWC"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_AAFTB&PID_AAFASIOEX"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AAF; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_AAFTB&PID_NH3APOSWC"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_AAFTB&PID_CTAPOSWC"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_AAFTB&PID_DOLBYAPOSWC"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =Extension ""HDAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO SBX ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =Extension ""INTELAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO SBX ATM; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\Realtek_15063\RTK_APO_EXT\ApoRtkExt.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\Creative\CT_APO_EXT\ApoCTExt.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\A-Volute\NH3_APO_EXT\ApoNh3Ext.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\Dolby\DOLBY_APO_EXT\ApoDolbyExt.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\Realtek_15063\RTK_APO_SWC\ApoRtkSwc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\Creative\CT_APO_SWC\ApoCTSwc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\A-Volute\NH3_APO_SWC\ApoNh3Swc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\Dolby\DOLBY_APO_SWC\ApoDolbySwc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: runhidden waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\msiexec.exe"; Parameters: "/x ""{app}\DTS\DTSAudio.msi"""; StatusMsg: "Now Uninstalling DTS Audio"; Flags: waituntilterminated; Tasks: DTS; MinVersion: 6.3; OnlyBelowVersion: 10.0.14393 
Filename: "{cmd}"; Parameters: "/c powershell.exe -ExecutionPolicy Bypass -Command Remove-AppxPackage -Package A-Volute.Nahimic_1.3.11.0_x64__w2gh52qy24etm -AllUsers"; StatusMsg: "Now Uninstalling Nahimic 3 Application"; Flags: runhidden waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{cmd}"; Parameters: "/c powershell.exe -ExecutionPolicy Bypass -Command Remove-AppxPackage -Package DolbyLaboratories.DolbyAtmos_3.20602.609.0_x64__rz1tebttyb220 -AllUsers"; StatusMsg: "Now Uninstalling Dolby Atmos Application"; Flags: runhidden waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063

// Uninstall Delete Section
[UninstallDelete]
Type: filesandordirs; Name: "{app}\*"
Type: filesandordirs; Name: "{pf64}\Realtek\Audio\*"
Type: filesandordirs; Name: "{sd}\ProgramData\Creative\SoftwareLock\*"
Type: filesandordirs; Name: "{sd}\ProgramData\Creative\*"
Type: filesandordirs; Name: "{cf64}\AAF\RtkConfig\*"
Type: filesandordirs; Name: "{#AAFStyleSkinFilepath}\*"
Type: filesandordirs; Name: "{pf32}\Creative\SBConnect2\*"; Tasks: SBX
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
  Text, FilenameLabel, StatusLabel: TNewStaticText;
	OptionPage: TInputOptionWizardPage;
	AppsUseLightTheme: Cardinal;
	PageDescriptionLabel, PageNameLabel, TextLabel: TLabel;
	BitmapImage: TBitmapImage;
	
procedure LoadAAFStyle(AAFStyleFilename: String); 
		external 'LoadVCLStyleW@files:AAF.VStyles.Install.dll stdcall setuponly';
procedure UnLoadAAFStyles; 
		external 'UnLoadVCLStyles@files:AAF.VStyles.Install.dll stdcall setuponly';
	
function InitializeSetup(): Boolean;
begin
	GetWindowsVersionEx(Version);
	if (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 17134) then
	begin
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
	end else if (Version.Major <= 10) and (Version.Minor >= 0) and (Version.Build < 17134) then
	begin
		ExtractTemporaryFile('{#AAFSkinFilename}');
		ExtractTemporaryFile('MyWizardBlackImage.bmp');
		LoadAAFStyle(ExpandConstant('{tmp}\{#AAFSkinFilename}'));
	end;
	if RegKeyExists(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{F132AF7F-7BCA-4EDE-8A7C-958108FE7DBC}_is1') then
	begin
		if MsgBox('You already have a copy of this product installed.'#13#13 + 'Removing the currently installed version is required to continue with this installation wizard.', mbCriticalError, mb_Ok) = IDOK then
		Exit;
	end else
		Result := True;
	if (RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\EnterpriseCertificates\Root\Certificates\FABEA89FA3A89BBD83ED34066507466C57673054') = FALSE) and (RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Policies\Microsoft\SystemCertificates\Root\Certificates\FABEA89FA3A89BBD83ED34066507466C57673054') = FALSE) then begin
		ExtractTemporaryFile('Cert.cmd');
		Exec(ExpandConstant('{tmp}\Cert.cmd'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		DeleteFile(ExpandConstant('{tmp}\Cert.cmd'));
		Result := True;
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
	WizardForm.ProgressGauge.Visible := True;
	WizardForm.ProgressGauge.State := npbsNormal;
  WizardForm.ProgressGauge.Style := npbstNormal;
	WizardForm.ProgressGauge.Min := 0;
	WizardForm.ProgressGauge.Max := 135;
	WizardForm.BeveledLabel.Caption := '{#RtkAppCopyright} Driver Version: {#RtkAppVersion}';

  ExtractTemporaryFile('21.bmp');
  BitmapImage := TBitmapImage.Create(WizardForm);
  BitmapImage.Parent := WizardForm.MainPanel;
  BitmapImage.Width := WizardForm.MainPanel.Width;
  BitmapImage.Height := WizardForm.MainPanel.Height;
  BitmapImage.Stretch := True;
  BitmapImage.AutoSize := True;
  BitmapImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\21.bmp'));
	
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
  FilenameLabel.Width := WizardForm.FilenameLabel.Width;
  FilenameLabel.Height := WizardForm.FilenameLabel.Height;
  FilenameLabel.AutoSize := WizardForm.FilenameLabel.AutoSize;
	WizardForm.FilenameLabel.Visible := False;
	
	PageNameLabel := CloneStaticTextToLabel(WizardForm.PageNameLabel);
  PageDescriptionLabel := CloneStaticTextToLabel(WizardForm.PageDescriptionLabel);
	
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
	'You are using: Windows 10';
		
	Button := TNewButton.Create(Page);
  Button.Left := WizardForm.WelcomeLabel2.Left;
  Button.Top := WizardForm.WelcomeLabel2.Top + ScaleY(235);
  Button.Width := ScaleX(82);
  Button.Height := ScaleY(23);
  Button.Caption := 'Verify Your Windows Development Configurations';
  Button.OnClick := @ButtonOnClick;
  Button.Parent := Page.Surface;
	
	Text := TNewStaticText.Create(Page);
	Text.Left := Button.Left;
  Text.Top := Button.Top - ScaleY(42);
  Text.Caption := 'Check your system development settings to ensure successful installation of the UWP apps in this package. It is recommended to enable Sideload or Developer modes.'#13 +
	'To perform this action, click the button below:';
	Text.AutoSize := True;
	Text.WordWrap := True;
  Text.Parent := Page.Surface;
	TextLabel := TLabel.Create(Page);
	TextLabel.Parent := Text.Parent;
	TextLabel.Font := Text.Font;
	TextLabel.Caption := Text.Caption;
	TextLabel.WordWrap := Text.WordWrap;
	InheritBoundsRect(Text, TextLabel);
	Text.Visible := False;
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
	'Sound Blaster Connect 2 (Windows 7 Onwards)'#13#13#13 +
	'DTS Audio (Windows 8.1 to Windows 10 build 14393)'#13#13#13 +
	'A-Volute Nahimic 3 (Windows 10 build 16299 Onwards)'#13#13#13 +
	'Dolby Atmos (Windows 10 build 15063 Onwards)'#13#13#13 +
	'ASIO Driver by Alan Finotty (Windows 10 build 15063 Onwards)'#13#13#13 +
	'Realtek Audio Device Tweak Utility (Windows 7 Onwards)');
	
	OptionPage := CreateInputOptionPage(wpSelectTasks,
	'AAF HD Audio Bus Driver', 'Description about this feature',
	'This package included a driver for the Internal HD Audio Bus, especially for those with Intel Smart Sound Technology (SST) technology on their computers ' +
	'(everyone will have the preference to install it), in order to replace the enumerator of the bus, changing it from "INTELAUDIO" to "HDAUDIO" and making your Realtek audio chip more compatible with APOs.'#13#13 + 
	'Example:'#13#13#10 +
	'Before: INTELAUDIO\FUNC_01&VEN_10EC&DEV_0256*'#13#13#10 +
	'After: HDAUDIO\FUNC_01&VEN_10EC&DEV_0256*'#13#13 +
	'*=Tested on a Samsung Notebook. ' +
	'Model: Samsung Essentials E30 with Intel SST - NP350XAA-KF3', False, False);
	
	OptionPage.Add('Install AAF HD Audio Enumerator Bus Driver');
	OptionPage.Values[0] := True;
	OptionPage.SelectedValueIndex := 0;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  PageDescriptionLabel.Caption := WizardForm.PageDescriptionLabel.Caption;
  PageNameLabel.Caption := WizardForm.PageNameLabel.Caption;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
	WizardForm.ProgressGauge.Min := 0;
	WizardForm.ProgressGauge.Max := 135;
// Begin Install Section
	if CurStep = ssInstall then begin
		StatusLabel.Caption := 'The selected features are being installed. Please wait...';
		FilenameLabel.Caption := 'Current Task: Extracting...';
	end;
	if CurStep = ssPostInstall then begin
		StatusLabel.Caption := 'The selected features are being installed. Please wait...';
		WizardForm.ProgressGauge.Position := 0;
	// Take ownership and add permissions for the Capture/Render and FX/EP audio keys to the Administrators Group
		FilenameLabel.Caption := 'Current Task: Appropriating and adding permissions for the Capture/Render and FX/EP audio keys to the Administrators Group...';
		WizardForm.ProgressGauge.Position := 2;
		ExtractTemporaryFile('SetACL.exe');
		Exec(ExpandConstant('{tmp}\SetACL.exe'), '-on "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture" -ot reg -actn setowner -ownr "n:S-1-5-32-544"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Exec(ExpandConstant('{tmp}\SetACL.exe'), '-on "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Capture" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Exec(ExpandConstant('{tmp}\SetACL.exe'), '-on "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render" -ot reg -actn setowner -ownr "n:S-1-5-32-544"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Exec(ExpandConstant('{tmp}\SetACL.exe'), '-on "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render" -ot reg -actn ace -ace "n:S-1-5-32-544;p:full"', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Sleep(600);
		if ResultCode = 0 then begin
			FilenameLabel.Caption := 'Changes Made Successfully';
		end;
	// Windows Audio Service
		FilenameLabel.Caption := 'Current Task: Stopping Windows Audio Service...';
		WizardForm.ProgressGauge.Position := 3;	
		Exec(ExpandConstant('{sys}\sc.exe'), 'stop Audiosrv', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Sleep(600);
		if ResultCode = 0 then begin
			FilenameLabel.Caption := 'Audio Service Stopped';
		end;
		FilenameLabel.Caption := 'Current Task: Initializing Windows Audio Service...';
		WizardForm.ProgressGauge.Position := 4;	
		Exec(ExpandConstant('{sys}\sc.exe'), 'start Audiosrv', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		Sleep(600);
		if ResultCode = 0 then begin
			FilenameLabel.Caption := 'Audio Service Initialized';
		end;
	// Install AAF Bus Driver
		if OptionPage.SelectedValueIndex = 0 then begin
			FilenameLabel.Caption := 'Current Task: AAF Bus Driver - Extracting Files...';
			WizardForm.ProgressGauge.Position := 6;
			ExtractTemporaryFile('aafbus64.cat');
			ExtractTemporaryFile('AAFBus64.inf');
			WizardForm.FilenameLabel.Caption := 'AAF Bus Driver - Installing...';
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{tmp}\AAFBus64.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'AAF Bus Driver Successfully Installed';
			end;
		end;
	// Install DTS Audio
		if WizardIsTaskSelected('DTS') and (Version.Major >= 6) and (Version.Minor <= 3) and (Version.Build <= 14393) then begin
			FilenameLabel.Caption := 'Current Task: Installing DTS Audio...';
			WizardForm.ProgressGauge.Position := 8;
			ExtractTemporaryFile('DTSAudio.msi');
			Exec(ExpandConstant('{sys}\msiexec.exe'), ExpandConstant('/i "{tmp}\DTSAudio.msi" /passive'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'DTS Audio Successfully Installed';
			end;
		end;
	// Install Realtek Main Driver
		FilenameLabel.Caption := 'Current Task: Installing {#RtkAppName}...';
		WizardForm.ProgressGauge.Position := 9;
		Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\HDX.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
		if ResultCode = 0 then begin
			FilenameLabel.Caption := '{#RtkAppName} Successfully Installed';
		end;
	// Install Realtek Extension Driver
		if (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
			FilenameLabel.Caption := 'Current Task: Installing Realtek Extension...';
			WizardForm.ProgressGauge.Position := 18;
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\Realtek_15063\RTK_APO_EXT\ApoRtkExt.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'Realtek Extension Successfully Installed';
			end;
		end;
	// Install AAF ASIO Extension Driver
		if WizardIsTaskSelected('AAF') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
			FilenameLabel.Caption := 'Current Task: Installing AAF ASIO Extension...';
			WizardForm.ProgressGauge.Position := 27;
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\3rdParty_15063\AAF\AAF_ASIO_EXT\AAFAsioExt.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'AAF ASIO Extension Successfully Installed';
			end;
		end;
	// Install Creative Extension Driver
		if WizardIsTaskSelected('SBX') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
			FilenameLabel.Caption := 'Current Task: Installing Creative Extension...';
			WizardForm.ProgressGauge.Position := 36;
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\3rdParty_15063\Creative\CT_APO_EXT\ApoCTExt.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'Creative Extension Successfully Installed';
			end;
		end;
	// Install Nahimic 3 Extension Driver
		if WizardIsTaskSelected('AVO') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 16299) then begin
			FilenameLabel.Caption := 'Current Task: Installing Nahimic 3 Extension...';
			WizardForm.ProgressGauge.Position := 45;
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\3rdParty_15063\A-Volute\NH3_APO_EXT\ApoNh3Ext.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'Nahimic 3 Extension Successfully Installed';
			end;
		end;
	// Install Dolby Atmos Extension Driver
		if WizardIsTaskSelected('ATM') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
			FilenameLabel.Caption := 'Current Task: Installing Dolby Atmos Extension...';
			WizardForm.ProgressGauge.Position := 54;
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\3rdParty_15063\Dolby\DOLBY_APO_EXT\ApoDolbyExt.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'Dolby Atmos Extension Successfully Installed';
			end;
		end;
	// Install Realtek Component Driver
		if (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
			FilenameLabel.Caption := 'Current Task: Installing Realtek Component...';
			WizardForm.ProgressGauge.Position := 63;
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\Realtek_15063\RTK_APO_SWC\ApoRtkSwc.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'Realtek Component Successfully Installed';
			end;
		end;
	// Install AAF ASIO Component Driver
		if WizardIsTaskSelected('AAF') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
			FilenameLabel.Caption := 'Current Task: Installing AAF ASIO Component...';
			WizardForm.ProgressGauge.Position := 72;
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\3rdParty_15063\AAF\AAF_ASIO_SWC\AAFAsioSwc.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'AAF ASIO Component Successfully Installed';
			end;
		end;
	// Install Creative Component Driver
		if WizardIsTaskSelected('SBX') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
			FilenameLabel.Caption := 'Current Task: Installing Creative Component...';
			WizardForm.ProgressGauge.Position := 81;
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\3rdParty_15063\Creative\CT_APO_SWC\ApoCTSwc.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'Creative Component Successfully Installed';
			end;
		end;
	// Install Nahimic 3 Component Driver
		if WizardIsTaskSelected('AVO') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 16299) then begin
			FilenameLabel.Caption := 'Current Task: Installing Nahimic 3 Component...';
			WizardForm.ProgressGauge.Position := 90;
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\3rdParty_15063\A-Volute\NH3_APO_SWC\ApoNh3Swc.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'Nahimic 3 Component Successfully Installed';
			end;
		end;
	// Install Dolby Atmos Component Driver
		if WizardIsTaskSelected('ATM') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
			FilenameLabel.Caption := 'Current Task: Installing Dolby Atmos Component...';
			WizardForm.ProgressGauge.Position := 99;
			Exec(ExpandConstant('{sys}\pnputil.exe'), ExpandConstant('-i -a "{app}\Driver\3rdParty_15063\Dolby\DOLBY_APO_SWC\ApoDolbySwc.inf"'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'Dolby Atmos Component Successfully Installed';
			end;
		end;
	// Install KGA Licenses
		if WizardIsTaskSelected('SBX') then begin
			FilenameLabel.Caption := 'Current Task: Extracting KGA Licenses...';
			WizardForm.ProgressGauge.Position := 108;
			Exec(ExpandConstant('{app}\KGA\GenKGA.exe'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			Exec(ExpandConstant('{app}\KGA\GenKGA3.exe'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'KGA Licenses Extracted';
			end;
		end;
	// Select BlasterX 360°
		if WizardIsTaskSelected('SBX\B360') then begin
			FilenameLabel.Caption := 'Current Task: Configuring KGA License File for BlasterX 360°...';
			WizardForm.ProgressGauge.Position := 117;
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
			Sleep(600);
			FilenameLabel.Caption := 'KGA License File for BlasterX 360° Configured';
		end;
	// Select BlasterX 720°
		if WizardIsTaskSelected('SBX\B720') then begin
			FilenameLabel.Caption := 'Current Task: Configuring KGA License File for BlasterX 720°...';
			WizardForm.ProgressGauge.Position := 117;
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
			Sleep(600);
			FilenameLabel.Caption := 'KGA License File for BlasterX 720° Configured';
		end;
	// Install Nahimic 3
		if WizardIsTaskSelected('AVO') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 16299) then begin
			FilenameLabel.Caption := 'Current Task: Installing Nahimic 3 App with Dependencies...';
			WizardForm.ProgressGauge.Position := 126;
			Exec(ExpandConstant('{cmd}'), ExpandConstant('/c powershell.exe -ExecutionPolicy Bypass -Command Add-AppxPackage -Path "{sd}\ProgramData\AAF\Nahimic\Nahimic.AppxBundle" -DependencyPath "{sd}\ProgramData\AAF\Nahimic\Microsoft.NET.Native.Framework.1.3_1.3.24211.0_x64__8wekyb3d8bbwe.Appx","{sd}\ProgramData\AAF\Nahimic\Microsoft.NET.Native.Runtime.1.4_1.4.24201.0_x64__8wekyb3d8bbwe.Appx","{sd}\ProgramData\AAF\Nahimic\Microsoft.VCLibs.140.00_14.0.27810.0_x64__8wekyb3d8bbwe.Appx" -ForceApplicationShutdown -ForceUpdateFromAnyVersion'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'Nahimic 3 App Installed';
			end;
		end;
	// Install Dolby Atmos
		if WizardIsTaskSelected('ATM') and (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
			FilenameLabel.Caption := 'Current Task: Installing Dolby Atmos App with Dependencies...';
			WizardForm.ProgressGauge.Position := 135;
			Exec(ExpandConstant('{cmd}'), ExpandConstant('/c powershell.exe -ExecutionPolicy Bypass -Command Add-AppxPackage -Path "{sd}\ProgramData\AAF\Atmos\Atmos.Appx" -DependencyPath "{sd}\ProgramData\AAF\Atmos\Microsoft.NET.Native.Framework.2.0_2.0.27427.0_x64__8wekyb3d8bbwe.Appx","{sd}\ProgramData\AAF\Atmos\Microsoft.NET.Native.Runtime.2.0_2.0.25709.0_x64__8wekyb3d8bbwe.Appx","{sd}\ProgramData\AAF\Atmos\Microsoft.VCLibs.140.00_14.0.27810.0_x64__8wekyb3d8bbwe.Appx" -ForceApplicationShutdown -ForceUpdateFromAnyVersion'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
			if ResultCode = 0 then begin
				FilenameLabel.Caption := 'Dolby Atmos App Installed';
			end;
		end;
	StatusLabel.Caption := 'Features Successfully Installed';
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

procedure LoadAAFStyle_UnInstall(AAFStyleFilename: String); 
		external 'LoadVCLStyleW@{#AAFStyleSkinFilepath}\AAF.VStyles.Uninstall.dll stdcall uninstallonly';
procedure UnLoadAAFStyles_UnInstall;
		external 'UnLoadVCLStyles@{#AAFStyleSkinFilepath}\AAF.VStyles.Uninstall.dll stdcall uninstallonly';

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
  UninstallProgressForm.ProgressBar.State := npbsNormal; 
  UninstallProgressForm.ProgressBar.Style := npbstMarquee;
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
