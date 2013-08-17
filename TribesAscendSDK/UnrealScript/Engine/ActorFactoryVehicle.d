module UnrealScript.Engine.ActorFactoryVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryVehicle : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryVehicle")); }
	private static __gshared ActorFactoryVehicle mDefaultProperties;
	@property final static ActorFactoryVehicle DefaultProperties() { mixin(MGDPC("ActorFactoryVehicle", "ActorFactoryVehicle Engine.Default__ActorFactoryVehicle")); }
	@property final auto ref ScriptClass VehicleClass() { mixin(MGPC("ScriptClass", 92)); }
}
