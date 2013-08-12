module UnrealScript.UTGame.UTInventory;

import ScriptClasses;
import UnrealScript.Engine.Inventory;
import UnrealScript.UTGame.UTGameReplicationInfo;

extern(C++) interface UTInventory : Inventory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTInventory")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddWeaponOverlay;
			ScriptFunction mClientLostItem;
			ScriptFunction mDestroyed;
			ScriptFunction mDropFrom;
			ScriptFunction mOwnerEvent;
		}
		public @property static final
		{
			ScriptFunction AddWeaponOverlay() { return mAddWeaponOverlay ? mAddWeaponOverlay : (mAddWeaponOverlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventory.AddWeaponOverlay")); }
			ScriptFunction ClientLostItem() { return mClientLostItem ? mClientLostItem : (mClientLostItem = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventory.ClientLostItem")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventory.Destroyed")); }
			ScriptFunction DropFrom() { return mDropFrom ? mDropFrom : (mDropFrom = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventory.DropFrom")); }
			ScriptFunction OwnerEvent() { return mOwnerEvent ? mOwnerEvent : (mOwnerEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventory.OwnerEvent")); }
		}
	}
	@property final
	{
		bool bReceiveOwnerEvents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 552) & 0x1) != 0; }
		bool bReceiveOwnerEvents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 552) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 552) &= ~0x1; } return val; }
	}
final:
	static void AddWeaponOverlay(UTGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGameReplicationInfo*)params.ptr = GRI;
		StaticClass.ProcessEvent(Functions.AddWeaponOverlay, params.ptr, cast(void*)0);
	}
	void ClientLostItem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientLostItem, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(Functions.DropFrom, params.ptr, cast(void*)0);
	}
	void OwnerEvent(ScriptName EventName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OwnerEvent, params.ptr, cast(void*)0);
	}
}
