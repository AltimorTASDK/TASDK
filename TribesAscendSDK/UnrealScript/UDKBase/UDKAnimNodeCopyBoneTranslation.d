module UnrealScript.UDKBase.UDKAnimNodeCopyBoneTranslation;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.UDKBase.UDKAnimNodeSeqWeap;
import UnrealScript.Engine.AnimNodeBlendBase;
import UnrealScript.UDKBase.UDKAnimBlendByWeapType;

extern(C++) interface UDKAnimNodeCopyBoneTranslation : AnimNodeBlendBase
{
	struct BoneCopyInfo
	{
		public @property final auto ref int DstBoneIndex() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __DstBoneIndex[4];
		public @property final auto ref int SrcBoneIndex() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __SrcBoneIndex[4];
		public @property final auto ref ScriptName DstBoneName() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __DstBoneName[8];
		public @property final auto ref ScriptName SrcBoneName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __SrcBoneName[8];
	}
	public @property final auto ref ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo) DefaultBoneCopyArray() { return *cast(ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo)*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo) DualWieldBoneCopyArray() { return *cast(ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo)*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo) ActiveBoneCopyArray() { return *cast(ScriptArray!(UDKAnimNodeCopyBoneTranslation.BoneCopyInfo)*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref ScriptArray!(ubyte) RequiredBones() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref ScriptArray!(UDKAnimNodeSeqWeap) SeqWeaps() { return *cast(ScriptArray!(UDKAnimNodeSeqWeap)*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref ScriptArray!(UDKAnimBlendByWeapType) WeapTypeBlends() { return *cast(ScriptArray!(UDKAnimBlendByWeapType)*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref ScriptName OldAimProfileName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref AnimNodeAimOffset CachedAimNode() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 244); }
}
