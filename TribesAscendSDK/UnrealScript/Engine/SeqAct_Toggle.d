module UnrealScript.Engine.SeqAct_Toggle;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Toggle : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_Toggle")); }
	private static __gshared SeqAct_Toggle mDefaultProperties;
	@property final static SeqAct_Toggle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_Toggle)("SeqAct_Toggle Engine.Default__SeqAct_Toggle")); }
}
