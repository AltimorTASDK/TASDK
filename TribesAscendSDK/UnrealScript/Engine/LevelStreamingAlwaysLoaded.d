module UnrealScript.Engine.LevelStreamingAlwaysLoaded;

import ScriptClasses;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface LevelStreamingAlwaysLoaded : LevelStreaming
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LevelStreamingAlwaysLoaded")); }
	@property final
	{
		bool bIsProceduralBuildingLODLevel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x1) != 0; }
		bool bIsProceduralBuildingLODLevel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x1; } return val; }
	}
}
