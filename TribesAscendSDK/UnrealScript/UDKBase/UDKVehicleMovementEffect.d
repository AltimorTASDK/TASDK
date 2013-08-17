module UnrealScript.UDKBase.UDKVehicleMovementEffect;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface UDKVehicleMovementEffect : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKVehicleMovementEffect")); }
	private static __gshared UDKVehicleMovementEffect mDefaultProperties;
	@property final static UDKVehicleMovementEffect DefaultProperties() { mixin(MGDPC("UDKVehicleMovementEffect", "UDKVehicleMovementEffect UDKBase.Default__UDKVehicleMovementEffect")); }
	@property final auto ref
	{
		float AirCurrentLevel() { mixin(MGPC("float", 500)); }
		float AirMaxDelta() { mixin(MGPC("float", 496)); }
		ScriptName AirEffectScalar() { mixin(MGPC("ScriptName", 488)); }
		float MaxVelocityForAirEffect() { mixin(MGPC("float", 484)); }
		float MinVelocityForAirEffect() { mixin(MGPC("float", 480)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'AirEffect'!
	}
}
