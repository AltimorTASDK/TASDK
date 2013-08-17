module UnrealScript.UDKBase.UDKAnimBlendByHoverJump;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.UDKBase.UDKAnimBlendByFall;

extern(C++) interface UDKAnimBlendByHoverJump : UDKAnimBlendByFall
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UDKBase.UDKAnimBlendByHoverJump")); }
	private static __gshared UDKAnimBlendByHoverJump mDefaultProperties;
	@property final static UDKAnimBlendByHoverJump DefaultProperties() { mixin(MGDPC("UDKAnimBlendByHoverJump", "UDKAnimBlendByHoverJump UDKBase.Default__UDKAnimBlendByHoverJump")); }
	@property final auto ref
	{
		UDKVehicle OwnerHV() { mixin(MGPC("UDKVehicle", 328)); }
		Pawn OwnerP() { mixin(MGPC("Pawn", 324)); }
	}
}
