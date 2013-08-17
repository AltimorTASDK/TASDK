module UnrealScript.Engine.SeqAct_AddInt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_AddInt : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_AddInt")()); }
	private static __gshared SeqAct_AddInt mDefaultProperties;
	@property final static SeqAct_AddInt DefaultProperties() { mixin(MGDPC!(SeqAct_AddInt, "SeqAct_AddInt Engine.Default__SeqAct_AddInt")()); }
	@property final auto ref
	{
		int IntResult() { mixin(MGPC!(int, 244)()); }
		float FloatResult() { mixin(MGPC!(float, 240)()); }
		int ValueB() { mixin(MGPC!(int, 236)()); }
		int ValueA() { mixin(MGPC!(int, 232)()); }
	}
}
