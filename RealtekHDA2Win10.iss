#define MyAppName "Realtek Ultimate HD Audio"
#define MyAppName2 "Sound Blaster Connect"
#define MyAppName3 "Sound Blaster Connect 2"
#define MyAppVersion GetFileVersion("F:\Armazenamento\Audio\HDA\Driver64\RTKVHD64.sys")
#define MyAppPublisher "Alan Finotty"
#define MyAppURL "http://www.realtek.com/"
#define MyAppCopyright "Copyright © 2019 Alan Finotty."

[Setup]
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
AppId={{F132AF7F-7BCA-4EDE-8A7C-958108FE7DBC}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf64}\AAFMod\Files
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
DisableFinishedPage=yes
DisableWelcomePage=no
DisableReadyPage=no
OutputDir=C:\Users\Alan Finotty\Desktop\Installers
OutputBaseFilename=AAFDrvInst_HDA_ALL-{#MyAppVersion}
SetupIconFile=F:\Armazenamento\Audio\HDA\Driver64\favicon.ico
Uninstallable=yes
UninstallDisplayName={#MyAppName}
UninstallRestartComputer=True
UninstallFilesDir={app}
UninstallDisplayIcon={win}\System32\favicon.ico
Compression=lzma2/ultra64
SolidCompression=yes
SignedUninstaller=yes
SignTool=signtool
SignToolRetryCount=10
UseSetupLdr=yes
VersionInfoCopyright={#MyAppCopyright} 
VersionInfoCompany={#MyAppPublisher}
VersionInfoVersion={#MyAppVersion}
VersionInfoDescription={#MyAppName}
VersionInfoOriginalFileName=AAFDrvInst_HDA_ALL-{#MyAppVersion}.exe
VersionInfoProductName={#MyAppName}
VersionInfoProductTextVersion={#MyAppVersion}
VersionInfoTextVersion={#MyAppVersion}
FlatComponentsList=yes
MinVersion=6.1
WindowResizable=True
WindowStartMaximized=yes
WindowVisible=True
WindowShowCaption=False
WizardImageFile=F:\Armazenamento\Imagens\MyLogos\mywizard.bmp
WizardSmallImageFile=F:\Armazenamento\Imagens\MyLogos\mysmallwizard.bmp
WizardStyle=modern
RestartApplications=False
DirExistsWarning=no
PrivilegesRequired=admin
AlwaysRestart=no
RestartIfNeededByRun=no
DisableStartupPrompt=True
DisableReadyMemo=True
AppCopyright={#MyAppCopyright}
UserInfoPage=False
VersionInfoProductVersion={#MyAppVersion}
InternalCompressLevel=ultra64
BackColor=$00F26B31
AppComments=Driver Modified by {#MyAppPublisher}
AllowCancelDuringInstall=True
AllowNoIcons=True
AllowRootDirectory=True
UpdateUninstallLogAppName=False

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[LangOptions]
LanguageName=English
LanguageID=$0409
LanguageCodePage=0
DialogFontName=Segoe UI
DialogFontSize=10
WelcomeFontName=Segoe UI
WelcomeFontSize=22
TitleFontName=Segoe UI
TitleFontSize=35
CopyrightFontName=Segoe UI
CopyrightFontSize=13
RightToLeft=no

[Messages]
SetupAppTitle={#MyAppName}
SetupWindowTitle=Setup - {#MyAppName}
ButtonCancel=&Exit
ButtonBack=<< &Previous
ButtonNext=&Next >>
ButtonInstall=&Install ##
ReadyLabel2b=Click Install to continue installation of {#MyAppName}.
ClickNext=Click Next to continue, or Cancel to exit Setup.
ExitSetupMessage=Installation has not yet been completed.%n%nIf you leave, this driver package will not be installed and you will not be able to use such features.%n%nAre you sure you want to exit this installation wizard?
BeveledLabel={#MyAppCopyright} Driver Version: {#MyAppVersion}
AboutSetupMenuItem=&About This Installer Wizard...
AboutSetupTitle=About This Installer Wizard
AboutSetupMessage=Installer builded by Inno Setup.
FinishedLabelNoIcons=Setup has finished installing {#MyAppName} on your computer.%n%nBut you need to restart your computer so you can enjoy all the features.
FinishedLabel=Setup has finished installing {#MyAppName} on your computer.
ClickFinish=But you need to restart your computer so you can enjoy all the features.
SelectTasksLabel2=Select Your Options

[Files]
Source: "F:\Armazenamento\Audio\HDA\Driver64\*"; DestDir: "{app}\Driver"; Flags: deleteafterinstall ignoreversion recursesubdirs
Source: "F:\Armazenamento\Audio\SBC\*"; DestDir: "{app}\SBX"; Flags: deleteafterinstall ignoreversion  recursesubdirs; Tasks: SBX2; MinVersion: 6.1; OnlyBelowVersion: 10.0.14393
Source: "F:\Armazenamento\Audio\DTS_Audio.msi"; DestDir: "{app}\DTS"; Flags: ignoreversion; Tasks: DTS; MinVersion: 6.3; OnlyBelowVersion: 10.0.14393
Source: "F:\Armazenamento\Audio\SBC.AppxBundle"; DestDir: "{app}\SBX"; Flags: deleteafterinstall ignoreversion; Tasks: SBX; MinVersion: 10.0.15063
Source: "F:\Armazenamento\Audio\SBC.bat"; DestDir: "{app}\SBX"; Flags: deleteafterinstall ignoreversion; Tasks: SBX; MinVersion: 10.0.15063
Source: "F:\Armazenamento\Audio\SBC_UNINST.bat"; DestDir: "{win}\SBX_UNINST"; Flags: ignoreversion; Tasks: SBX; MinVersion: 10.0.15063
Source: "F:\Armazenamento\Audio\Dependencies\*"; DestDir: "{app}\Runtimes"; Flags: deleteafterinstall ignoreversion; MinVersion: 10.0.15063
Source: "F:\Armazenamento\Audio\NAHIMIC3.AppxBundle"; DestDir: "{app}\AVO"; Flags: deleteafterinstall ignoreversion; Tasks: AVO; MinVersion: 10.0.15063
Source: "F:\Armazenamento\Audio\NH3.bat"; DestDir: "{app}\AVO"; Flags: deleteafterinstall ignoreversion; Tasks: AVO; MinVersion: 10.0.15063
Source: "F:\Armazenamento\Audio\NH3_UNINST.bat"; DestDir: "{win}\AVO_UNINST"; Flags: ignoreversion; Tasks: AVO; MinVersion: 10.0.15063
Source: "F:\Armazenamento\Audio\ATM.bat"; DestDir: "{app}\ATMOS"; Flags: deleteafterinstall ignoreversion; Tasks: ATM; MinVersion: 10.0.15063
Source: "F:\Armazenamento\Audio\DolbyATMOS.Appx"; DestDir: "{app}\ATMOS"; Flags: deleteafterinstall ignoreversion; Tasks: ATM; MinVersion: 10.0.15063
Source: "F:\Armazenamento\Audio\ATM_UNINST.bat"; DestDir: "{win}\ATM_UNINST"; Flags: ignoreversion; Tasks: ATM; MinVersion: 10.0.15063
Source: "F:\Armazenamento\Audio\ASIO\*"; DestDir: "{app}\ASIO"; Flags: deleteafterinstall ignoreversion
Source: "F:\Armazenamento\Audio\Licensing\*"; DestDir: "{app}\KGA"; Flags: deleteafterinstall ignoreversion
Source: "F:\NewCert\Cert.cmd"; Flags: dontcopy; Attribs: hidden

[Tasks]
Name: SBX; Description: "Install {#MyAppName2}"; GroupDescription: "Creative Technology"; Flags: checkablealone; MinVersion: 10.0.15063
Name: SBX2; Description: "Install {#MyAppName3}"; GroupDescription: "Creative Technology"; Flags: checkablealone; MinVersion: 6.1; OnlyBelowVersion: 10.0.14393
Name: B360; Description: "BlasterX 360°"; GroupDescription: "If you have installed any of the Blaster Connect applications, choose one of the options below. Otherwise, you will also have to select the top option to install the version for your operating system.";Flags: exclusive; MinVersion: 6.1
Name: B720; Description: "BlasterX 720°"; GroupDescription: "If you have installed any of the Blaster Connect applications, choose one of the options below. Otherwise, you will also have to select the top option to install the version for your operating system.";Flags: exclusive; MinVersion: 6.1
Name: C5; Description: "Cinema 5"; GroupDescription: "If you have installed any of the Blaster Connect applications, choose one of the options below. Otherwise, you will also have to select the top option to install the version for your operating system."; Flags: exclusive; MinVersion: 10.0.15063
Name: DTS; Description: "Install DTS Audio"; GroupDescription: "Digital Theater Systems"; Flags: checkablealone; MinVersion: 6.3; OnlyBelowVersion: 10.0.14393
Name: AVO; Description: "Install A-Volute Nahimic 3"; GroupDescription: "A-Volute Technology"; Flags: checkablealone; MinVersion: 10.0.15063
Name: ATM; Description: "Install Dolby ATMOS"; GroupDescription: "Dolby Technology"; Flags: checkablealone; MinVersion: 10.0.15063

[Run]
Filename: "{sys}\msiexec.exe"; Parameters: "/i ""{app}\DTS\DTSAudio.msi"" /passive"; StatusMsg: "Now Installing DTS Audio"; Tasks: DTS; MinVersion: 6.3; OnlyBelowVersion: 10.0.14393
Filename: "{sys}\pnputil.exe"; Parameters: "-i -a ""{app}\Driver\HDX.inf"""; Flags: runhidden; StatusMsg: "Now Installing {#MyAppName} Driver"
Filename: "{app}\ASIO\Install.exe"; Parameters: "-s -silent /s /silent"; Flags: runhidden; StatusMsg: "Now Installing Realtek ASIO Driver"
Filename: "{app}\Runtimes\DEPENDENCIES.bat"; StatusMsg: "Now Installing UWP Dependencies"; MinVersion: 10.0.15063
Filename: "{app}\SBX\CreativeSBConnect2Setup.exe"; Parameters: "-s /s -silent /silent -q /q -qn /qn -passive /passive /NOCANCEL /NORESTART"; Flags: runhidden; StatusMsg: "Now Installing {#MyAppName3}"; Tasks: SBX2; MinVersion: 6.1; OnlyBelowVersion: 10.0.14393
Filename: "{app}\SBX\ConnectionService\CreativeConnectionServiceSetup.exe"; Parameters: "-s /s -silent /silent -q /q -qn /qn -passive /passive /NOCANCEL /NORESTART"; Flags: runhidden; StatusMsg: "Now Installing {#MyAppName3}"; Tasks: SBX2; MinVersion: 6.1; OnlyBelowVersion: 10.0.14393
Filename: "{app}\SBX\Alchemy\setup.exe"; Parameters: "-s /s -silent /silent -q /q -qn /qn -passive /passive /NOCANCEL /NORESTART"; Flags: runhidden; StatusMsg: "Now Installing {#MyAppName3}"; Tasks: SBX2; MinVersion: 6.1; OnlyBelowVersion: 10.0.14393
Filename: "{app}\SBX\HOAL\setup.exe"; Parameters: "-s /s -silent /silent -q /q -qn /qn -passive /passive /NOCANCEL /NORESTART"; Flags: runhidden; StatusMsg: "Now Installing {#MyAppName3}"; Tasks: SBX2; MinVersion: 6.1; OnlyBelowVersion: 10.0.14393
Filename: "{app}\SBX\HOAL\oalinst.exe"; Parameters: "-s /s -silent /silent -q /q -qn /qn -passive /passive /NOCANCEL /NORESTART"; Flags: runhidden; StatusMsg: "Now Installing {#MyAppName3}"; Tasks: SBX2; MinVersion: 6.1; OnlyBelowVersion: 10.0.14393
Filename: "{app}\SBX\SBC.bat"; StatusMsg: "Now Installing {#MyAppName2}"; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{app}\AVO\NH3.bat"; StatusMsg: "Now Installing A-Volute Nahimic 3"; Tasks: AVO; MinVersion: 10.0.15063
Filename: "{app}\ATMOS\ATM.bat"; StatusMsg: "Now Installing Dolby ATMOS for Gaming"; Tasks: ATM; MinVersion: 10.0.15063

[UninstallRun]
Filename: "{pf64}\Realtek\Audio\HDA\RtlUpd64.exe"; Parameters: "-r"; StatusMsg: "Now Uninstalling {#MyAppName} Modded Driver"; Flags: waituntilterminated
Filename: "{sys}\msiexec.exe"; Parameters: "/x ""{app}\DTS\DTSAudio.msi"""; StatusMsg: "Now Uninstalling DTS Audio"; Flags: waituntilterminated; Tasks: DTS; MinVersion: 6.3; OnlyBelowVersion: 10.0.14393
Filename: "{win}\SBX_UNINST\SBC_UNINST.bat"; StatusMsg: "Now Uninstalling {#MyAppName2}"; Flags: waituntilterminated; Tasks: SBX; MinVersion: 10.0.15063
Filename: "{win}\AVO_UNINST\NH3_UNINST.bat"; StatusMsg: "Now Uninstalling A-Volute Nahimic 3"; Flags: waituntilterminated; Tasks: AVO; MinVersion: 10.0.15063
Filename: "{win}\ATM_UNINST\ATM_UNINST.bat"; StatusMsg: "Now Uninstalling Dolby ATMOS for Gaming"; Flags: waituntilterminated; Tasks: ATM; MinVersion: 10.0.15063 

[UninstallDelete]
Type: filesandordirs; Name: "{app}\*"
Type: filesandordirs; Name: "{pf64}\Realtek\Audio\*"
Type: filesandordirs; Name: "{sd}\ProgramData\Creative\SoftwareLock\*"
Type: filesandordirs; Name: "{sd}\ProgramData\Creative\*"
Type: filesandordirs; Name: "{win}\SBX_UNINST\*"
Type: filesandordirs; Name: "{win}\AVO_UNINST\*"
Type: filesandordirs; Name: "{win}\ATM_UNINST\*"
//Not necessary in moment
//Type: files; Name: "{win}\System32\drivers\rtkhdaud.dat"

[Code]
var
  ResultCode, ErrorCode: Integer;
  Form: TSetupForm;
  AboutButton, TPUButton, Button: TNewButton;
  Page: TWizardPage;
  MsgPage5: TOutputMsgWizardPage;
	Version: TWindowsVersion;
  Text: TNewStaticText;

function InitializeSetup(): Boolean;
begin
	ExtractTemporaryFile('Cert.cmd');
  Exec(ExpandConstant('{tmp}\Cert.cmd'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
	if ResultCode = 0 then 
  begin
		DeleteFile(ExpandConstant('{tmp}\Cert.cmd'));
	end;
	Result := True;
end;

procedure AboutButtonOnClick(Sender: TObject);
begin
  MsgBox('{#MyAppCopyright}'#13#13 + 'Thank you very much. I hope you enjoy the work.', mbInformation, mb_Ok);
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

procedure CreateAboutButtonAndURLLabel(ParentForm: TSetupForm; CancelButton: TNewButton);
begin
  AboutButton := TNewButton.Create(ParentForm);
  AboutButton.Left := ParentForm.ClientWidth - ScaleX(0 + 486);
  AboutButton.Top := ParentForm.ClientHeight + ScaleY(0 + 39);
  AboutButton.Width := WizardForm.CancelButton.Width;
  AboutButton.Height := WizardForm.CancelButton.Height;
  AboutButton.Caption := 'About Me';
  AboutButton.OnClick := @AboutButtonOnClick;
  AboutButton.Parent := ParentForm;
	
	TPUButton := TNewButton.Create(Form);
  TPUButton.Left := AboutButton.Left + ScaleX(90); 
  TPUButton.Top := AboutButton.Top;
  TPUButton.Width := AboutButton.Width + ScaleX(10);
  TPUButton.Height := AboutButton.Height;
  TPUButton.Caption := 'TechPowerUp';
  TPUButton.OnClick := @TPUButtonOnClick;
  TPUButton.Parent := ParentForm;
end;
procedure InitializeWizard();
begin
  CreateAboutButtonAndURLLabel(WizardForm, WizardForm.CancelButton);
  WizardForm.WelcomeLabel1.Caption := 'Welcome To The {#MyAppName} Setup Wizard';
	WizardForm.ProgressGauge.State := npbsNormal;
  WizardForm.ProgressGauge.Style := npbstMarquee;
  WizardForm.ProgressGauge.Visible := True;
  WizardForm.BeveledLabel.Color := clWhite;
	
	Page := PageFromID(wpWelcome);
	
	GetWindowsVersionEx(Version);
	
	if (Version.Major = 6) and (Version.Minor = 1) then begin
	WizardForm.WelcomeLabel2.Caption := 'I am Alan Finotty. Thank you so much for your preference. Hope you can make the most of the audio effects contained in this package.'#13#13 +
	'Click Next to continue the {#MyAppName} Setup Wizard.'#13#13#13 +
	'You are using: Windows 7';
	end;

	if (Version.Major = 6) and (Version.Minor = 2) then begin
	WizardForm.WelcomeLabel2.Caption := 'I am Alan Finotty. Thank you so much for your preference. Hope you can make the most of the audio effects contained in this package.'#13#13 +
	'Click Next to continue the {#MyAppName} Setup Wizard.'#13#13#13 +
	'You are using: Windows 8';
	end;
	
	if (Version.Major = 6) and (Version.Minor = 3) then begin
	WizardForm.WelcomeLabel2.Caption := 'I am Alan Finotty. Thank you so much for your preference. Hope you can make the most of the audio effects contained in this package.'#13#13 +
	'Click Next to continue the {#MyAppName} Setup Wizard.'#13#13#13 +
	'You are using: Windows 8.1';
	end;
	
	if (Version.Major = 10) and (Version.Minor = 0) then begin
	WizardForm.WelcomeLabel2.Caption := 'I am Alan Finotty. Thank you so much for your preference. Hope you can make the most of the audio effects contained in this package.'#13#13 +
	'Click Next to continue the {#MyAppName} Setup Wizard.'#13#13#13 +
	'You are using: Windows 10';
	end;
	
	if (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) then begin
	Button := TNewButton.Create(Page);
  Button.Left := ScaleX(92);
  Button.Top := ScaleY(311);
  Button.Width := ScaleX(82);
  Button.Height := ScaleY(23);
  Button.Caption := 'Verify Your Windows Development Configurations';
  Button.OnClick := @ButtonOnClick;
  Button.Parent := Page.Surface;
	
	Text := TNewStaticText.Create(Page);
  Text.Top := Button.Top - ScaleY(42);
  Text.Caption := 'Check your system development settings to ensure successful installation of the UWP apps in this package. It is recommended to enable Sideload'#13 +
	'or Developer modes. To perform this action, click the button below:';
	Text.AutoSize := True;
	Text.WordWrap := True;
  Text.Parent := Page.Surface;
	
	WizardForm.WelcomeLabel2.Caption := 'I am Alan Finotty. Thank you so much for your preference. Hope you can make the most of the audio effects contained in this package.'#13#13 +
	'Click Next to continue the {#MyAppName} Setup Wizard.'#13#13#13 +
	'You are using: Windows 10';
	end;
	
	MsgPage5 := CreateOutputMsgPage(Page.ID,
	'Additional Information with Effects', 'List of Enabled APOs and Components',
  '{#MyAppName2} (From Windows 10 build 15063)'#13 +
	'{#MyAppName3} (From Windows 7 to Windows 10 build 14393)'#13 + 
	'DTS Audio (From Windows 8.1 to Windows 10 build 14393)'#13 +
	'VIA Audio Enhancements (From Windows 7 to Windows 8)'#13 +
  'A-Volute Nahimic 3 (From Windows 10 build 15063)'#13 +
	'Dolby ATMOS (From Windows 10 build 15063)');
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssPostInstall then 
  begin
  Exec(ExpandConstant('{app}\KGA\GenKGA.exe'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
  Exec(ExpandConstant('{app}\KGA\GenKGA3.exe'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
	// Select BlasterX 360°
	if (WizardIsTaskSelected('B360')) then begin
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA30CF234.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA200FF2D.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTAE90C24A.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD1JXF23A.kga'));  // Sound Blaster X-Fi MB2 - Sound Blaster Panel - DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD3SPO23G.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD5H2W3DK.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTH6K23AS7.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL34AF61R.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL42SW23M.kga'));  // DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLA20RVB5.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD2JX234.kga'));  // DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD14KLI5.kga'));  // DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLE2C3BA1.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLI37CVX2.kga'));
	//DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLLAS4HX2.kga')); 	// Sound BlasterX 360°                                                                                                                              
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLMN34SX2.kga'));  // Sound Blaster Cinema 3                                                                                                                                  
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLNBK2HX2.kga'));  // Sound BlasterX 720°
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLO3H65X2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLP22SV21.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLPS4HTX2.kga'));  // Sound Blaster Cinema 5
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLS2SR4X2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT02H0X2.kga'));   
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT9SJDX2.kga'));  // Sound Blaster Cinema 2
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT11HL3X.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT21H1X2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT46HL1X.kga'));                                                                                                                                 
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT47H9X2.kga'));  // Sound Blaster Cinema
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT53HURX.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT72HL2X.kga'));                                                                                            
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT99HB0X.kga'));  // Sound Blaster X-Fi MB2 - THX TruStudio Pro
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLTD2H3X2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLUE8XYX2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLXS2Q3X2.kga'));  // Sound Blaster X-Fi MB5
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTT78HSK12.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTT92KD23N.kga'));
	end;
	// Select BlasterX 720°
	if (WizardIsTaskSelected('B720')) then begin
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA30CF234.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA200FF2D.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTAE90C24A.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD1JXF23A.kga'));  // Sound Blaster X-Fi MB2 - Sound Blaster Panel - DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD3SPO23G.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD5H2W3DK.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTH6K23AS7.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL34AF61R.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL42SW23M.kga'));  // DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLA20RVB5.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD2JX234.kga'));  // DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD14KLI5.kga'));  // DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLE2C3BA1.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLI37CVX2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLLAS4HX2.kga')); 	// Sound BlasterX 360°                                                                                                                               
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLMN34SX2.kga'));  // Sound Blaster Cinema 3                                                                                                                                  
	//DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLNBK2HX2.kga'));  // Sound BlasterX 720°
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLO3H65X2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLP22SV21.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLPS4HTX2.kga'));  // Sound Blaster Cinema 5
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLS2SR4X2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT02H0X2.kga'));   
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT9SJDX2.kga'));  // Sound Blaster Cinema 2
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT11HL3X.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT21H1X2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT46HL1X.kga'));                                                                                                                                 
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT47H9X2.kga'));  // Sound Blaster Cinema
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT53HURX.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT72HL2X.kga'));                                                                                            
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT99HB0X.kga'));  // Sound Blaster X-Fi MB2 - THX TruStudio Pro
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLTD2H3X2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLUE8XYX2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLXS2Q3X2.kga')); // Sound Blaster X-Fi MB5
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTT78HSK12.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTT92KD23N.kga'));
	end;
// Select Cinema 5 (Only Windows 10)
	if (Version.Major = 10) and (Version.Minor = 0) and (Version.Build >= 15063) and (WizardIsTaskSelected('SBX\C5')) then begin
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA30CF234.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTA200FF2D.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTAE90C24A.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD1JXF23A.kga'));  // Sound Blaster X-Fi MB2 - Sound Blaster Panel - DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD3SPO23G.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTD5H2W3DK.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTH6K23AS7.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL34AF61R.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTL42SW23M.kga'));  // DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLA20RVB5.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD2JX234.kga'));  // DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLD14KLI5.kga'));  // DTS Patcher
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLE2C3BA1.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLI37CVX2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLLAS4HX2.kga')); 	// Sound BlasterX 360°                                                                                                                               
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLMN34SX2.kga'));  // Sound Blaster Cinema 3                                                                                                                                  
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLNBK2HX2.kga'));  // Sound BlasterX 720°
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLO3H65X2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLP22SV21.kga'));
	//DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLPS4HTX2.kga'));  // Sound Blaster Cinema 5
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLS2SR4X2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT02H0X2.kga'));   
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT9SJDX2.kga'));  // Sound Blaster Cinema 2
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT11HL3X.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT21H1X2.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT46HL1X.kga'));                                                                                                                                 
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT47H9X2.kga'));  // Sound Blaster Cinema
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT53HURX.kga'));
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT72HL2X.kga'));                                                                                            
	DeleteFile(ExpandConstant('{sd}\ProgramData\Creative\SoftwareLock\CTLT99HB0X.kga'));  // Sound Blaster X-Fi MB2 - THX TruStudio Pro
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
end;
