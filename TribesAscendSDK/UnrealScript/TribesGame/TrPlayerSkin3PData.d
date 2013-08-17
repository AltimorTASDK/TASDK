module UnrealScript.TribesGame.TrPlayerSkin3PData;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface TrPlayerSkin3PData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPlayerSkin3PData")); }
	private static __gshared TrPlayerSkin3PData mDefaultProperties;
	@property final static TrPlayerSkin3PData DefaultProperties() { mixin(MGDPC("TrPlayerSkin3PData", "TrPlayerSkin3PData TribesGame.Default__TrPlayerSkin3PData")); }
	@property final auto ref
	{
		int m_nSkinId() { mixin(MGPC("int", 60)); }
		SkeletalMesh m_SkeletalMesh3p() { mixin(MGPC("SkeletalMesh", 68)); }
		SkeletalMesh m_GibMesh() { mixin(MGPC("SkeletalMesh", 72)); }
		int m_nClassId() { mixin(MGPC("int", 64)); }
	}
}
