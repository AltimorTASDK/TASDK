module UnrealScript.Engine.TargetPoint;

import UnrealScript.Engine.Keypoint;
import UnrealScript.Engine.Texture2D;

extern(C++) interface TargetPoint : Keypoint
{
	public @property final auto ref int SpawnRefCount() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref Texture2D SpawnSpriteTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 480); }
}
