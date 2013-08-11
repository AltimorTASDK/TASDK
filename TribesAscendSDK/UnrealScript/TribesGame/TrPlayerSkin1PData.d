module UnrealScript.TribesGame.TrPlayerSkin1PData;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface TrPlayerSkin1PData : UObject
{
	public @property final auto ref SkeletalMesh m_FirstPersonBodyMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref SkeletalMesh m_FirstPersonHandsMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref int m_nClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int m_nSkinId() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
}
