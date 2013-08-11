module UnrealScript.Core.DistributionFloat;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Core.Component;

extern(C++) interface DistributionFloat : Component
{
	struct RawDistributionFloat
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
	final float GetFloatValue(float F)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[3432], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
}
