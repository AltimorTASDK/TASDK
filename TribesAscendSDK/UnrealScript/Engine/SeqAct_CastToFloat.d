module UnrealScript.Engine.SeqAct_CastToFloat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_CastToFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_CastToFloat")()); }
	private static __gshared SeqAct_CastToFloat mDefaultProperties;
	@property final static SeqAct_CastToFloat DefaultProperties() { mixin(MGDPC!(SeqAct_CastToFloat, "SeqAct_CastToFloat Engine.Default__SeqAct_CastToFloat")()); }
	@property final auto ref
	{
		float FloatResult() { mixin(MGPC!(float, 236)()); }
		int Value() { mixin(MGPC!(int, 232)()); }
	}
}
