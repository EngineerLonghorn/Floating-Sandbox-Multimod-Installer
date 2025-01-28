#define AppName "Original Floating Sandbox Vanilla Files"
#define AppVersion "v1.8.0"
#define AppPublisher "Longhorn"
#define MyAppExeName "floatingsandboxdiscordmodpackuninstaller.exe"

[Setup]
AppName={#AppName}
AppVersion={#AppVersion}
WizardStyle=modern
DefaultDirName={localappdata}\Floating Sandbox\
OutputDir=installer
DirExistsWarning=no
DisableDirPage=no
SetupIconFile="installer\icon.ico"

[Types]
Name: "full"; Description: "Full uninstallation"
Name: "custom"; Description: "Custom uninstallation"; Flags: iscustom

[Components]
Name: "Extra_Materials_Mod"; Description: "Uninstall Floating Sandbox Extra Materials Mod v3.1"; Types: full
Name: "Extra_Materials_Mod\Extra_Materials_Mod_Splash_Screen"; Description: "Uninstall Floating Sandbox Extra Materials Mod v2.0 Splash Screen"; Types: full
Name: "Mias_Black_Smoke_Mod"; Description: "Uninstall Mia's Black Smoke Mod"; Types: full
Name: "Bandits_Screaming_Mod"; Description: "Uninstall Bandit's Screaming Mod"; Types: full
Name: "Bandits_Background_Music_Mod"; Description: "Uninstall Bandit's Background Music Mod"; Types: full
Name: "Longhorns_Terraria_Clouds_Mod"; Description: "Uninstall Longhorn's Terraria Clouds Mod"; Types: full

[Files]
; Extra Materials Mod
Source: "gamefiles\floating_sandbox_extra_materials_mod\materials_structural.json"; DestDir: "{app}\Data"; Components: "Extra_Materials_Mod"
Source: "gamefiles\floating_sandbox_extra_materials_mod\materials_electrical.json"; DestDir: "{app}\Data"; Components: "Extra_Materials_Mod"
Source: "gamefiles\floating_sandbox_extra_materials_mod\materials_structural_template.png"; DestDir: "{app}\Guides"; Components: "Extra_Materials_Mod"
; Extra Materials Mod Splash Screen
Source: "gamefiles\floating_sandbox_extra_materials_mod\splash_screen.png"; DestDir: "{app}\Data\Resources"; Components: "Extra_Materials_Mod\Extra_Materials_Mod_Splash_Screen"
; Mia's Black Smoke Mod
Source: "gamefiles\mias_black_smoke_mod\GenericMipMappedTexture\*"; DestDir: "{app}\Data\Textures\GenericMipMappedTexture"; Components: "Mias_Black_Smoke_Mod"; Flags: recursesubdirs createallsubdirs
; Bandit's Screaming Mod
Source: "gamefiles\bandits_screaming_mod\Music\*"; DestDir: "{app}\Data\Music"; Components: "Bandits_Screaming_Mod"; Flags: recursesubdirs createallsubdirs
; Bandit's Background Music Mod
Source: "gamefiles\bandits_background_music_mod\Music\*"; DestDir: "{app}\Data\Music"; Components: "Bandits_Background_Music_Mod"; Flags: recursesubdirs createallsubdirs