module UnrealScript.Engine.AnimNodeSequenceBlendBase;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimNodeSequenceBlendBase : AnimNodeSequence
{
	struct AnimBlendInfo
	{
		public @property final auto ref float Weight() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __Weight[4];
		// WARNING: Property 'AnimInfo' has the same name as a defined type!
		public @property final auto ref ScriptName AnimName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __AnimName[8];
	}
	struct AnimInfo
	{
		public @property final auto ref int AnimLinkupIndex() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __AnimLinkupIndex[4];
		public @property final auto ref AnimSequence AnimSeq() { return *cast(AnimSequence*)(cast(size_t)&this + 8); }
		private ubyte __AnimSeq[4];
		public @property final auto ref ScriptName AnimSeqName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __AnimSeqName[8];
	}
	public @property final auto ref ScriptArray!(AnimNodeSequenceBlendBase.AnimBlendInfo) Anims() { return *cast(ScriptArray!(AnimNodeSequenceBlendBase.AnimBlendInfo)*)(cast(size_t)cast(void*)this + 320); }
}
