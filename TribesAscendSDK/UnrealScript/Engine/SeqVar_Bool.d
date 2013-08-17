module UnrealScript.Engine.SeqVar_Bool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Bool : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqVar_Bool")); }
	private static __gshared SeqVar_Bool mDefaultProperties;
	@property final static SeqVar_Bool DefaultProperties() { mixin(MGDPC("SeqVar_Bool", "SeqVar_Bool Engine.Default__SeqVar_Bool")); }
	@property final auto ref int bValue() { mixin(MGPC("int", 148)); }
}
