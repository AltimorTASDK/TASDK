module UnrealScript.UnrealEd.LightmassOptionsObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface LightmassOptionsObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.LightmassOptionsObject")()); }
	private static __gshared LightmassOptionsObject mDefaultProperties;
	@property final static LightmassOptionsObject DefaultProperties() { mixin(MGDPC!(LightmassOptionsObject, "LightmassOptionsObject UnrealEd.Default__LightmassOptionsObject")()); }
}
