module UnrealScript.Engine.AnimNodeRandom;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendList;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;

extern(C++) interface AnimNodeRandom : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeRandom")()); }
	private static __gshared AnimNodeRandom mDefaultProperties;
	@property final static AnimNodeRandom DefaultProperties() { mixin(MGDPC!(AnimNodeRandom, "AnimNodeRandom Engine.Default__AnimNodeRandom")()); }
	struct RandomAnimInfo
	{
		private ubyte __buffer__[32];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.AnimNodeRandom.RandomAnimInfo")()); }
		@property final
		{
			auto ref
			{
				float LastPosition() { mixin(MGPS!("float", 28)()); }
				ubyte LoopCount() { mixin(MGPS!("ubyte", 24)()); }
				UObject.Vector2D PlayRateRange() { mixin(MGPS!("UObject.Vector2D", 12)()); }
				float BlendInTime() { mixin(MGPS!("float", 8)()); }
				ubyte LoopCountMax() { mixin(MGPS!("ubyte", 5)()); }
				ubyte LoopCountMin() { mixin(MGPS!("ubyte", 4)()); }
				float Chance() { mixin(MGPS!("float", 0)()); }
			}
			bool bStillFrame() { mixin(MGBPS!(20, 0x1)()); }
			bool bStillFrame(bool val) { mixin(MSBPS!(20, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimNodeRandom.RandomAnimInfo) RandomInfo() { mixin(MGPC!("ScriptArray!(AnimNodeRandom.RandomAnimInfo)", 276)()); }
			int PendingChildIndex() { mixin(MGPC!("int", 292)()); }
			AnimNodeSequence PlayingSeqNode() { mixin(MGPC!("AnimNodeSequence", 288)()); }
		}
		bool bPickedPendingChildIndex() { mixin(MGBPC!(296, 0x1)()); }
		bool bPickedPendingChildIndex(bool val) { mixin(MSBPC!(296, 0x1)()); }
	}
}
