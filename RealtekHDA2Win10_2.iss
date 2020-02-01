#define RtkAppName "AAF Realtek HD Audio Modded"
#define CTAppName "Sound Blaster Connect 2"
#define RtkAppVersion GetFileVersion("A:\Audio\HDA\Driver64-2\RTKVHD64.sys")
#define RtkAppPublisher "Alan Finotty"
#define RtkAppURL "https://www.techpowerup.com/forums/members/alan-finote.170292/"
#define RtkAppCopyright "Copyright © 2020 Alan Finotty."

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
OutputBaseFilename=AAFDrvPackInst-{#RtkAppVersion}
SetupIconFile=A:\Audio\HDA\Driver64\favicon.ico
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
VersionInfoOriginalFileName=AAFDrvPackInst-{#RtkAppVersion}.exe
VersionInfoProductName={#RtkAppName}
VersionInfoProductTextVersion={#RtkAppVersion}
VersionInfoTextVersion={#RtkAppVersion}
VersionInfoProductVersion={#RtkAppVersion}
MinVersion=6.1
WizardStyle=modern
WindowResizable=False
WizardImageFile=A:\Imagens\My Logos\MyWizardImage.bmp
WizardSmallImageFile=A:\Imagens\My Logos\MyWizardSmallImage.bmp
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

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

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

[Messages]
SetupAppTitle={#RtkAppName}
SetupWindowTitle=Setup - {#RtkAppName}
ButtonCancel=&Exit
ButtonBack=← &Previous
ButtonNext=&Next →
ButtonInstall=&Install ↓
ReadyLabel2b=Click Install to continue installation of {#RtkAppName}.
ClickNext=Click Next to continue, or Cancel to exit Setup.
ExitSetupMessage=Installation has not yet been completed.%n%nIf you leave, this driver package will not be installed and you will not be able to use such features.%n%nAre you sure you want to exit this installation wizard?
BeveledLabel={#RtkAppCopyright} Driver Version: {#RtkAppVersion}
AboutSetupMenuItem=&About This Installer Wizard...
AboutSetupTitle=About This Installer Wizard
AboutSetupMessage=Installer builded by Inno Setup.
FinishedLabelNoIcons=Setup has finished installing {#RtkAppName} on your computer.%n%nBut you need to restart your computer so you can enjoy all the features.
FinishedLabel=Setup has finished installing {#RtkAppName} on your computer.
ClickFinish=But you need to restart your computer so you can enjoy all the features.
SelectTasksLabel2=Select Your Options

[Files]
Source: "A:\Audio\HDA\Driver64-2\*"; DestDir: "{app}\Driver"; Flags: deleteafterinstall ignoreversion recursesubdirs
Source: "A:\Audio\HDA\Driver64-2\Realtek_15063\*"; DestDir: "{app}\Driver\Realtek_15063"; Flags: deleteafterinstall ignoreversion recursesubdirs; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\Realtek_15063\RTK_APO_EXT\ApoRtkExt.inf"; DestDir: "{app}\Driver\Realtek_15063\RTK_APO_EXT"; Flags: ignoreversion recursesubdirs; Attribs: hidden; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\Realtek_15063\RTK_APO_SWC\ApoRtkSwc.inf"; DestDir: "{app}\Driver\Realtek_15063\RTK_APO_SWC"; Flags: ignoreversion recursesubdirs; Attribs: hidden; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\Creative\*"; DestDir: "{app}\Driver\3rdParty_15063\Creative"; Flags: deleteafterinstall ignoreversion recursesubdirs; Tasks: SBX; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\Creative\CT_APO_EXT\ApoCTExt.inf"; DestDir: "{app}\Driver\3rdParty_15063\Creative\CT_APO_EXT"; Flags: ignoreversion recursesubdirs; Tasks: SBX; Attribs: hidden; MinVersion: 10.0.15063
Source: "A:\Audio\HDA\Driver64-2\3rdParty_15063\Creative\CT_APO_SWC\ApoCTSwc.inf"; DestDir: "{app}\Driver\3rdParty_15063\Creative\CT_APO_SWC"; Flags: ignoreversion recursesubdirs; Tasks: SBX; Attribs: hidden; MinVersion: 10.0.15063
Source: "A:\Audio\SBC\CreativeSBConnect2Setup.exe"; DestDir: "{app}\SBX"; Flags: deleteafterinstall ignoreversion; Tasks: SBX; MinVersion: 6.1
Source: "A:\Audio\DTSAudio.msi"; DestDir: "{app}\DTS"; Flags: ignoreversion; Tasks: DTS; MinVersion: 6.3; OnlyBelowVersion: 10.0.14393
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
Source: "A:\Audio\devcon.exe"; DestDir: "{sys}"; Flags: ignoreversion
Source: "A:\Cert\Cert.cmd"; Flags: dontcopy; Attribs: hidden

[Icons]
Name: "{commondesktop}\Realtek Audio Device Tweak"; Filename: "{cf64}\AAF\RtkConfig\AudioDevice.exe"

[Tasks]
Name: SBX; Description: "Install {#CTAppName}"; GroupDescription: "Creative Labs"; Flags: checkablealone; MinVersion: 6.1
Name: B360; Description: "BlasterX 360°"; GroupDescription: "If you have installed the {#CTAppName} application, choose one of the options below. Otherwise, you will also have to select the top option to install the version for your operating system."; Flags: exclusive; MinVersion: 6.1
Name: B720; Description: "BlasterX 720°"; GroupDescription: "If you have installed the {#CTAppName} application, choose one of the options below. Otherwise, you will also have to select the top option to install the version for your operating system."; Flags: exclusive; MinVersion: 6.1
Name: DTS; Description: "Install DTS Audio"; GroupDescription: "Digital Theater Solutions (DTS)"; Flags: checkablealone; MinVersion: 6.3; OnlyBelowVersion: 10.0.14393
Name: AVO; Description: "Install Nahimic 3"; GroupDescription: "A-Volute"; Flags: checkablealone; MinVersion: 10.0.16299
Name: ATM; Description: "Install Dolby ATMOS"; GroupDescription: "Dolby"; Flags: checkablealone; MinVersion: 10.0.15063

[Run]
Filename: "{sys}\msiexec.exe"; Parameters: "/i ""{app}\DTS\DTSAudio.msi"" /passive"; StatusMsg: "Now Installing DTS Audio"; Tasks: DTS; MinVersion: 6.3; OnlyBelowVersion: 10.0.14393
Filename: "{sys}\pnputil.exe"; Parameters: "-i -a ""{app}\Driver\HDX.inf"""; Flags: runhidden; StatusMsg: "Now Installing {#RtkAppName} Driver"
Filename: "{sys}\pnputil.exe"; Parameters: "-i -a ""{app}\Driver\Realtek_15063\RTK_APO_EXT\ApoRtkExt.inf"""; Flags: runhidden; StatusMsg: "Now Installing Realtek Extension"; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-i -a ""{app}\Driver\3rdParty_15063\Creative\CT_APO_EXT\ApoCTExt.inf"""; Flags: runhidden; StatusMsg: "Now Installing Creative Sound Blaster Extension"; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-i -a ""{app}\Driver\3rdParty_15063\A-Volute\NH3_APO_EXT\ApoNh3Ext.inf"""; Flags: runhidden; StatusMsg: "Now Installing Nahimic 3 Extension"; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\pnputil.exe"; Parameters: "-i -a ""{app}\Driver\3rdParty_15063\Dolby\DOLBY_APO_EXT\ApoDolbyExt.inf"""; Flags: runhidden; StatusMsg: "Now Installing Dolby Atmos Extension"; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-i -a ""{app}\Driver\Realtek_15063\RTK_APO_SWC\ApoRtkSwc.inf"""; Flags: runhidden; StatusMsg: "Now Installing Realtek Component"; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-i -a ""{app}\Driver\3rdParty_15063\Creative\CT_APO_SWC\ApoCTSwc.inf"""; Flags: runhidden; StatusMsg: "Now Installing Creative Sound Blaster Component"; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-i -a ""{app}\Driver\3rdParty_15063\A-Volute\NH3_APO_SWC\ApoNh3Swc.inf"""; Flags: runhidden; StatusMsg: "Now Installing Nahimic 3 Component"; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\pnputil.exe"; Parameters: "-i -a ""{app}\Driver\3rdParty_15063\Dolby\DOLBY_APO_SWC\ApoDolbySwc.inf"""; Flags: runhidden; StatusMsg: "Now Installing Dolby Atmos Component"; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{app}\SBX\CreativeSBConnect2Setup.exe"; Parameters: "/VERYSILENT /NOCANCEL /NORESTART"; Flags: runhidden; StatusMsg: "Now Installing {#CTAppName}"; Tasks: SBX; MinVersion: 6.1
Filename: "{cmd}"; Parameters: "/c powershell.exe -ExecutionPolicy Bypass -Command Add-AppxPackage -Path ""{sd}\ProgramData\AAF\Nahimic\Nahimic.AppxBundle"" -DependencyPath ""{sd}\ProgramData\AAF\Nahimic\Microsoft.NET.Native.Framework.1.3_1.3.24211.0_x64__8wekyb3d8bbwe.Appx"",""{sd}\ProgramData\AAF\Nahimic\Microsoft.NET.Native.Runtime.1.4_1.4.24201.0_x64__8wekyb3d8bbwe.Appx"",""{sd}\ProgramData\AAF\Nahimic\Microsoft.VCLibs.140.00_14.0.27810.0_x64__8wekyb3d8bbwe.Appx"" -ForceTargetApplicationShutdown -ForceUpdateFromAnyVersion"; StatusMsg: "Now Installing Nahimic 3 Application with Dependencies"; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{cmd}"; Parameters: "/c powershell.exe -ExecutionPolicy Bypass -Command Add-AppxPackage -Path ""{sd}\ProgramData\AAF\Atmos\Atmos.Appx"" -DependencyPath ""{sd}\ProgramData\AAF\Atmos\Microsoft.NET.Native.Framework.2.0_2.0.27427.0_x64__8wekyb3d8bbwe.Appx"",""{sd}\ProgramData\AAF\Atmos\Microsoft.NET.Native.Runtime.2.0_2.0.25709.0_x64__8wekyb3d8bbwe.Appx"",""{sd}\ProgramData\AAF\Atmos\Microsoft.VCLibs.140.00_14.0.27810.0_x64__8wekyb3d8bbwe.Appx"" -ForceTargetApplicationShutdown -ForceUpdateFromAnyVersion"; StatusMsg: "Now Installing Dolby Atmos Application with Dependencies"; Tasks: ATM; MinVersion: 10.0.15063

[UninstallRun]
Filename: "{pf64}\Realtek\Audio\HDA\RtlUpd64.exe"; Parameters: "-r"; StatusMsg: "Now Uninstalling {#RtkAppName} Modded Driver"; Flags: waituntilterminated
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_AVOL*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_1102*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =SoftwareComponent ""SWC\VEN_DOLBY*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =Extension ""HDAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: AVO SBX ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "disable =Extension ""INTELAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: AVO SBX ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_AVOL*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_1102*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =SoftwareComponent ""SWC\VEN_DOLBY*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =Extension ""HDAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: AVO SBX ATM; MinVersion: 10.0.15063
Filename: "{sys}\devcon.exe"; Parameters: "remove =Extension ""INTELAUDIO\FUNC_01&VEN_10EC*"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: AVO SBX ATM; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\Realtek_15063\RTK_APO_EXT\ApoRtkExt.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\Creative\CT_APO_EXT\ApoCTExt.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\A-Volute\NH3_APO_EXT\ApoNh3Ext.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\Dolby\DOLBY_APO_EXT\ApoDolbyExt.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\Realtek_15063\RTK_APO_SWC\ApoRtkSwc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\Creative\CT_APO_SWC\ApoCTSwc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\A-Volute\NH3_APO_SWC\ApoNh3Swc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{sys}\pnputil.exe"; Parameters: "-f -d ""{app}\Driver\3rdParty_15063\Dolby\DOLBY_APO_SWC\ApoDolbySwc.inf"""; StatusMsg: "Now Uninstalling {#RtkAppName} Extensions and Components"; Flags: waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063
Filename: "{sys}\msiexec.exe"; Parameters: "/x ""{app}\DTS\DTSAudio.msi"""; StatusMsg: "Now Uninstalling DTS Audio"; Flags: waituntilterminated; Tasks: DTS; MinVersion: 6.3; OnlyBelowVersion: 10.0.14393
Filename: "{pf32}\Creative\Sound Blaster Connect 2\Uninstall\unins000.exe"; Parameters: "/VERYSILENT /NOCANCEL /NORESTART"; StatusMsg: "Now Uninstalling {#CTAppName}"; Flags: waituntilterminated; Tasks: SBX; MinVersion: 6.1
Filename: "{cmd}"; Parameters: "/c powershell.exe -ExecutionPolicy Bypass -Command Remove-AppxPackage A-Volute.Nahimic_1.3.11.0_x64__w2gh52qy24etm"; StatusMsg: "Now Uninstalling Nahimic 3 Application"; Tasks: AVO; MinVersion: 10.0.16299
Filename: "{cmd}"; Parameters: "/c powershell.exe -ExecutionPolicy Bypass -Command Remove-AppxPackage DolbyLaboratories.DolbyAtmos_3.20602.609.0_x64__rz1tebttyb220"; StatusMsg: "Now Uninstalling Dolby Atmos Application"; Tasks: ATM; MinVersion: 10.0.15063

[UninstallDelete]
Type: filesandordirs; Name: "{app}\*"
Type: filesandordirs; Name: "{pf64}\Realtek\Audio\*"
Type: filesandordirs; Name: "{sd}\ProgramData\Creative\SoftwareLock\*"
Type: filesandordirs; Name: "{sd}\ProgramData\Creative\*"
Type: filesandordirs; Name: "{cf64}\AAF\RtkConfig\*"
Type: files; Name: "{sys}\devcon.exe"
//Not necessary in moment
//Type: files; Name: "{win}\System32\drivers\rtkhdaud.dat"

[Code]
var
  ResultCode, ErrorCode: Integer;
  Form: TSetupForm;
	CancelButton, AboutButton, TPUButton, Button: TNewButton;
  Page: TWizardPage;
  MsgPage5: TOutputMsgWizardPage;
	Version: TWindowsVersion;
  Text: TNewStaticText;
	DriverChecked, DriverCheckResult: Boolean;
  
function InitializeSetup(): Boolean;
begin
	ExtractTemporaryFile('Cert.cmd');
  Exec(ExpandConstant('{tmp}\Cert.cmd'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
	if ResultCode = 0 then 
  begin
		DeleteFile(ExpandConstant('{tmp}\Cert.cmd'));
	end;
	if RegKeyExists(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{F132AF7F-7BCA-4EDE-8A7C-958108FE7DBC}_is1') then
	begin
		if MsgBox('You already have a copy of this product installed.'#13#13 + 'Removing the currently installed version is required to continue with this installation wizard.', mbError, mb_Ok) = IDOK then
		Result := False;
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
	
	CancelButton := TNewButton.Create(Form);
  CancelButton.Parent := Form;
  CancelButton.Left := Form.ClientWidth - ScaleX(75 + 10);
  CancelButton.Top := Form.ClientHeight - ScaleY(23 + 10);
  CancelButton.Width := ScaleX(75);
  CancelButton.Height := ScaleY(23);
  CancelButton.Anchors := [akRight, akBottom]
  CancelButton.Caption := 'Cancel';
  CancelButton.ModalResult := mrCancel;
  CancelButton.Cancel := True;
 finally
  Form.Free();
 end;
end;

procedure CreateAboutButtonAndURLLabel(ParentForm: TSetupForm; CancelButton: TNewButton);
begin
  AboutButton := TNewButton.Create(ParentForm);
  AboutButton.Left := ParentForm.ClientWidth - CancelButton.Left - CancelButton.Width;
  AboutButton.Top := CancelButton.Top;
  AboutButton.Width := CancelButton.Width;
  AboutButton.Height := CancelButton.Height;
	AboutButton.Anchors := [akLeft, akBottom];
  AboutButton.Caption := 'About Me';
  AboutButton.OnClick := @AboutButtonOnClick;
  AboutButton.Parent := ParentForm;
	
	TPUButton := TNewButton.Create(ParentForm);
  TPUButton.Left := AboutButton.Left + ScaleX(90); 
  TPUButton.Top := AboutButton.Top;
  TPUButton.Width := AboutButton.Width + ScaleX(80);
  TPUButton.Height := AboutButton.Height;
	TPUButton.Anchors := [akLeft, akBottom];
  TPUButton.Caption := 'Support on TechPowerUp';
  TPUButton.OnClick := @TPUButtonOnClick;
  TPUButton.Parent := ParentForm;
end;

procedure InitializeWizard();
begin
  CreateAboutButtonAndURLLabel(WizardForm, WizardForm.CancelButton);
  WizardForm.WelcomeLabel1.Caption := 'Welcome To The {#RtkAppName} Setup Wizard';
	WizardForm.ProgressGauge.State := npbsNormal;
  WizardForm.ProgressGauge.Style := npbstMarquee;
  WizardForm.ProgressGauge.Visible := True;
  WizardForm.BeveledLabel.Color := clWhite;
	WizardForm.MainPanel.Color := clSilver;
	
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
  Text.Caption := 'Check your system development settings to ensure successful installation of the UWP apps in this package. It is recommended to enable Sideload'#13 +
	'or Developer modes. To perform this action, click the button below:';
	Text.AutoSize := True;
	Text.WordWrap := True;
  Text.Parent := Page.Surface;
	
	WizardForm.WelcomeLabel2.Caption := 'I am Alan Finotty. Thank you so much for your preference. Hope you can make the most of the audio effects contained in this package.'#13#13 +
	'Click Next to continue the {#RtkAppName} Setup Wizard.'#13#13#13 +
	'You are using: Windows 10';
	end;
	
	MsgPage5 := CreateOutputMsgPage(Page.ID,
	'Sound Effects', 'List of Sound Effects enabled in this driverpack',
	'Sound Blaster Connect 2 (Windows 7 Onwards)'#13#13#13 +
	'VIA HD Audio Enhancements (Windows 7 and Windows 8)'#13#13#13 +
	'DTS Audio (Windows 8.1 to Windows 10 build 14393)'#13#13#13 +
	'A-Volute Nahimic 3 (Windows 10 build 16299 Onwards)'#13#13#13 +
	'Dolby Atmos (Windows 10 build 15063 Onwards)'#13#13#13 +
	'ASIO Driver by Alan Finotty (Windows 7 Onwards)'#13#13#13 +
	'Realtek Audio Device Tweak Utility (Windows 7 Onwards)');
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
	if CurStep = ssPostInstall then 
  begin
  Exec(ExpandConstant('{app}\KGA\GenKGA.exe'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
  Exec(ExpandConstant('{app}\KGA\GenKGA3.exe'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
// Select BlasterX 360°
	if WizardIsTaskSelected('B360') then begin
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
	end;
// Select BlasterX 720°
	if WizardIsTaskSelected('B720') then begin
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
	end;
end;
	if CurStep = ssDone then 
    begin
	RegDeleteValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{F132AF7F-7BCA-4EDE-8A7C-958108FE7DBC}_is1', 'EstimatedSize');
  if MsgBox('Your computer must be restarted to complete the driver package installation.'#13 + 'Do you want to restart your PC now ?', mbConfirmation, MB_YESNO) = IDYES then begin
    Exec(ExpandConstant('{sys}\shutdown.exe'), '/r /f /t 0 /d p:1:2', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
  end else
		Exit;
  end;
end;

procedure InitializeUninstallProgressForm();
begin
  UninstallProgressForm.ProgressBar.State := npbsNormal; 
  UninstallProgressForm.ProgressBar.Style := npbstMarquee;
	UninstallProgressForm.BeveledLabel.Color := clWhite;
end; 
