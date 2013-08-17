module UnrealScript.UnrealEd.LightingChannelsObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface LightingChannelsObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.LightingChannelsObject")()); }
	private static __gshared LightingChannelsObject mDefaultProperties;
	@property final static LightingChannelsObject DefaultProperties() { mixin(MGDPC!(LightingChannelsObject, "LightingChannelsObject UnrealEd.Default__LightingChannelsObject")()); }
}
