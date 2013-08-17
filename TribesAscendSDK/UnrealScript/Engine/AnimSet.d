module UnrealScript.Engine.AnimSet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimSet : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimSet")); }
	private static __gshared AnimSet mDefaultProperties;
	@property final static AnimSet DefaultProperties() { mixin(MGDPC("AnimSet", "AnimSet Engine.Default__AnimSet")); }
	struct AnimSetMeshLinkup
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.AnimSet.AnimSetMeshLinkup")); }
		@property final auto ref ScriptArray!(int) BoneToTrackTable() { mixin(MGPS("ScriptArray!(int)", 0)); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) TrackBoneNames() { mixin(MGPC("ScriptArray!(ScriptName)", 64)); }
			ScriptArray!(AnimSequence) Sequences() { mixin(MGPC("ScriptArray!(AnimSequence)", 76)); }
			ScriptArray!(AnimSet.AnimSetMeshLinkup) LinkupCache() { mixin(MGPC("ScriptArray!(AnimSet.AnimSetMeshLinkup)", 148)); }
			ScriptArray!(ubyte) BoneUseAnimTranslation() { mixin(MGPC("ScriptArray!(ubyte)", 220)); }
			ScriptArray!(ubyte) ForceUseMeshTranslation() { mixin(MGPC("ScriptArray!(ubyte)", 232)); }
			ScriptArray!(ScriptName) UseTranslationBoneNames() { mixin(MGPC("ScriptArray!(ScriptName)", 244)); }
			ScriptArray!(ScriptName) ForceMeshTranslationBoneNames() { mixin(MGPC("ScriptArray!(ScriptName)", 256)); }
			ScriptName BestRatioSkelMeshName() { mixin(MGPC("ScriptName", 276)); }
			ScriptName PreviewSkelMeshName() { mixin(MGPC("ScriptName", 268)); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'SkelMesh2LinkupCache'!
			// ERROR: Unsupported object class 'MapProperty' for the property named 'SequenceCache'!
		}
		bool bAnimRotationOnly() { mixin(MGBPC(60, 0x1)); }
		bool bAnimRotationOnly(bool val) { mixin(MSBPC(60, 0x1)); }
	}
}
