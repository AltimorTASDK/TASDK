module UnrealScript.Engine.CoverSlipReachSpec;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface CoverSlipReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CoverSlipReachSpec")()); }
	private static __gshared CoverSlipReachSpec mDefaultProperties;
	@property final static CoverSlipReachSpec DefaultProperties() { mixin(MGDPC!(CoverSlipReachSpec, "CoverSlipReachSpec Engine.Default__CoverSlipReachSpec")()); }
	@property final auto ref ubyte SpecDirection() { mixin(MGPC!("ubyte", 144)()); }
}
