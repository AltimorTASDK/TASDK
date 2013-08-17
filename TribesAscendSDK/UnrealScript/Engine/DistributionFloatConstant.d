module UnrealScript.Engine.DistributionFloatConstant;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface DistributionFloatConstant : DistributionFloat
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DistributionFloatConstant")); }
	private static __gshared DistributionFloatConstant mDefaultProperties;
	@property final static DistributionFloatConstant DefaultProperties() { mixin(MGDPC("DistributionFloatConstant", "DistributionFloatConstant Engine.Default__DistributionFloatConstant")); }
	@property final auto ref float Constant() { mixin(MGPC("float", 80)); }
}
