module UnrealScript.Engine.UIListElementProvider;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UInterface;

extern(C++) interface UIListElementProvider : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIListElementProvider")()); }
	private static __gshared UIListElementProvider mDefaultProperties;
	@property final static UIListElementProvider DefaultProperties() { mixin(MGDPC!(UIListElementProvider, "UIListElementProvider Engine.Default__UIListElementProvider")()); }
}
