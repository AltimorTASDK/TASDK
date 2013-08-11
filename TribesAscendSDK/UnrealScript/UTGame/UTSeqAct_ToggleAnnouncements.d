module UnrealScript.UTGame.UTSeqAct_ToggleAnnouncements;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ToggleAnnouncements : SequenceAction
{
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49158], cast(void*)0, cast(void*)0);
	}
}
