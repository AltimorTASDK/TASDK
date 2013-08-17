module UnrealScript.Engine.SeqAct_MultiplyInt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_MultiplyInt : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_MultiplyInt")()); }
	private static __gshared SeqAct_MultiplyInt mDefaultProperties;
	@property final static SeqAct_MultiplyInt DefaultProperties() { mixin(MGDPC!(SeqAct_MultiplyInt, "SeqAct_MultiplyInt Engine.Default__SeqAct_MultiplyInt")()); }
	@property final auto ref
	{
		int IntResult() { mixin(MGPC!(int, 244)()); }
		float FloatResult() { mixin(MGPC!(float, 240)()); }
		int ValueB() { mixin(MGPC!(int, 236)()); }
		int ValueA() { mixin(MGPC!(int, 232)()); }
	}
}
