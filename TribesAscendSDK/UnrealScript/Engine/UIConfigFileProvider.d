module UnrealScript.Engine.UIConfigFileProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIConfigSectionProvider;
import UnrealScript.Engine.UIConfigProvider;

extern(C++) interface UIConfigFileProvider : UIConfigProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIConfigFileProvider")); }
	private static __gshared UIConfigFileProvider mDefaultProperties;
	@property final static UIConfigFileProvider DefaultProperties() { mixin(MGDPC("UIConfigFileProvider", "UIConfigFileProvider Engine.Default__UIConfigFileProvider")); }
	@property final auto ref
	{
		ScriptArray!(UIConfigSectionProvider) Sections() { mixin(MGPC("ScriptArray!(UIConfigSectionProvider)", 88)); }
		ScriptString ConfigFileName() { mixin(MGPC("ScriptString", 100)); }
	}
}
