module UnrealScript.Engine.InterpTrackAnimControl;

import ScriptClasses;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackAnimControl : InterpTrackFloatBase
{
	struct AnimControlTrackKey
	{
		public @property final bool bReverse() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
		public @property final bool bReverse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
		private ubyte __bReverse[4];
		public @property final bool bLooping() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bLooping[4];
		public @property final auto ref float AnimPlayRate() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __AnimPlayRate[4];
		public @property final auto ref float AnimEndOffset() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __AnimEndOffset[4];
		public @property final auto ref float AnimStartOffset() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __AnimStartOffset[4];
		public @property final auto ref ScriptName AnimSeqName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __AnimSeqName[8];
		public @property final auto ref float StartTime() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __StartTime[4];
	}
	public @property final auto ref ScriptArray!(AnimSet) AnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ScriptArray!(InterpTrackAnimControl.AnimControlTrackKey) AnimSeqs() { return *cast(ScriptArray!(InterpTrackAnimControl.AnimControlTrackKey)*)(cast(size_t)cast(void*)this + 168); }
	public @property final bool bEnableRootMotion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 180) & 0x1) != 0; }
	public @property final bool bEnableRootMotion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 180) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 180) &= ~0x1; } return val; }
	public @property final auto ref ScriptName SlotName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 160); }
}
