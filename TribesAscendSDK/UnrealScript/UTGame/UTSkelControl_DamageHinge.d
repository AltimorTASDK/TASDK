module UnrealScript.UTGame.UTSkelControl_DamageHinge;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_DamageHinge;

extern(C++) interface UTSkelControl_DamageHinge : UDKSkelControl_DamageHinge
{
public extern(D):
final:
	void BreakApart(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49321], params.ptr, cast(void*)0);
	}
	void BreakApartOnDeath(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49325], params.ptr, cast(void*)0);
	}
}
