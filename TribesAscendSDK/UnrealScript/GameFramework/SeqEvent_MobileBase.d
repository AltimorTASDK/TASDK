module UnrealScript.GameFramework.SeqEvent_MobileBase;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface SeqEvent_MobileBase : SequenceEvent
{
public extern(D):
final:
	void RegisterEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33020], cast(void*)0, cast(void*)0);
	}
	void AddToMobileInput(MobilePlayerInput MPI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = MPI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33024], params.ptr, cast(void*)0);
	}
}
