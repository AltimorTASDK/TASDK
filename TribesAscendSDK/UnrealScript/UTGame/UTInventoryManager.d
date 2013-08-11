module UnrealScript.UTGame.UTInventoryManager;

import ScriptClasses;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.InventoryManager;
import UnrealScript.Engine.HUD;

extern(C++) interface UTInventoryManager : InventoryManager
{
	struct AmmoStore
	{
		public @property final auto ref ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
		private ubyte __WeaponClass[4];
		public @property final auto ref int Amount() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Amount[4];
	}
	public @property final bool bInfiniteAmmo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
	public @property final bool bInfiniteAmmo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(UTInventoryManager.AmmoStore) AmmoStorage() { return *cast(ScriptArray!(UTInventoryManager.AmmoStore)*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float LastAdjustWeaponTime() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref UTWeapon PendingSwitchWeapon() { return *cast(UTWeapon*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref Weapon PreviousWeapon() { return *cast(Weapon*)(cast(size_t)cast(void*)this + 520); }
	final bool NeedsAmmo(ScriptClass TestWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = TestWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40497], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ClientSyncWeapon(Weapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48037], params.ptr, cast(void*)0);
	}
	final void OwnerEvent(ScriptName EventName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48040], params.ptr, cast(void*)0);
	}
	final void GetWeaponList(ScriptArray!(UTWeapon)* WeaponList, bool bFilter, int GroupFilter, bool bNoEmpty)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(UTWeapon)*)params.ptr = *WeaponList;
		*cast(bool*)&params[12] = bFilter;
		*cast(int*)&params[16] = GroupFilter;
		*cast(bool*)&params[20] = bNoEmpty;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48043], params.ptr, cast(void*)0);
		*WeaponList = *cast(ScriptArray!(UTWeapon)*)params.ptr;
	}
	final void SwitchWeapon(ubyte NewGroup)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48051], params.ptr, cast(void*)0);
	}
	final void AdjustWeapon(int NewOffset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48057], params.ptr, cast(void*)0);
	}
	final void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48064], cast(void*)0, cast(void*)0);
	}
	final void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48065], cast(void*)0, cast(void*)0);
	}
	final void AllAmmo(bool bAmmoForSuperWeapons)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAmmoForSuperWeapons;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48066], params.ptr, cast(void*)0);
	}
	final void SetCurrentWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48069], params.ptr, cast(void*)0);
	}
	final void ClientSetCurrentWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48071], params.ptr, cast(void*)0);
	}
	final void ServerSetCurrentWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48073], params.ptr, cast(void*)0);
	}
	final void SetPendingWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48075], params.ptr, cast(void*)0);
	}
	final void ClientWeaponSet(Weapon NewWeapon, bool bOptionalSet, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		*cast(bool*)&params[4] = bOptionalSet;
		*cast(bool*)&params[8] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48080], params.ptr, cast(void*)0);
	}
	final Inventory CreateInventory(ScriptClass NewInventoryItemClass, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewInventoryItemClass;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48085], params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
	}
	final void ProcessRetrySwitch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48089], cast(void*)0, cast(void*)0);
	}
	final void RetrySwitchTo(UTWeapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48091], params.ptr, cast(void*)0);
	}
	final void CheckSwitchTo(UTWeapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48093], params.ptr, cast(void*)0);
	}
	final bool AddInventory(Inventory NewItem, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Inventory*)params.ptr = NewItem;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48095], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void DiscardInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48101], cast(void*)0, cast(void*)0);
	}
	final void RemoveFromInventory(Inventory ItemToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = ItemToRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48103], params.ptr, cast(void*)0);
	}
	final void AddAmmoToWeapon(int AmountToAdd, ScriptClass WeaponClassToAddTo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = AmountToAdd;
		*cast(ScriptClass*)&params[4] = WeaponClassToAddTo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48109], params.ptr, cast(void*)0);
	}
	final Inventory HasInventoryOfClass(ScriptClass InvClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InvClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48115], params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[4];
	}
	final void ChangedWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48119], cast(void*)0, cast(void*)0);
	}
	final void SwitchToPreviousWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48122], cast(void*)0, cast(void*)0);
	}
	final void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48123], params.ptr, cast(void*)0);
	}
	final void SwitchToBestWeapon(bool bForceADifferentWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceADifferentWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48125], params.ptr, cast(void*)0);
	}
}
