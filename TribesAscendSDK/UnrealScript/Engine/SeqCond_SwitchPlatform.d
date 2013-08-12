module UnrealScript.Engine.SeqCond_SwitchPlatform;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_SwitchPlatform : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_SwitchPlatform")); }
	private static __gshared SeqCond_SwitchPlatform mDefaultProperties;
	@property final static SeqCond_SwitchPlatform DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqCond_SwitchPlatform)("SeqCond_SwitchPlatform Engine.Default__SeqCond_SwitchPlatform")); }
}
