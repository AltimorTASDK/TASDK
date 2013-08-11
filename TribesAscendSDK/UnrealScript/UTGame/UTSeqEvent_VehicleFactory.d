module UnrealScript.UTGame.UTSeqEvent_VehicleFactory;

import ScriptClasses;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface UTSeqEvent_VehicleFactory : SequenceEvent
{
public extern(D):
	@property final auto ref UTVehicle SpawnedVehicle() { return *cast(UTVehicle*)(cast(size_t)cast(void*)this + 256); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49230], cast(void*)0, cast(void*)0);
	}
}
