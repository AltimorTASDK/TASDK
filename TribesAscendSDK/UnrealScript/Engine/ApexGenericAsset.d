module UnrealScript.Engine.ApexGenericAsset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ApexAsset;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ApexGenericAsset : ApexAsset
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ApexGenericAsset")()); }
	private static __gshared ApexGenericAsset mDefaultProperties;
	@property final static ApexGenericAsset DefaultProperties() { mixin(MGDPC!(ApexGenericAsset, "ApexGenericAsset Engine.Default__ApexGenericAsset")()); }
	@property final auto ref
	{
		ScriptArray!(MaterialInterface) Materials() { mixin(MGPC!(ScriptArray!(MaterialInterface), 112)()); }
		UObject.Pointer MApexAsset() { mixin(MGPC!(UObject.Pointer, 108)()); }
	}
}
