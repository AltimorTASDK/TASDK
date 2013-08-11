module UnrealScript.UTGame.UTInventory;

import ScriptClasses;
import UnrealScript.Engine.Inventory;
import UnrealScript.UTGame.UTGameReplicationInfo;

extern(C++) interface UTInventory : Inventory
{
	public @property final bool bReceiveOwnerEvents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x1) != 0; }
	public @property final bool bReceiveOwnerEvents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x1; } return val; }
	final void AddWeaponOverlay(UTGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48017], params.ptr, cast(void*)0);
	}
	final void ClientLostItem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48019], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48020], cast(void*)0, cast(void*)0);
	}
	final void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48022], params.ptr, cast(void*)0);
	}
	final void OwnerEvent(ScriptName EventName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48025], params.ptr, cast(void*)0);
	}
}
