module UnrealScript.Core.UInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface UInterface : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Core.Interface")()); }
	private static __gshared UInterface mDefaultProperties;
	@property final static UInterface DefaultProperties() { mixin(MGDPC!(UInterface, "Interface Core.Default__Interface")()); }
}
