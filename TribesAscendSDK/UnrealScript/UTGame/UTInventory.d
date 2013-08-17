module UnrealScript.UTGame.UTInventory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Inventory;
import UnrealScript.UTGame.UTGameReplicationInfo;

extern(C++) interface UTInventory : Inventory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTInventory")()); }
	private static __gshared UTInventory mDefaultProperties;
	@property final static UTInventory DefaultProperties() { mixin(MGDPC!(UTInventory, "UTInventory UTGame.Default__UTInventory")()); }
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
			ScriptFunction AddWeaponOverlay() { mixin(MGF!("mAddWeaponOverlay", "Function UTGame.UTInventory.AddWeaponOverlay")()); }
			ScriptFunction ClientLostItem() { mixin(MGF!("mClientLostItem", "Function UTGame.UTInventory.ClientLostItem")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UTGame.UTInventory.Destroyed")()); }
			ScriptFunction DropFrom() { mixin(MGF!("mDropFrom", "Function UTGame.UTInventory.DropFrom")()); }
			ScriptFunction OwnerEvent() { mixin(MGF!("mOwnerEvent", "Function UTGame.UTInventory.OwnerEvent")()); }
		}
	}
	@property final
	{
		bool bReceiveOwnerEvents() { mixin(MGBPC!(552, 0x1)()); }
		bool bReceiveOwnerEvents(bool val) { mixin(MSBPC!(552, 0x1)()); }
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
