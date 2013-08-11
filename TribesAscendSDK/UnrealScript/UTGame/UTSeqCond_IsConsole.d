module UnrealScript.UTGame.UTSeqCond_IsConsole;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_IsConsole : SequenceCondition
{
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49197], cast(void*)0, cast(void*)0);
	}
}
