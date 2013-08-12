module UnrealScript.Engine.SeqAct_SetSequenceVariable;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetSequenceVariable : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetSequenceVariable")); }
	private static __gshared SeqAct_SetSequenceVariable mDefaultProperties;
	@property final static SeqAct_SetSequenceVariable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_SetSequenceVariable)("SeqAct_SetSequenceVariable Engine.Default__SeqAct_SetSequenceVariable")); }
}
