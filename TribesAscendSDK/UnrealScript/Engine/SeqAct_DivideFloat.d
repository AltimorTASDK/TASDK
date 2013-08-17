module UnrealScript.Engine.SeqAct_DivideFloat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_DivideFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_DivideFloat")()); }
	private static __gshared SeqAct_DivideFloat mDefaultProperties;
	@property final static SeqAct_DivideFloat DefaultProperties() { mixin(MGDPC!(SeqAct_DivideFloat, "SeqAct_DivideFloat Engine.Default__SeqAct_DivideFloat")()); }
	@property final auto ref
	{
		int IntResult() { mixin(MGPC!("int", 244)()); }
		float FloatResult() { mixin(MGPC!("float", 240)()); }
		float ValueB() { mixin(MGPC!("float", 236)()); }
		float ValueA() { mixin(MGPC!("float", 232)()); }
	}
}
