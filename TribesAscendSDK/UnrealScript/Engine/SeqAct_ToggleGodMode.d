module UnrealScript.Engine.SeqAct_ToggleGodMode;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ToggleGodMode : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ToggleGodMode")); }
}
