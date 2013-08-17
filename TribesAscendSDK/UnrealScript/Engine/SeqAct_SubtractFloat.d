module UnrealScript.Engine.SeqAct_SubtractFloat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SubtractFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SubtractFloat")()); }
	private static __gshared SeqAct_SubtractFloat mDefaultProperties;
	@property final static SeqAct_SubtractFloat DefaultProperties() { mixin(MGDPC!(SeqAct_SubtractFloat, "SeqAct_SubtractFloat Engine.Default__SeqAct_SubtractFloat")()); }
	@property final auto ref
	{
		int IntResult() { mixin(MGPC!(int, 244)()); }
		float FloatResult() { mixin(MGPC!(float, 240)()); }
		float ValueB() { mixin(MGPC!(float, 236)()); }
		float ValueA() { mixin(MGPC!(float, 232)()); }
	}
}
