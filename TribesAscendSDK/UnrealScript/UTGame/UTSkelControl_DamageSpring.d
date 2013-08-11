module UnrealScript.UTGame.UTSkelControl_DamageSpring;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_DamageSpring;

extern(C++) interface UTSkelControl_DamageSpring : UDKSkelControl_DamageSpring
{
	final void BreakApart(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49331], params.ptr, cast(void*)0);
	}
	final void BreakApartOnDeath(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49335], params.ptr, cast(void*)0);
	}
}
