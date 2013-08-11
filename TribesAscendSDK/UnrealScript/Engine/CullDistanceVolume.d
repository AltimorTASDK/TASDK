module UnrealScript.Engine.CullDistanceVolume;

import ScriptClasses;
import UnrealScript.Engine.Volume;

extern(C++) interface CullDistanceVolume : Volume
{
public extern(D):
	struct CullDistanceSizePair
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			float CullDistance() { return *cast(float*)(cast(size_t)&this + 4); }
			float Size() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(CullDistanceVolume.CullDistanceSizePair) CullDistances() { return *cast(ScriptArray!(CullDistanceVolume.CullDistanceSizePair)*)(cast(size_t)cast(void*)this + 520); }
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	}
}
