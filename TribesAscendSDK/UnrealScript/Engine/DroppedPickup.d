module UnrealScript.Engine.DroppedPickup;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface DroppedPickup : Actor
{
	public @property final bool bFadeOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
	public @property final bool bFadeOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	public @property final auto ref NavigationPoint PickupCache() { return *cast(NavigationPoint*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref ScriptClass InventoryClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 480); }
	// WARNING: Property 'Inventory' has the same name as a defined type!
	final void AddToNavigation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14775], cast(void*)0, cast(void*)0);
	}
	final void RemoveFromNavigation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14776], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14777], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14778], params.ptr, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14782], cast(void*)0, cast(void*)0);
	}
	final void SetPickupMesh(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PickupMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = PickupMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14783], params.ptr, cast(void*)0);
	}
	final void SetPickupParticles(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* PickupParticles)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = PickupParticles;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14786], params.ptr, cast(void*)0);
	}
	final void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14790], params.ptr, cast(void*)0);
	}
	final float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14792], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14798], params.ptr, cast(void*)0);
	}
	final void GiveTo(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14801], params.ptr, cast(void*)0);
	}
	final void PickedUpBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14804], params.ptr, cast(void*)0);
	}
	final void RecheckValidTouch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14806], cast(void*)0, cast(void*)0);
	}
}
