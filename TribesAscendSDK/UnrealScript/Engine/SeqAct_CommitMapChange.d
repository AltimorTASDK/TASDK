module UnrealScript.Engine.SeqAct_CommitMapChange;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_CommitMapChange : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_CommitMapChange")); }
	private static __gshared SeqAct_CommitMapChange mDefaultProperties;
	@property final static SeqAct_CommitMapChange DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_CommitMapChange)("SeqAct_CommitMapChange Engine.Default__SeqAct_CommitMapChange")); }
}
