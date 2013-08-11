module UnrealScript.TribesGame.TrPlayerSkin3PData;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface TrPlayerSkin3PData : UObject
{
public extern(D):
	@property final auto ref
	{
		int m_nSkinId() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		SkeletalMesh m_SkeletalMesh3p() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 68); }
		SkeletalMesh m_GibMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 72); }
		int m_nClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	}
}
