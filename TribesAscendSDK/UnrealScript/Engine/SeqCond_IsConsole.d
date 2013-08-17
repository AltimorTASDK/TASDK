module UnrealScript.Engine.SeqCond_IsConsole;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsConsole : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqCond_IsConsole")); }
	private static __gshared SeqCond_IsConsole mDefaultProperties;
	@property final static SeqCond_IsConsole DefaultProperties() { mixin(MGDPC("SeqCond_IsConsole", "SeqCond_IsConsole Engine.Default__SeqCond_IsConsole")); }
}
