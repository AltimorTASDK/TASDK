module UnrealScript.Engine.SeqVar_Int;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Int : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqVar_Int")()); }
	private static __gshared SeqVar_Int mDefaultProperties;
	@property final static SeqVar_Int DefaultProperties() { mixin(MGDPC!(SeqVar_Int, "SeqVar_Int Engine.Default__SeqVar_Int")()); }
	@property final auto ref int IntValue() { mixin(MGPC!("int", 148)()); }
}
