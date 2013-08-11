module UnrealScript.Engine.Level;

import UnrealScript.Engine.LevelBase;

extern(C++) interface Level : LevelBase
{
public extern(D):
	@property final auto ref
	{
		float LightmapTotalSize() { return *cast(float*)(cast(size_t)cast(void*)this + 360); }
		float ShadowmapTotalSize() { return *cast(float*)(cast(size_t)cast(void*)this + 364); }
	}
}
