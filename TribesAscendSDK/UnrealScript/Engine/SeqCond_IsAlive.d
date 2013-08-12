module UnrealScript.Engine.SeqCond_IsAlive;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsAlive : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_IsAlive")); }
	private static __gshared SeqCond_IsAlive mDefaultProperties;
	@property final static SeqCond_IsAlive DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqCond_IsAlive)("SeqCond_IsAlive Engine.Default__SeqCond_IsAlive")); }
}
