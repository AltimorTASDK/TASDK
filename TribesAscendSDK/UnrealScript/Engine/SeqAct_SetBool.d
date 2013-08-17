module UnrealScript.Engine.SeqAct_SetBool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetBool : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetBool")()); }
	private static __gshared SeqAct_SetBool mDefaultProperties;
	@property final static SeqAct_SetBool DefaultProperties() { mixin(MGDPC!(SeqAct_SetBool, "SeqAct_SetBool Engine.Default__SeqAct_SetBool")()); }
	@property final
	{
		bool DefaultValue() { mixin(MGBPC!(232, 0x1)()); }
		bool DefaultValue(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
}
