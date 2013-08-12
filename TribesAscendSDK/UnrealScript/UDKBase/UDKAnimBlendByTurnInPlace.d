module UnrealScript.UDKBase.UDKAnimBlendByTurnInPlace;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendBase;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UDKAnimBlendByTurnInPlace : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimBlendByTurnInPlace")); }
	@property final auto ref
	{
		UDKPawn OwnerUTP() { return *cast(UDKPawn*)(cast(size_t)cast(void*)this + 304); }
		float TurnInPlaceBlendSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
		float RootYawSpeedThresh() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	}
}
