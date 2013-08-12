module UnrealScript.UDKBase.UDKAnimBlendByHoverJump;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.UDKBase.UDKAnimBlendByFall;

extern(C++) interface UDKAnimBlendByHoverJump : UDKAnimBlendByFall
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendByHoverJump")); }
	private static __gshared UDKAnimBlendByHoverJump mDefaultProperties;
	@property final static UDKAnimBlendByHoverJump DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKAnimBlendByHoverJump)("UDKAnimBlendByHoverJump UDKBase.Default__UDKAnimBlendByHoverJump")); }
	@property final auto ref
	{
		UDKVehicle OwnerHV() { return *cast(UDKVehicle*)(cast(size_t)cast(void*)this + 328); }
		Pawn OwnerP() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 324); }
	}
}
