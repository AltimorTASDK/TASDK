module UnrealScript.Engine.SeqCond_MatureLanguage;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_MatureLanguage : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_MatureLanguage")); }
	private static __gshared SeqCond_MatureLanguage mDefaultProperties;
	@property final static SeqCond_MatureLanguage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqCond_MatureLanguage)("SeqCond_MatureLanguage Engine.Default__SeqCond_MatureLanguage")); }
}
