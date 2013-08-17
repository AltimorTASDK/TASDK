module UnrealScript.UDKBase.UDKAnimNodeCopyBoneTranslation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.UDKBase.UDKAnimNodeSeqWeap;
import UnrealScript.Engine.AnimNodeBlendBase;
import UnrealScript.UDKBase.UDKAnimBlendByWeapType;

extern(C++) interface UDKAnimNodeCopyBoneTranslation : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKAnimNodeCopyBoneTranslation")); }
	private static __gshared UDKAnimNodeCopyBoneTranslation mDefaultProperties;
	@property final static UDKAnimNodeCopyBoneTranslation DefaultProperties() { mixin(MGDPC("UDKAnimNodeCopyBoneTranslation", "UDKAnimNodeCopyBoneTranslation UDKBase.Default__UDKAnimNodeCopyBoneTranslation")); }
	struct BoneCopyInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UDKBase.UDKAnimNodeCopyBoneTranslation.BoneCopyInfo")); }
		@property final auto ref
		{
			int DstBoneIndex() { mixin(MGPS("int", 20)); }
			int SrcBoneIndex() { mixin(MGPS("int", 16)); }
			ScriptName DstBoneName() { mixin(MGPS("ScriptName", 8)); }
			ScriptName SrcBoneName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo) DefaultBoneCopyArray() { mixin(MGPC("ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo)", 256)); }
		ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo) DualWieldBoneCopyArray() { mixin(MGPC("ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo)", 268)); }
		ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo) ActiveBoneCopyArray() { mixin(MGPC("ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo)", 280)); }
		ScriptArray!(ubyte) RequiredBones() { mixin(MGPC("ScriptArray!(ubyte)", 292)); }
		ScriptArray!(UDKAnimNodeSeqWeap) SeqWeaps() { mixin(MGPC("ScriptArray!(UDKAnimNodeSeqWeap)", 304)); }
		ScriptArray!(UDKAnimBlendByWeapType) WeapTypeBlends() { mixin(MGPC("ScriptArray!(UDKAnimBlendByWeapType)", 316)); }
		ScriptName OldAimProfileName() { mixin(MGPC("ScriptName", 248)); }
		AnimNodeAimOffset CachedAimNode() { mixin(MGPC("AnimNodeAimOffset", 244)); }
	}
}
