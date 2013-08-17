module UnrealScript.TribesGame.TrDeviceContentData;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.AnimTree;

extern(C++) interface TrDeviceContentData : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeviceContentData")); }
	private static __gshared TrDeviceContentData mDefaultProperties;
	@property final static TrDeviceContentData DefaultProperties() { mixin(MGDPC("TrDeviceContentData", "TrDeviceContentData TribesGame.Default__TrDeviceContentData")); }
	@property final auto ref
	{
		ScriptClass m_TrDeviceClass() { mixin(MGPC("ScriptClass", 88)); }
		ScriptArray!(AnimSet) m_AnimSets1p() { mixin(MGPC("ScriptArray!(AnimSet)", 68)); }
		AnimSet m_PaperDollAnimSet() { mixin(MGPC("AnimSet", 84)); }
		AnimTree m_AnimTreeTemplate1p() { mixin(MGPC("AnimTree", 80)); }
		PhysicsAsset m_PhysicsAsset1p() { mixin(MGPC("PhysicsAsset", 64)); }
		SkeletalMesh m_SkeletalMesh1p() { mixin(MGPC("SkeletalMesh", 60)); }
	}
}
