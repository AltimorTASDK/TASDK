module UnrealScript.Engine.LevelStreamingAlwaysLoaded;

import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingAlwaysLoaded : LevelStreaming
{
public extern(D):
	@property final
	{
		bool bIsProceduralBuildingLODLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x1) != 0; }
		bool bIsProceduralBuildingLODLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x1; } return val; }
	}
}
