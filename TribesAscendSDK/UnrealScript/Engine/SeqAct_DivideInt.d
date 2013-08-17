module UnrealScript.Engine.SeqAct_DivideInt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_DivideInt : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_DivideInt")()); }
	private static __gshared SeqAct_DivideInt mDefaultProperties;
	@property final static SeqAct_DivideInt DefaultProperties() { mixin(MGDPC!(SeqAct_DivideInt, "SeqAct_DivideInt Engine.Default__SeqAct_DivideInt")()); }
	@property final auto ref
	{
		int IntResult() { mixin(MGPC!(int, 244)()); }
		float FloatResult() { mixin(MGPC!(float, 240)()); }
		int ValueB() { mixin(MGPC!(int, 236)()); }
		int ValueA() { mixin(MGPC!(int, 232)()); }
	}
}
