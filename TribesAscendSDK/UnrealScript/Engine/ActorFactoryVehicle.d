module UnrealScript.Engine.ActorFactoryVehicle;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryVehicle : ActorFactory
{
	public @property final auto ref ScriptClass VehicleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
}
