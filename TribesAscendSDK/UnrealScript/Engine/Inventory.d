module UnrealScript.Engine.Inventory;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Inventory")); }
	private static __gshared Inventory mDefaultProperties;
	@property final static Inventory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Inventory)("Inventory Engine.Default__Inventory")); }
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
			ScriptFunction DetourWeight() { return mDetourWeight ? mDetourWeight : (mDetourWeight = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.DetourWeight")); }
			ScriptFunction GiveTo() { return mGiveTo ? mGiveTo : (mGiveTo = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.GiveTo")); }
			ScriptFunction GetHumanReadableName() { return mGetHumanReadableName ? mGetHumanReadableName : (mGetHumanReadableName = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.GetHumanReadableName")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.Destroyed")); }
			ScriptFunction BotDesireability() { return mBotDesireability ? mBotDesireability : (mBotDesireability = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.BotDesireability")); }
			ScriptFunction AnnouncePickup() { return mAnnouncePickup ? mAnnouncePickup : (mAnnouncePickup = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.AnnouncePickup")); }
			ScriptFunction GivenTo() { return mGivenTo ? mGivenTo : (mGivenTo = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.GivenTo")); }
			ScriptFunction ClientGivenTo() { return mClientGivenTo ? mClientGivenTo : (mClientGivenTo = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.ClientGivenTo")); }
			ScriptFunction ItemRemovedFromInvManager() { return mItemRemovedFromInvManager ? mItemRemovedFromInvManager : (mItemRemovedFromInvManager = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.ItemRemovedFromInvManager")); }
			ScriptFunction DenyPickupQuery() { return mDenyPickupQuery ? mDenyPickupQuery : (mDenyPickupQuery = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.DenyPickupQuery")); }
			ScriptFunction DropFrom() { return mDropFrom ? mDropFrom : (mDropFrom = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.DropFrom")); }
			ScriptFunction GetLocalString() { return mGetLocalString ? mGetLocalString : (mGetLocalString = ScriptObject.Find!(ScriptFunction)("Function Engine.Inventory.GetLocalString")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptClass DroppedPickupClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 536); }
			ScriptString PickupForce() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 524); }
			SoundCue PickupSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 520); }
			ScriptString PickupMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 508); }
			float MaxDesireability() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float RespawnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			ScriptString ItemName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 484); }
			InventoryManager InvManager() { return *cast(InventoryManager*)(cast(size_t)cast(void*)this + 480); }
			// WARNING: Property 'Inventory' has the same name as a defined type!
		}
		bool bPredictRespawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x4) != 0; }
		bool bPredictRespawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x4; } return val; }
		bool bDelayedSpawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x2) != 0; }
		bool bDelayedSpawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x2; } return val; }
		bool bDropOnDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
		bool bDropOnDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
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
