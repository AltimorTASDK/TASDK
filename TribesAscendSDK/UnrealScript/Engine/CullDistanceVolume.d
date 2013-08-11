module UnrealScript.Engine.CullDistanceVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface CullDistanceVolume : Volume
{
	struct CullDistanceSizePair
	{
		public @property final auto ref float CullDistance() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __CullDistance[4];
		public @property final auto ref float Size() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Size[4];
	}
	public @property final auto ref ScriptArray!(CullDistanceVolume.CullDistanceSizePair) CullDistances() { return *cast(ScriptArray!(CullDistanceVolume.CullDistanceSizePair)*)(cast(size_t)cast(void*)this + 520); }
	public @property final bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
	public @property final bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
}
