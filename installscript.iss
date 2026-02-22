#define AppName "Floating Sandbox Designer's Studio Mods"
#define AppVersion "v2.3"
#define AppPublisher "Longhorn"
#define MyAppExeName "Floating Sandbox Multimod Installer v2.3.exe"
#define DefDir 

[Setup]
AppName=Floating Sandbox Multimod Installer v2.3
AppVersion={#AppVersion}
AppVerName=Floating Sandbox Designer's Studio Mods
WizardStyle=classic
DefaultDirName={localappdata}\Floating Sandbox
OutputDir=installer
DirExistsWarning=no
DisableDirPage=no
EnableDirDoesntExistWarning=yes
SetupIconFile="installer\icon.ico"
InfoBeforeFile="installer\readme.txt"
Uninstallable=no
ShowComponentSizes=yes
DisableWelcomePage=no
WizardImageFile="installer\wizardimage1.png"
WizardSmallImageFile="installer\icon.png"

[Types]
Name: "fullmodded"; Description: "Full Modded Installation"
Name: "fullvanilla"; Description: "Full Vanilla Installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom

[Components]
Name: "materials"; Description: "Materials"; 
Name: "materials\fs"; Description: "Default Floating Sandbox Materials"; Flags: exclusive; Types: fullvanilla
Name: "materials\em"; Description: "Extra Materials Mod v4.3"; Flags: exclusive; Types: fullmodded
Name: "materials\tapeman"; Description: "Tapeman's Material Textures Mod"; Types: fullmodded
Name: "smoke"; Description: "Smoke"; 
Name: "smoke\fs"; Description: "Default Floating Sandbox Smoke"; Flags: exclusive; Types: fullvanilla
Name: "smoke\mia"; Description: "Mia's Black Smoke Mod"; Flags: exclusive; Types: fullmodded
Name: "antimatter"; Description: "Antimatter Bomb"; 
Name: "antimatter\fs"; Description: "Default Floating Sandbox Antimatter Bomb"; Flags: exclusive; Types: fullvanilla
Name: "antimatter\charlemagne"; Description: "Charlemagne Antimatter Mod"; Flags: exclusive; Types: fullmodded
Name: "lasercannon"; Description: "Laser Cannon"; 
Name: "lasercannon\fs"; Description: "Default Floating Sandbox Laser Cannon"; Flags: exclusive; Types: fullvanilla
Name: "lasercannon\kiwi"; Description: "Laser Kiwi Laser Cannon Mod"; Flags: exclusive; Types: fullmodded
Name: "screaming"; Description: "Sinking Sounds"; 
Name: "screaming\fs"; Description: "Default Floating Sandbox Sinking Sounds"; Flags: exclusive; Types: fullvanilla
Name: "screaming\bandit"; Description: "Bandit's Screaming Mod"; Flags: exclusive; Types: fullmodded
Name: "bgmusic"; Description: "Background Music"; 
Name: "bgmusic\fs"; Description: "Default Floating Sandbox Background Music"; Flags: exclusive; Types: fullvanilla
Name: "bgmusic\bandit"; Description: "Bandit's Background Music Mod"; Flags: exclusive; Types: fullmodded
Name: "presets"; Description: "Presets"; 
Name: "presets\lg"; Description: "Longhorn's Preset Pack"; Types: fullmodded
Name: "presets\bandit"; Description: "Bandit's Realistic Preset v1"; Types: fullmodded
Name: "splashscreen"; Description: "Splash Screen"; 
Name: "splashscreen\fs"; Description: "Default Floating Sandbox Splash Screen"; Flags: exclusive; Types: fullvanilla
Name: "splashscreen\emday"; Description: "Daytime Extra Materials Mod v4 Splash Screen"; Flags: exclusive;
Name: "splashscreen\emsunset"; Description: "Sunset Extra Materials Mod v4 Splash Screen"; Flags: exclusive; 
Name: "splashscreen\emnight"; Description: "Nighttime Extra Materials Mod v4 Splash Screen"; Flags: exclusive;
Name: "splashscreen\emchristmas2025"; Description: "Sunset Extra Materials Mod v4 Splash Screen (Christmas Edition)"; Flags: exclusive; Types: fullmodded

[Files]
; Extra Materials Mod v4.3
Source: "files\materials-em\materials_structural.json"; DestDir: "{app}\Data\Misc"; Components: "materials\em"
Source: "files\materials-em\materials_electrical.json"; DestDir: "{app}\Data\Misc"; Components: "materials\em"
Source: "files\materials-em\materials_structural_template.png"; DestDir: "{app}\Guides"; Components: "materials\em"
Source: "files\materials-em\Textures\Material\*"; DestDir: "{app}\Data\Textures\Material"; Components: "materials\em"; Flags: recursesubdirs createallsubdirs
; Default Floating Sandbox Textures Mod
Source: "files\materials-fs\materials_structural.json"; DestDir: "{app}\Data\Misc"; Components: "materials\fs"
Source: "files\materials-fs\materials_electrical.json"; DestDir: "{app}\Data\Misc"; Components: "materials\fs"
Source: "files\materials-fs\materials_structural_template.png"; DestDir: "{app}\Guides"; Components: "materials\fs"
; Tapeman's Material Textures Mod
Source: "files\materials-tapeman\*"; DestDir: "{app}\Data\Textures\Material"; Components: "materials\tapeman"; Flags: recursesubdirs createallsubdirs
; Mia's Black Smoke Mod
Source: "files\smoke-mia\GenericMipMappedTexture\*"; DestDir: "{app}\Data\Textures\GenericMipMappedTexture"; Components: "smoke\mia"; Flags: recursesubdirs createallsubdirs
; Defaulting Floating Sandbox Smoke
Source: "files\smoke-fs\GenericMipMappedTexture\*"; DestDir: "{app}\Data\Textures\GenericMipMappedTexture"; Components: "smoke\fs"; Flags: recursesubdirs createallsubdirs
; Kiwi Laser Cannon
Source: "files\lasercannon-kiwi\Resources\*"; DestDir: "{app}\Data\Resources"; Components: "lasercannon\kiwi"; Flags: recursesubdirs createallsubdirs
Source: "files\lasercannon-kiwi\Shaders\Game\*"; DestDir: "{app}\Data\Shaders\Game"; Components: "lasercannon\kiwi"; Flags: recursesubdirs createallsubdirs
Source: "files\lasercannon-kiwi\Textures\GenericMipMappedTexture\*"; DestDir: "{app}\Data\Textures\GenericMipMappedTexture"; Components: "lasercannon\kiwi"; Flags: recursesubdirs createallsubdirs
; Default Floating Sandbox Laser Cannon
Source: "files\lasercannon-fs\Resources\*"; DestDir: "{app}\Data\Resources"; Components: "lasercannon\fs"; Flags: recursesubdirs createallsubdirs
Source: "files\lasercannon-fs\Shaders\Game\*"; DestDir: "{app}\Data\Shaders\Game"; Components: "lasercannon\fs"; Flags: recursesubdirs createallsubdirs
Source: "files\lasercannon-fs\Textures\GenericMipMappedTexture\*"; DestDir: "{app}\Data\Textures\GenericMipMappedTexture"; Components: "lasercannon\fs"; Flags: recursesubdirs createallsubdirs
; Charlemagne Antimatter Bomb
Source: "files\antimatter-charlemagne\Resources\*"; DestDir: "{app}\Data\Resources"; Components: "antimatter\charlemagne"; Flags: recursesubdirs createallsubdirs
Source: "files\antimatter-charlemagne\Textures\GenericMipMappedTexture\*"; DestDir: "{app}\Data\Textures\GenericMipMappedTexture"; Components: "antimatter\charlemagne"; Flags: recursesubdirs createallsubdirs
; Default Floating Sandbox Antimatter Bomb
Source: "files\antimatter-fs\Resources\*"; DestDir: "{app}\Data\Resources"; Components: "antimatter\fs"; Flags: recursesubdirs createallsubdirs
Source: "files\antimatter-fs\Textures\GenericMipMappedTexture\*"; DestDir: "{app}\Data\Textures\GenericMipMappedTexture"; Components: "antimatter\fs"; Flags: recursesubdirs createallsubdirs
; Bandit's Screaming Mod
Source: "files\screaming-bandit\Music\*"; DestDir: "{app}\Data\Music"; Components: "screaming\bandit"; Flags: recursesubdirs createallsubdirs
; Default Floating Sandbox Sinking Sounds
Source: "files\screaming-fs\Music\*"; DestDir: "{app}\Data\Music"; Components: "screaming\fs"; Flags: recursesubdirs createallsubdirs
; Bandit's Background Music Mod
Source: "files\bgmusic-bandit\Music\*"; DestDir: "{app}\Data\Music"; Components: "bgmusic\bandit"; Flags: recursesubdirs createallsubdirs
; Default Floating Sandbox Background Music
Source: "files\bgmusic-fs\Music\*"; DestDir: "{app}\Data\Music"; Components: "bgmusic\fs"; Flags: recursesubdirs createallsubdirs
; Longhorn's Presets Pack
Source: "files\presets-lg\*"; DestDir: "{app}\Data\Themes\Settings"; Components: "presets\lg"; Flags: recursesubdirs createallsubdirs
; Bandit's Realistic Preset v1
Source: "files\presets-bandit\*"; DestDir: "{app}\Data\Themes\Settings"; Components: "presets\lg"; Flags: recursesubdirs createallsubdirs
; Extra Materials Mod v4 Splash Screens
Source: "files\splashscreen-em\day\*"; DestDir: "{app}\Data\Resources"; Components: "splashscreen\emday"; Flags: recursesubdirs createallsubdirs
Source: "files\splashscreen-em\sunset\*"; DestDir: "{app}\Data\Resources"; Components: "splashscreen\emsunset"; Flags: recursesubdirs createallsubdirs
Source: "files\splashscreen-em\night\*"; DestDir: "{app}\Data\Resources"; Components: "splashscreen\emnight"; Flags: recursesubdirs createallsubdirs
Source: "files\splashscreen-em\christmas\*"; DestDir: "{app}\Data\Resources"; Components: "splashscreen\emchristmas2025"; Flags: recursesubdirs createallsubdirs
; Default Floating Sandbox Splash Screens
Source: "files\splashscreen-fs\*"; DestDir: "{app}\Data\Resources"; Components: "splashscreen\fs"; Flags: recursesubdirs createallsubdirs
