module UnrealScript.Core.DistributionVector;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Core.Component;

extern(C++) interface DistributionVector : Component
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.DistributionVector")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetVectorValue;
		public @property static final ScriptFunction GetVectorValue() { return mGetVectorValue ? mGetVectorValue : (mGetVectorValue = ScriptObject.Find!(ScriptFunction)("Function Core.DistributionVector.GetVectorValue")); }
	}
	enum EDistributionVectorLockFlags : ubyte
	{
		EDVLF_None = 0,
		EDVLF_XY = 1,
		EDVLF_XZ = 2,
		EDVLF_YZ = 3,
		EDVLF_XYZ = 4,
		EDVLF_MAX = 5,
	}
	enum EDistributionVectorMirrorFlags : ubyte
	{
		EDVMF_Same = 0,
		EDVMF_Different = 1,
		EDVMF_Mirror = 2,
		EDVMF_MAX = 3,
	}
	struct RawDistributionVector
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Core.DistributionVector.RawDistributionVector")); }
		@property final auto ref
		{
			ubyte Type() { return *cast(ubyte*)(cast(size_t)&this + 0); }
			ubyte Op() { return *cast(ubyte*)(cast(size_t)&this + 1); }
			ubyte LookupTableNumElements() { return *cast(ubyte*)(cast(size_t)&this + 2); }
			ubyte LookupTableChunkSize() { return *cast(ubyte*)(cast(size_t)&this + 3); }
			ScriptArray!(float) LookupTable() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 4); }
			float LookupTableTimeScale() { return *cast(float*)(cast(size_t)&this + 16); }
			float LookupTableStartTime() { return *cast(float*)(cast(size_t)&this + 20); }
		}
	}
	@property final
	{
		@property final auto ref UObject.Pointer VfTable_FCurveEdInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 72); }
		bool bIsDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
		bool bIsDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
		bool bCanBeBaked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool bCanBeBaked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
	final Vector GetVectorValue(float F, int LastExtreme)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = F;
		*cast(int*)&params[4] = LastExtreme;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVectorValue, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
}
