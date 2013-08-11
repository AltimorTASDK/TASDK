module UnrealScript.UTGame.UTSeqCond_DoTutorial;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface UTSeqCond_DoTutorial : SequenceCondition
{
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49173], cast(void*)0, cast(void*)0);
	}
}
