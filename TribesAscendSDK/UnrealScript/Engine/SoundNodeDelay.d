module UnrealScript.Engine.SoundNodeDelay;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeDelay : SoundNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeDelay")()); }
	private static __gshared SoundNodeDelay mDefaultProperties;
	@property final static SoundNodeDelay DefaultProperties() { mixin(MGDPC!(SoundNodeDelay, "SoundNodeDelay Engine.Default__SoundNodeDelay")()); }
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat DelayDuration() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 84)()); }
		float DelayMax() { mixin(MGPC!("float", 80)()); }
		float DelayMin() { mixin(MGPC!("float", 76)()); }
	}
}
