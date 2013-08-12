module UnrealScript.Engine.ActorFactoryVehicle;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryVehicle : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryVehicle")); }
	@property final auto ref ScriptClass VehicleClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
}
