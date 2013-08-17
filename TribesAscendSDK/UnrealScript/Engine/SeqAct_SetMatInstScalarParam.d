module UnrealScript.Engine.SeqAct_SetMatInstScalarParam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetMatInstScalarParam : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetMatInstScalarParam")()); }
	private static __gshared SeqAct_SetMatInstScalarParam mDefaultProperties;
	@property final static SeqAct_SetMatInstScalarParam DefaultProperties() { mixin(MGDPC!(SeqAct_SetMatInstScalarParam, "SeqAct_SetMatInstScalarParam Engine.Default__SeqAct_SetMatInstScalarParam")()); }
	@property final auto ref
	{
		float ScalarValue() { mixin(MGPC!(float, 244)()); }
		ScriptName ParamName() { mixin(MGPC!(ScriptName, 236)()); }
		MaterialInstanceConstant MatInst() { mixin(MGPC!(MaterialInstanceConstant, 232)()); }
	}
}
