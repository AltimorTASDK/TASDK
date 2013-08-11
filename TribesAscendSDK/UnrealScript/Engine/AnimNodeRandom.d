module UnrealScript.Engine.AnimNodeRandom;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;

extern(C++) interface AnimNodeRandom : AnimNodeBlendList
{
public extern(D):
	struct RandomAnimInfo
	{
		private ubyte __buffer__[32];
	public extern(D):
		@property final
		{
			auto ref
			{
				float LastPosition() { return *cast(float*)(cast(size_t)&this + 28); }
				ubyte LoopCount() { return *cast(ubyte*)(cast(size_t)&this + 24); }
				UObject.Vector2D PlayRateRange() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 12); }
				float BlendInTime() { return *cast(float*)(cast(size_t)&this + 8); }
				ubyte LoopCountMax() { return *cast(ubyte*)(cast(size_t)&this + 5); }
				ubyte LoopCountMin() { return *cast(ubyte*)(cast(size_t)&this + 4); }
				float Chance() { return *cast(float*)(cast(size_t)&this + 0); }
			}
			bool bStillFrame() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
			bool bStillFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimNodeRandom.RandomAnimInfo) RandomInfo() { return *cast(ScriptArray!(AnimNodeRandom.RandomAnimInfo)*)(cast(size_t)cast(void*)this + 276); }
			int PendingChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 292); }
			AnimNodeSequence PlayingSeqNode() { return *cast(AnimNodeSequence*)(cast(size_t)cast(void*)this + 288); }
		}
		bool bPickedPendingChildIndex() { return (*cast(uint*)(cast(size_t)cast(void*)this + 296) & 0x1) != 0; }
		bool bPickedPendingChildIndex(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 296) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 296) &= ~0x1; } return val; }
	}
}
