module UnrealScript.Engine.DroppedPickup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface DroppedPickup : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DroppedPickup")()); }
	private static __gshared DroppedPickup mDefaultProperties;
	@property final static DroppedPickup DefaultProperties() { mixin(MGDPC!(DroppedPickup, "DroppedPickup Engine.Default__DroppedPickup")()); }
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
			ScriptFunction AddToNavigation() { mixin(MGF!("mAddToNavigation", "Function Engine.DroppedPickup.AddToNavigation")()); }
			ScriptFunction RemoveFromNavigation() { mixin(MGF!("mRemoveFromNavigation", "Function Engine.DroppedPickup.RemoveFromNavigation")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function Engine.DroppedPickup.Destroyed")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.DroppedPickup.ReplicatedEvent")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.DroppedPickup.Reset")()); }
			ScriptFunction SetPickupMesh() { mixin(MGF!("mSetPickupMesh", "Function Engine.DroppedPickup.SetPickupMesh")()); }
			ScriptFunction SetPickupParticles() { mixin(MGF!("mSetPickupParticles", "Function Engine.DroppedPickup.SetPickupParticles")()); }
			ScriptFunction EncroachedBy() { mixin(MGF!("mEncroachedBy", "Function Engine.DroppedPickup.EncroachedBy")()); }
			ScriptFunction DetourWeight() { mixin(MGF!("mDetourWeight", "Function Engine.DroppedPickup.DetourWeight")()); }
			ScriptFunction Landed() { mixin(MGF!("mLanded", "Function Engine.DroppedPickup.Landed")()); }
			ScriptFunction GiveTo() { mixin(MGF!("mGiveTo", "Function Engine.DroppedPickup.GiveTo")()); }
			ScriptFunction PickedUpBy() { mixin(MGF!("mPickedUpBy", "Function Engine.DroppedPickup.PickedUpBy")()); }
			ScriptFunction RecheckValidTouch() { mixin(MGF!("mRecheckValidTouch", "Function Engine.DroppedPickup.RecheckValidTouch")()); }
		}
	}
	static struct Pickup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.DroppedPickup.Pickup")()); }
	}
	static struct FadeOut
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.DroppedPickup.FadeOut")()); }
	}
	@property final
	{
		auto ref
		{
			NavigationPoint PickupCache() { mixin(MGPC!(NavigationPoint, 484)()); }
			ScriptClass InventoryClass() { mixin(MGPC!(ScriptClass, 480)()); }
			// WARNING: Property 'Inventory' has the same name as a defined type!
		}
		bool bFadeOut() { mixin(MGBPC!(488, 0x1)()); }
		bool bFadeOut(bool val) { mixin(MSBPC!(488, 0x1)()); }
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
