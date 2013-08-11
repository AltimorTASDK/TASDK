module UnrealScript.UDKBase.UDKVehicleMovementEffect;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface UDKVehicleMovementEffect : Actor
{
	public @property final auto ref float AirCurrentLevel() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float AirMaxDelta() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref ScriptName AirEffectScalar() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float MaxVelocityForAirEffect() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref float MinVelocityForAirEffect() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
}
