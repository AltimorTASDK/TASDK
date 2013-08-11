module UnrealScript.UDKBase.UDKVehicleMovementEffect;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface UDKVehicleMovementEffect : Actor
{
public extern(D):
	@property final auto ref
	{
		float AirCurrentLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
		float AirMaxDelta() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
		ScriptName AirEffectScalar() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 488); }
		float MaxVelocityForAirEffect() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
		float MinVelocityForAirEffect() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
	}
}
