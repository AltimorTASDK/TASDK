module UnrealScript.Engine.SeqCond_IsInCombat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsInCombat : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqCond_IsInCombat")); }
	private static __gshared SeqCond_IsInCombat mDefaultProperties;
	@property final static SeqCond_IsInCombat DefaultProperties() { mixin(MGDPC("SeqCond_IsInCombat", "SeqCond_IsInCombat Engine.Default__SeqCond_IsInCombat")); }
}
