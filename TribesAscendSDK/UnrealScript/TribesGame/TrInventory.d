module UnrealScript.TribesGame.TrInventory;

import ScriptClasses;
import UnrealScript.UTGame.UTInventory;

extern(C++) interface TrInventory : UTInventory
{
	public @property final auto ref float m_fMaxPickupSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	final void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[96673], params.ptr, cast(void*)0);
	}
}
