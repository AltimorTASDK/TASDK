module UnrealScript.Engine.AnimNodeRandom;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;

extern(C++) interface AnimNodeRandom : AnimNodeBlendList
{
	struct RandomAnimInfo
	{
		public @property final auto ref float LastPosition() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __LastPosition[4];
		public @property final auto ref ubyte LoopCount() { return *cast(ubyte*)(cast(size_t)&this + 24); }
		private ubyte __LoopCount[1];
		public @property final bool bStillFrame() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
		public @property final bool bStillFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		private ubyte __bStillFrame[4];
		public @property final auto ref UObject.Vector2D PlayRateRange() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 12); }
		private ubyte __PlayRateRange[8];
		public @property final auto ref float BlendInTime() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __BlendInTime[4];
		public @property final auto ref ubyte LoopCountMax() { return *cast(ubyte*)(cast(size_t)&this + 5); }
		private ubyte __LoopCountMax[1];
		public @property final auto ref ubyte LoopCountMin() { return *cast(ubyte*)(cast(size_t)&this + 4); }
		private ubyte __LoopCountMin[1];
		public @property final auto ref float Chance() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Chance[4];
	}
	public @property final auto ref ScriptArray!(AnimNodeRandom.RandomAnimInfo) RandomInfo() { return *cast(ScriptArray!(AnimNodeRandom.RandomAnimInfo)*)(cast(size_t)cast(void*)this + 276); }
	public @property final bool bPickedPendingChildIndex() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x1) != 0; }
	public @property final bool bPickedPendingChildIndex(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x1; } return val; }
	public @property final auto ref int PendingChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref AnimNodeSequence PlayingSeqNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 288); }
}
