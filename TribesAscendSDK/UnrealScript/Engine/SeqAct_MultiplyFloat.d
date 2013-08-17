module UnrealScript.Engine.SeqAct_MultiplyFloat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_MultiplyFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_MultiplyFloat")); }
	private static __gshared SeqAct_MultiplyFloat mDefaultProperties;
	@property final static SeqAct_MultiplyFloat DefaultProperties() { mixin(MGDPC("SeqAct_MultiplyFloat", "SeqAct_MultiplyFloat Engine.Default__SeqAct_MultiplyFloat")); }
	@property final auto ref
	{
		int IntResult() { mixin(MGPC("int", 244)); }
		float FloatResult() { mixin(MGPC("float", 240)); }
		float ValueB() { mixin(MGPC("float", 236)); }
		float ValueA() { mixin(MGPC("float", 232)); }
	}
}
