module UnrealScript.Engine.DistributionVectorUniform;

import ScriptClasses;
import UnrealScript.Core.DistributionVector;

extern(C++) interface DistributionVectorUniform : DistributionVector
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DistributionVectorUniform")); }
	private static __gshared DistributionVectorUniform mDefaultProperties;
	@property final static DistributionVectorUniform DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DistributionVectorUniform)("DistributionVectorUniform Engine.Default__DistributionVectorUniform")); }
	@property final
	{
		auto ref
		{
			DistributionVector.EDistributionVectorMirrorFlags MirrorFlags() { return *cast(DistributionVector.EDistributionVectorMirrorFlags*)(cast(size_t)cast(void*)this + 109); }
			DistributionVector.EDistributionVectorLockFlags LockedAxes() { return *cast(DistributionVector.EDistributionVectorLockFlags*)(cast(size_t)cast(void*)this + 108); }
			Vector Min() { return *cast(Vector*)(cast(size_t)cast(void*)this + 92); }
			Vector Max() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bUseExtremes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x2) != 0; }
		bool bUseExtremes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x2; } return val; }
		bool bLockAxes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool bLockAxes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	}
}
