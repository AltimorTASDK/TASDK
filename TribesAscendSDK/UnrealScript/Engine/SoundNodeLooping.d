module UnrealScript.Engine.SoundNodeLooping;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeLooping : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeLooping")()); }
	private static __gshared SoundNodeLooping mDefaultProperties;
	@property final static SoundNodeLooping DefaultProperties() { mixin(MGDPC!(SoundNodeLooping, "SoundNodeLooping Engine.Default__SoundNodeLooping")()); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat LoopCount() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 88)()); }
			float LoopCountMax() { mixin(MGPC!("float", 84)()); }
			float LoopCountMin() { mixin(MGPC!("float", 80)()); }
		}
		bool bLoopIndefinitely() { mixin(MGBPC!(76, 0x1)()); }
		bool bLoopIndefinitely(bool val) { mixin(MSBPC!(76, 0x1)()); }
	}
}
