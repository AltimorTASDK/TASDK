module UnrealScript.Engine.UIConfigProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIConfigProvider : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIConfigProvider")()); }
	private static __gshared UIConfigProvider mDefaultProperties;
	@property final static UIConfigProvider DefaultProperties() { mixin(MGDPC!(UIConfigProvider, "UIConfigProvider Engine.Default__UIConfigProvider")()); }
}
