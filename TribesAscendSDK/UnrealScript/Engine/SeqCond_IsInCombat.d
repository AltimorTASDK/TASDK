module UnrealScript.Engine.SeqCond_IsInCombat;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsInCombat : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_IsInCombat")); }
	private static __gshared SeqCond_IsInCombat mDefaultProperties;
	@property final static SeqCond_IsInCombat DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqCond_IsInCombat)("SeqCond_IsInCombat Engine.Default__SeqCond_IsInCombat")); }
}
