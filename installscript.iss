#define AppName "Floating Sandbox Discord Mods"
#define AppVersion "v1.8.0"
#define AppPublisher "Longhorn"
#define MyAppExeName "multimodinstaller.exe"
#define DefDir 

[Setup]
AppName={#AppName}
AppVersion={#AppVersion}
WizardStyle=modern
DefaultDirName={localappdata}\Floating Sandbox
OutputDir=installer
DirExistsWarning=no
DisableDirPage=no
SetupIconFile="installer\icon.ico"

[Types]
Name: "full"; Description: "Full installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom

[Components]
Name: "Extra_Materials_Mod"; Description: "Floating Sandbox Extra Materials Mod v3.1"; Types: full
Name: "Mias_Black_Smoke_Mod"; Description: "Mia's Black Smoke Mod"; Types: full
Name: "Bandits_Screaming_Mod"; Description: "Bandit's Screaming Mod"; Types: full
Name: "Bandits_Background_Music_Mod"; Description: "Bandit's Background Music Mod"; Types: full
Name: "Tapemans_Material_Textures_Mod"; Description: "Tapeman's Material Textures Mod"; Types: full

[Files]
; Extra Materials Mod
Source: "modfiles\floating_sandbox_extra_materials_mod\materials_structural.json"; DestDir: "{app}\Data"; Components: "Extra_Materials_Mod"
Source: "modfiles\floating_sandbox_extra_materials_mod\materials_electrical.json"; DestDir: "{app}\Data"; Components: "Extra_Materials_Mod"
Source: "modfiles\floating_sandbox_extra_materials_mod\materials_structural_template.png"; DestDir: "{app}\Guides"; Components: "Extra_Materials_Mod"
Source: "modfiles\floating_sandbox_extra_materials_mod\Textures\Material\*"; DestDir: "{app}\Data\Textures\Material"; Components: "Extra_Materials_Mod"; Flags: recursesubdirs createallsubdirs
; Mia's Black Smoke Mod
Source: "modfiles\mias_black_smoke_mod\GenericMipMappedTexture\*"; DestDir: "{app}\Data\Textures\GenericMipMappedTexture"; Components: "Mias_Black_Smoke_Mod"; Flags: recursesubdirs createallsubdirs
; Bandit's Screaming Mod
Source: "modfiles\bandits_screaming_mod\Music\*"; DestDir: "{app}\Data\Music"; Components: "Bandits_Screaming_Mod"; Flags: recursesubdirs createallsubdirs
; Bandit's Background Music Mod
Source: "modfiles\bandits_background_music_mod\Music\*"; DestDir: "{app}\Data\Music"; Components: "Bandits_Background_Music_Mod"; Flags: recursesubdirs createallsubdirs
; Tapeman's Material Textures Mod
Source: "modfiles\tapemans_material_textures_mod\*"; DestDir: "{app}\Data\Textures\Material"; Components: "Tapemans_Material_Textures_Mod"; Flags: recursesubdirs createallsubdirs
