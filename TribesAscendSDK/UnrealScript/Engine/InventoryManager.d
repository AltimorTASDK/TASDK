module UnrealScript.Engine.InventoryManager;

import ScriptClasses;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.HUD;

extern(C++) interface InventoryManager : Actor
{
	public @property final auto ref ScriptArray!(int) PendingFire() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 492); }
	public @property final bool bMustHoldWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
	public @property final bool bMustHoldWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	public @property final auto ref Weapon LastAttemptedSwitchToWeapon() { return *cast(Weapon*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref Weapon PendingWeapon() { return *cast(Weapon*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref Inventory InventoryChain() { return *cast(Inventory*)(cast(size_t)cast(void*)this + 476); }
	final bool HandlePickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17102], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final bool AddInventory(Inventory NewItem, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Inventory*)params.ptr = NewItem;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18796], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18826], cast(void*)0, cast(void*)0);
	}
	final int GetPendingFireLength(Weapon InWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18827], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	final void SetPendingFire(Weapon InWeapon, int InFiringMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(int*)&params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18830], params.ptr, cast(void*)0);
	}
	final void ClearPendingFire(Weapon InWeapon, int InFiringMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(int*)&params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18833], params.ptr, cast(void*)0);
	}
	final bool IsPendingFire(Weapon InWeapon, int InFiringMode)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(int*)&params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18836], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void ClearAllPendingFire(Weapon InWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18840], params.ptr, cast(void*)0);
	}
	final void InventoryActors(ScriptClass BaseClass, Inventory* Inv)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Inventory*)&params[4] = *Inv;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18843], params.ptr, cast(void*)0);
		*Inv = *cast(Inventory*)&params[4];
	}
	final void SetupFor(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18846], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18848], cast(void*)0, cast(void*)0);
	}
	final Inventory FindInventoryType(ScriptClass DesiredClass, bool bAllowSubclass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DesiredClass;
		*cast(bool*)&params[4] = bAllowSubclass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18852], params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
	}
	final Inventory CreateInventory(ScriptClass NewInventoryItemClass, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewInventoryItemClass;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18857], params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
	}
	final void RemoveFromInventory(Inventory ItemToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = ItemToRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18866], params.ptr, cast(void*)0);
	}
	final void DiscardInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18870], cast(void*)0, cast(void*)0);
	}
	final void OwnerDied()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18876], cast(void*)0, cast(void*)0);
	}
	final void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18877], params.ptr, cast(void*)0);
	}
	final float GetWeaponRatingFor(Weapon W)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18879], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	final Weapon GetBestWeapon(bool bForceADifferentWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceADifferentWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18887], params.ptr, cast(void*)0);
		return *cast(Weapon*)&params[4];
	}
	final void SwitchToBestWeapon(bool bForceADifferentWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceADifferentWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18896], params.ptr, cast(void*)0);
	}
	final void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18899], cast(void*)0, cast(void*)0);
	}
	final void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18903], cast(void*)0, cast(void*)0);
	}
	final void SetCurrentWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18908], params.ptr, cast(void*)0);
	}
	final void InternalSetCurrentWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18910], params.ptr, cast(void*)0);
	}
	final void ServerSetCurrentWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18911], params.ptr, cast(void*)0);
	}
	final void SetPendingWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18917], params.ptr, cast(void*)0);
	}
	final bool CancelWeaponChange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18919], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void ClearPendingWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18921], cast(void*)0, cast(void*)0);
	}
	final void ChangedWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18922], cast(void*)0, cast(void*)0);
	}
	final void ClientWeaponSet(Weapon NewWeapon, bool bOptionalSet, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		*cast(bool*)&params[4] = bOptionalSet;
		*cast(bool*)&params[8] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18924], params.ptr, cast(void*)0);
	}
	final void UpdateController()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18931], cast(void*)0, cast(void*)0);
	}
}
