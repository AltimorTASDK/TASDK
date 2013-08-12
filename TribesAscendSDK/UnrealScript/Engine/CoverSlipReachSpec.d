module UnrealScript.Engine.CoverSlipReachSpec;

import ScriptClasses;
import UnrealScript.Engine.ForcedReachSpec;

extern(C++) interface CoverSlipReachSpec : ForcedReachSpec
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CoverSlipReachSpec")); }
	private static __gshared CoverSlipReachSpec mDefaultProperties;
	@property final static CoverSlipReachSpec DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CoverSlipReachSpec)("CoverSlipReachSpec Engine.Default__CoverSlipReachSpec")); }
	@property final auto ref ubyte SpecDirection() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 144); }
}
