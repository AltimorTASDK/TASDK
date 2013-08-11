module UnrealScript.TribesGame.TrPlayerSkin1PData;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface TrPlayerSkin1PData : UObject
{
public extern(D):
	@property final auto ref
	{
		SkeletalMesh m_FirstPersonBodyMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 68); }
		SkeletalMesh m_FirstPersonHandsMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 72); }
		int m_nClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		int m_nSkinId() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	}
}
