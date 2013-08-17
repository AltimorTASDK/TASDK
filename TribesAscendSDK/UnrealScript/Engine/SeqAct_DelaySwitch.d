module UnrealScript.Engine.SeqAct_DelaySwitch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_DelaySwitch : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_DelaySwitch")()); }
	private static __gshared SeqAct_DelaySwitch mDefaultProperties;
	@property final static SeqAct_DelaySwitch DefaultProperties() { mixin(MGDPC!(SeqAct_DelaySwitch, "SeqAct_DelaySwitch Engine.Default__SeqAct_DelaySwitch")()); }
	@property final auto ref
	{
		float NextLinkTime() { mixin(MGPC!("float", 260)()); }
		float SwitchDelay() { mixin(MGPC!("float", 256)()); }
		int CurrentIdx() { mixin(MGPC!("int", 252)()); }
		int LinkCount() { mixin(MGPC!("int", 248)()); }
	}
}
