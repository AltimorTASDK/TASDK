module UnrealScript.Engine.SeqCond_MatureLanguage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_MatureLanguage : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqCond_MatureLanguage")); }
	private static __gshared SeqCond_MatureLanguage mDefaultProperties;
	@property final static SeqCond_MatureLanguage DefaultProperties() { mixin(MGDPC("SeqCond_MatureLanguage", "SeqCond_MatureLanguage Engine.Default__SeqCond_MatureLanguage")); }
}
