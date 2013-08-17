module UnrealScript.TribesGame.TrPlayerSkin1PData;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface TrPlayerSkin1PData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrPlayerSkin1PData")()); }
	private static __gshared TrPlayerSkin1PData mDefaultProperties;
	@property final static TrPlayerSkin1PData DefaultProperties() { mixin(MGDPC!(TrPlayerSkin1PData, "TrPlayerSkin1PData TribesGame.Default__TrPlayerSkin1PData")()); }
	@property final auto ref
	{
		SkeletalMesh m_FirstPersonBodyMesh() { mixin(MGPC!("SkeletalMesh", 68)()); }
		SkeletalMesh m_FirstPersonHandsMesh() { mixin(MGPC!("SkeletalMesh", 72)()); }
		int m_nClassId() { mixin(MGPC!("int", 64)()); }
		int m_nSkinId() { mixin(MGPC!("int", 60)()); }
	}
}
