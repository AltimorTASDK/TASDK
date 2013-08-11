module UnrealScript.UTGame.UTSeqAct_EnterVehicle;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_EnterVehicle : SequenceAction
{
	public @property final auto ref int SeatIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49095], cast(void*)0, cast(void*)0);
	}
}
