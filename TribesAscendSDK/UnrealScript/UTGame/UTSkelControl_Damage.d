module UnrealScript.UTGame.UTSkelControl_Damage;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_Damage;

extern(C++) interface UTSkelControl_Damage : UDKSkelControl_Damage
{
	final void BreakApart(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49311], params.ptr, cast(void*)0);
	}
	final void BreakApartOnDeath(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49315], params.ptr, cast(void*)0);
	}
}
