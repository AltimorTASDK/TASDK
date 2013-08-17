module UnrealScript.Engine.Inventory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InventoryManager;
import UnrealScript.Engine.PlayerReplicationInfo;

extern(C++) interface Inventory : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Inventory")()); }
	private static __gshared Inventory mDefaultProperties;
	@property final static Inventory DefaultProperties() { mixin(MGDPC!(Inventory, "Inventory Engine.Default__Inventory")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDetourWeight;
			ScriptFunction mGiveTo;
			ScriptFunction mGetHumanReadableName;
			ScriptFunction mDestroyed;
			ScriptFunction mBotDesireability;
			ScriptFunction mAnnouncePickup;
			ScriptFunction mGivenTo;
			ScriptFunction mClientGivenTo;
			ScriptFunction mItemRemovedFromInvManager;
			ScriptFunction mDenyPickupQuery;
			ScriptFunction mDropFrom;
			ScriptFunction mGetLocalString;
		}
		public @property static final
		{
			ScriptFunction DetourWeight() { mixin(MGF!("mDetourWeight", "Function Engine.Inventory.DetourWeight")()); }
			ScriptFunction GiveTo() { mixin(MGF!("mGiveTo", "Function Engine.Inventory.GiveTo")()); }
			ScriptFunction GetHumanReadableName() { mixin(MGF!("mGetHumanReadableName", "Function Engine.Inventory.GetHumanReadableName")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.Inventory.Destroyed")()); }
			ScriptFunction BotDesireability() { mixin(MGF!("mBotDesireability", "Function Engine.Inventory.BotDesireability")()); }
			ScriptFunction AnnouncePickup() { mixin(MGF!("mAnnouncePickup", "Function Engine.Inventory.AnnouncePickup")()); }
			ScriptFunction GivenTo() { mixin(MGF!("mGivenTo", "Function Engine.Inventory.GivenTo")()); }
			ScriptFunction ClientGivenTo() { mixin(MGF!("mClientGivenTo", "Function Engine.Inventory.ClientGivenTo")()); }
			ScriptFunction ItemRemovedFromInvManager() { mixin(MGF!("mItemRemovedFromInvManager", "Function Engine.Inventory.ItemRemovedFromInvManager")()); }
			ScriptFunction DenyPickupQuery() { mixin(MGF!("mDenyPickupQuery", "Function Engine.Inventory.DenyPickupQuery")()); }
			ScriptFunction DropFrom() { mixin(MGF!("mDropFrom", "Function Engine.Inventory.DropFrom")()); }
			ScriptFunction GetLocalString() { mixin(MGF!("mGetLocalString", "Function Engine.Inventory.GetLocalString")()); }
		}
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DroppedPickupMesh'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DroppedPickupParticles'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PickupFactoryMesh'!
			ScriptClass DroppedPickupClass() { mixin(MGPC!(ScriptClass, 536)()); }
			ScriptString PickupForce() { mixin(MGPC!(ScriptString, 524)()); }
			SoundCue PickupSound() { mixin(MGPC!(SoundCue, 520)()); }
			ScriptString PickupMessage() { mixin(MGPC!(ScriptString, 508)()); }
			float MaxDesireability() { mixin(MGPC!(float, 504)()); }
			float RespawnTime() { mixin(MGPC!(float, 500)()); }
			ScriptString ItemName() { mixin(MGPC!(ScriptString, 484)()); }
			InventoryManager InvManager() { mixin(MGPC!(InventoryManager, 480)()); }
			// WARNING: Property 'Inventory' has the same name as a defined type!
		}
		bool bPredictRespawns() { mixin(MGBPC!(496, 0x4)()); }
		bool bPredictRespawns(bool val) { mixin(MSBPC!(496, 0x4)()); }
		bool bDelayedSpawn() { mixin(MGBPC!(496, 0x2)()); }
		bool bDelayedSpawn(bool val) { mixin(MSBPC!(496, 0x2)()); }
		bool bDropOnDeath() { mixin(MGBPC!(496, 0x1)()); }
		bool bDropOnDeath(bool val) { mixin(MSBPC!(496, 0x1)()); }
	}
final:
	static float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		StaticClass.ProcessEvent(Functions.DetourWeight, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void GiveTo(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveTo, params.ptr, cast(void*)0);
	}
	ScriptString GetHumanReadableName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetHumanReadableName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	static float BotDesireability(Actor PickupHolder, Pawn P, Controller C)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = PickupHolder;
		*cast(Pawn*)&params[4] = P;
		*cast(Controller*)&params[8] = C;
		StaticClass.ProcessEvent(Functions.BotDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[12];
	}
	void AnnouncePickup(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnnouncePickup, params.ptr, cast(void*)0);
	}
	void GivenTo(Pawn thisPawn, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = thisPawn;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.GivenTo, params.ptr, cast(void*)0);
	}
	void ClientGivenTo(Pawn NewOwner, bool bDoNotActivate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = NewOwner;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientGivenTo, params.ptr, cast(void*)0);
	}
	void ItemRemovedFromInvManager()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ItemRemovedFromInvManager, cast(void*)0, cast(void*)0);
	}
	bool DenyPickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(Functions.DenyPickupQuery, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void DropFrom(Vector StartLocation, Vector StartVelocity)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = StartLocation;
		*cast(Vector*)&params[12] = StartVelocity;
		(cast(ScriptObject)this).ProcessEvent(Functions.DropFrom, params.ptr, cast(void*)0);
	}
	static ScriptString GetLocalString(int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(PlayerReplicationInfo*)&params[4] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_2;
		StaticClass.ProcessEvent(Functions.GetLocalString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
