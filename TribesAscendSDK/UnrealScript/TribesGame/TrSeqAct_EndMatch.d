module UnrealScript.TribesGame.TrSeqAct_EndMatch;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_EndMatch : SequenceAction
{
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110913], cast(void*)0, cast(void*)0);
	}
}
