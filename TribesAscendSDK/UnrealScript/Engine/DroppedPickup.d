module UnrealScript.Engine.DroppedPickup;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface DroppedPickup : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DroppedPickup")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddToNavigation;
			ScriptFunction mRemoveFromNavigation;
			ScriptFunction mDestroyed;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mReset;
			ScriptFunction mSetPickupMesh;
			ScriptFunction mSetPickupParticles;
			ScriptFunction mEncroachedBy;
			ScriptFunction mDetourWeight;
			ScriptFunction mLanded;
			ScriptFunction mGiveTo;
			ScriptFunction mPickedUpBy;
			ScriptFunction mRecheckValidTouch;
		}
		public @property static final
		{
			ScriptFunction AddToNavigation() { return mAddToNavigation ? mAddToNavigation : (mAddToNavigation = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.AddToNavigation")); }
			ScriptFunction RemoveFromNavigation() { return mRemoveFromNavigation ? mRemoveFromNavigation : (mRemoveFromNavigation = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.RemoveFromNavigation")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.Destroyed")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.ReplicatedEvent")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.Reset")); }
			ScriptFunction SetPickupMesh() { return mSetPickupMesh ? mSetPickupMesh : (mSetPickupMesh = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.SetPickupMesh")); }
			ScriptFunction SetPickupParticles() { return mSetPickupParticles ? mSetPickupParticles : (mSetPickupParticles = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.SetPickupParticles")); }
			ScriptFunction EncroachedBy() { return mEncroachedBy ? mEncroachedBy : (mEncroachedBy = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.EncroachedBy")); }
			ScriptFunction DetourWeight() { return mDetourWeight ? mDetourWeight : (mDetourWeight = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.DetourWeight")); }
			ScriptFunction Landed() { return mLanded ? mLanded : (mLanded = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.Landed")); }
			ScriptFunction GiveTo() { return mGiveTo ? mGiveTo : (mGiveTo = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.GiveTo")); }
			ScriptFunction PickedUpBy() { return mPickedUpBy ? mPickedUpBy : (mPickedUpBy = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.PickedUpBy")); }
			ScriptFunction RecheckValidTouch() { return mRecheckValidTouch ? mRecheckValidTouch : (mRecheckValidTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.DroppedPickup.RecheckValidTouch")); }
		}
	}
	@property final
	{
		auto ref
		{
			NavigationPoint PickupCache() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 484); }
			ScriptClass InventoryClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 480); }
			// WARNING: Property 'Inventory' has the same name as a defined type!
		}
		bool bFadeOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool bFadeOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	}
final:
	void AddToNavigation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToNavigation, cast(void*)0, cast(void*)0);
	}
	void RemoveFromNavigation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFromNavigation, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	void SetPickupMesh(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PickupMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PickupMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupMesh, params.ptr, cast(void*)0);
	}
	void SetPickupParticles(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PickupParticles)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PickupParticles;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupParticles, params.ptr, cast(void*)0);
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachedBy, params.ptr, cast(void*)0);
	}
	float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetourWeight, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Landed, params.ptr, cast(void*)0);
	}
	void GiveTo(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveTo, params.ptr, cast(void*)0);
	}
	void PickedUpBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickedUpBy, params.ptr, cast(void*)0);
	}
	void RecheckValidTouch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecheckValidTouch, cast(void*)0, cast(void*)0);
	}
}
