module UnrealScript.Engine.SeqAct_RangeSwitch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_RangeSwitch : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_RangeSwitch")()); }
	private static __gshared SeqAct_RangeSwitch mDefaultProperties;
	@property final static SeqAct_RangeSwitch DefaultProperties() { mixin(MGDPC!(SeqAct_RangeSwitch, "SeqAct_RangeSwitch Engine.Default__SeqAct_RangeSwitch")()); }
	struct SwitchRange
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SeqAct_RangeSwitch.SwitchRange")()); }
		@property final auto ref
		{
			int Max() { mixin(MGPS!("int", 4)()); }
			int Min() { mixin(MGPS!("int", 0)()); }
		}
	}
	@property final auto ref ScriptArray!(SeqAct_RangeSwitch.SwitchRange) Ranges() { mixin(MGPC!("ScriptArray!(SeqAct_RangeSwitch.SwitchRange)", 232)()); }
}
