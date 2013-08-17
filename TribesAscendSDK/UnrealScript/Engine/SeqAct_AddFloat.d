module UnrealScript.Engine.SeqAct_AddFloat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_AddFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_AddFloat")()); }
	private static __gshared SeqAct_AddFloat mDefaultProperties;
	@property final static SeqAct_AddFloat DefaultProperties() { mixin(MGDPC!(SeqAct_AddFloat, "SeqAct_AddFloat Engine.Default__SeqAct_AddFloat")()); }
	@property final auto ref
	{
		int IntResult() { mixin(MGPC!(int, 244)()); }
		float FloatResult() { mixin(MGPC!(float, 240)()); }
		float ValueB() { mixin(MGPC!(float, 236)()); }
		float ValueA() { mixin(MGPC!(float, 232)()); }
	}
}
