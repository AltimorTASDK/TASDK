module UnrealScript.TribesGame.TrPlayerSkin1PData;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface TrPlayerSkin1PData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerSkin1PData")); }
	private static __gshared TrPlayerSkin1PData mDefaultProperties;
	@property final static TrPlayerSkin1PData DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerSkin1PData)("TrPlayerSkin1PData TribesGame.Default__TrPlayerSkin1PData")); }
	@property final auto ref
	{
		SkeletalMesh m_FirstPersonBodyMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 68); }
		SkeletalMesh m_FirstPersonHandsMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 72); }
		int m_nClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		int m_nSkinId() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	}
}
