module UnrealScript.Engine.Level;

import UnrealScript.Engine.LevelBase;

extern(C++) interface Level : LevelBase
{
	public @property final auto ref float LightmapTotalSize() { return *cast(float*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref float ShadowmapTotalSize() { return *cast(float*)(cast(size_t)cast(void*)this + 364); }
}
