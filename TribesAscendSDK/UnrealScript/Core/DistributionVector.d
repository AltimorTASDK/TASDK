module UnrealScript.Core.DistributionVector;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Core.Component;

extern(C++) interface DistributionVector : Component
{
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
		public @property final auto ref ubyte Type() { return *cast(ubyte*)(cast(size_t)&this + 0); }
		private ubyte __Type[1];
		public @property final auto ref ubyte Op() { return *cast(ubyte*)(cast(size_t)&this + 1); }
		private ubyte __Op[1];
		public @property final auto ref ubyte LookupTableNumElements() { return *cast(ubyte*)(cast(size_t)&this + 2); }
		private ubyte __LookupTableNumElements[1];
		public @property final auto ref ubyte LookupTableChunkSize() { return *cast(ubyte*)(cast(size_t)&this + 3); }
		private ubyte __LookupTableChunkSize[1];
		public @property final auto ref ScriptArray!(float) LookupTable() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 4); }
		private ubyte __LookupTable[12];
		public @property final auto ref float LookupTableTimeScale() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __LookupTableTimeScale[4];
		public @property final auto ref float LookupTableStartTime() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __LookupTableStartTime[4];
	}
	public @property final bool bIsDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
	public @property final bool bIsDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
	public @property final bool bCanBeBaked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
	public @property final bool bCanBeBaked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer VfTable_FCurveEdInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 72); }
	final Vector GetVectorValue(float F, int LastExtreme)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = F;
		*cast(int*)&params[4] = LastExtreme;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3442], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
}
