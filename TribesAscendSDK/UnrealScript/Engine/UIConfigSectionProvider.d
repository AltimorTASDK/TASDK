module UnrealScript.Engine.UIConfigSectionProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIConfigProvider;

extern(C++) interface UIConfigSectionProvider : UIConfigProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIConfigSectionProvider")()); }
	private static __gshared UIConfigSectionProvider mDefaultProperties;
	@property final static UIConfigSectionProvider DefaultProperties() { mixin(MGDPC!(UIConfigSectionProvider, "UIConfigSectionProvider Engine.Default__UIConfigSectionProvider")()); }
	@property final auto ref ScriptString SectionName() { mixin(MGPC!("ScriptString", 88)()); }
}
