module UnrealScript.UDKBase.UDKAnimNodeCopyBoneTranslation;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.UDKBase.UDKAnimNodeSeqWeap;
import UnrealScript.Engine.AnimNodeBlendBase;
import UnrealScript.UDKBase.UDKAnimBlendByWeapType;

extern(C++) interface UDKAnimNodeCopyBoneTranslation : AnimNodeBlendBase
{
public extern(D):
	struct BoneCopyInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final auto ref
		{
			int DstBoneIndex() { return *cast(int*)(cast(size_t)&this + 20); }
			int SrcBoneIndex() { return *cast(int*)(cast(size_t)&this + 16); }
			ScriptName DstBoneName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			ScriptName SrcBoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo) DefaultBoneCopyArray() { return *cast(ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo)*)(cast(size_t)cast(void*)this + 256); }
		ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo) DualWieldBoneCopyArray() { return *cast(ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo)*)(cast(size_t)cast(void*)this + 268); }
		ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo) ActiveBoneCopyArray() { return *cast(ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo)*)(cast(size_t)cast(void*)this + 280); }
		ScriptArray!(ubyte) RequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 292); }
		ScriptArray!(UDKAnimNodeSeqWeap) SeqWeaps() { return *cast(ScriptArray!(UDKAnimNodeSeqWeap)*)(cast(size_t)cast(void*)this + 304); }
		ScriptArray!(UDKAnimBlendByWeapType) WeapTypeBlends() { return *cast(ScriptArray!(UDKAnimBlendByWeapType)*)(cast(size_t)cast(void*)this + 316); }
		ScriptName OldAimProfileName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 248); }
		AnimNodeAimOffset CachedAimNode() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 244); }
	}
}
