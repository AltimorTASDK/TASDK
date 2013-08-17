module UnrealScript.UDKBase.UDKAnimBlendByTurnInPlace;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendBase;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UDKAnimBlendByTurnInPlace : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKAnimBlendByTurnInPlace")); }
	private static __gshared UDKAnimBlendByTurnInPlace mDefaultProperties;
	@property final static UDKAnimBlendByTurnInPlace DefaultProperties() { mixin(MGDPC("UDKAnimBlendByTurnInPlace", "UDKAnimBlendByTurnInPlace UDKBase.Default__UDKAnimBlendByTurnInPlace")); }
	@property final auto ref
	{
		UDKPawn OwnerUTP() { mixin(MGPC("UDKPawn", 304)); }
		float TurnInPlaceBlendSpeed() { mixin(MGPC("float", 300)); }
		float RootYawSpeedThresh() { mixin(MGPC("float", 296)); }
	}
}
