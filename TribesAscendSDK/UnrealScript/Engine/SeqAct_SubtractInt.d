module UnrealScript.Engine.SeqAct_SubtractInt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SubtractInt : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_SubtractInt")); }
	private static __gshared SeqAct_SubtractInt mDefaultProperties;
	@property final static SeqAct_SubtractInt DefaultProperties() { mixin(MGDPC("SeqAct_SubtractInt", "SeqAct_SubtractInt Engine.Default__SeqAct_SubtractInt")); }
	@property final auto ref
	{
		int IntResult() { mixin(MGPC("int", 244)); }
		float FloatResult() { mixin(MGPC("float", 240)); }
		int ValueB() { mixin(MGPC("int", 236)); }
		int ValueA() { mixin(MGPC("int", 232)); }
	}
}
