module UnrealScript.UTGame.UTInventoryManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.InventoryManager;
import UnrealScript.Engine.HUD;

extern(C++) interface UTInventoryManager : InventoryManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTInventoryManager")); }
	private static __gshared UTInventoryManager mDefaultProperties;
	@property final static UTInventoryManager DefaultProperties() { mixin(MGDPC("UTInventoryManager", "UTInventoryManager UTGame.Default__UTInventoryManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mNeedsAmmo;
			ScriptFunction mClientSyncWeapon;
			ScriptFunction mOwnerEvent;
			ScriptFunction mGetWeaponList;
			ScriptFunction mSwitchWeapon;
			ScriptFunction mAdjustWeapon;
			ScriptFunction mPrevWeapon;
			ScriptFunction mNextWeapon;
			ScriptFunction mAllAmmo;
			ScriptFunction mSetCurrentWeapon;
			ScriptFunction mClientSetCurrentWeapon;
			ScriptFunction mServerSetCurrentWeapon;
			ScriptFunction mSetPendingWeapon;
			ScriptFunction mClientWeaponSet;
			ScriptFunction mCreateInventory;
			ScriptFunction mProcessRetrySwitch;
			ScriptFunction mRetrySwitchTo;
			ScriptFunction mCheckSwitchTo;
			ScriptFunction mAddInventory;
			ScriptFunction mDiscardInventory;
			ScriptFunction mRemoveFromInventory;
			ScriptFunction mAddAmmoToWeapon;
			ScriptFunction mHasInventoryOfClass;
			ScriptFunction mChangedWeapon;
			ScriptFunction mSwitchToPreviousWeapon;
			ScriptFunction mDrawHUD;
			ScriptFunction mSwitchToBestWeapon;
		}
		public @property static final
		{
			ScriptFunction NeedsAmmo() { mixin(MGF("mNeedsAmmo", "Function UTGame.UTInventoryManager.NeedsAmmo")); }
			ScriptFunction ClientSyncWeapon() { mixin(MGF("mClientSyncWeapon", "Function UTGame.UTInventoryManager.ClientSyncWeapon")); }
			ScriptFunction OwnerEvent() { mixin(MGF("mOwnerEvent", "Function UTGame.UTInventoryManager.OwnerEvent")); }
			ScriptFunction GetWeaponList() { mixin(MGF("mGetWeaponList", "Function UTGame.UTInventoryManager.GetWeaponList")); }
			ScriptFunction SwitchWeapon() { mixin(MGF("mSwitchWeapon", "Function UTGame.UTInventoryManager.SwitchWeapon")); }
			ScriptFunction AdjustWeapon() { mixin(MGF("mAdjustWeapon", "Function UTGame.UTInventoryManager.AdjustWeapon")); }
			ScriptFunction PrevWeapon() { mixin(MGF("mPrevWeapon", "Function UTGame.UTInventoryManager.PrevWeapon")); }
			ScriptFunction NextWeapon() { mixin(MGF("mNextWeapon", "Function UTGame.UTInventoryManager.NextWeapon")); }
			ScriptFunction AllAmmo() { mixin(MGF("mAllAmmo", "Function UTGame.UTInventoryManager.AllAmmo")); }
			ScriptFunction SetCurrentWeapon() { mixin(MGF("mSetCurrentWeapon", "Function UTGame.UTInventoryManager.SetCurrentWeapon")); }
			ScriptFunction ClientSetCurrentWeapon() { mixin(MGF("mClientSetCurrentWeapon", "Function UTGame.UTInventoryManager.ClientSetCurrentWeapon")); }
			ScriptFunction ServerSetCurrentWeapon() { mixin(MGF("mServerSetCurrentWeapon", "Function UTGame.UTInventoryManager.ServerSetCurrentWeapon")); }
			ScriptFunction SetPendingWeapon() { mixin(MGF("mSetPendingWeapon", "Function UTGame.UTInventoryManager.SetPendingWeapon")); }
			ScriptFunction ClientWeaponSet() { mixin(MGF("mClientWeaponSet", "Function UTGame.UTInventoryManager.ClientWeaponSet")); }
			ScriptFunction CreateInventory() { mixin(MGF("mCreateInventory", "Function UTGame.UTInventoryManager.CreateInventory")); }
			ScriptFunction ProcessRetrySwitch() { mixin(MGF("mProcessRetrySwitch", "Function UTGame.UTInventoryManager.ProcessRetrySwitch")); }
			ScriptFunction RetrySwitchTo() { mixin(MGF("mRetrySwitchTo", "Function UTGame.UTInventoryManager.RetrySwitchTo")); }
			ScriptFunction CheckSwitchTo() { mixin(MGF("mCheckSwitchTo", "Function UTGame.UTInventoryManager.CheckSwitchTo")); }
			ScriptFunction AddInventory() { mixin(MGF("mAddInventory", "Function UTGame.UTInventoryManager.AddInventory")); }
			ScriptFunction DiscardInventory() { mixin(MGF("mDiscardInventory", "Function UTGame.UTInventoryManager.DiscardInventory")); }
			ScriptFunction RemoveFromInventory() { mixin(MGF("mRemoveFromInventory", "Function UTGame.UTInventoryManager.RemoveFromInventory")); }
			ScriptFunction AddAmmoToWeapon() { mixin(MGF("mAddAmmoToWeapon", "Function UTGame.UTInventoryManager.AddAmmoToWeapon")); }
			ScriptFunction HasInventoryOfClass() { mixin(MGF("mHasInventoryOfClass", "Function UTGame.UTInventoryManager.HasInventoryOfClass")); }
			ScriptFunction ChangedWeapon() { mixin(MGF("mChangedWeapon", "Function UTGame.UTInventoryManager.ChangedWeapon")); }
			ScriptFunction SwitchToPreviousWeapon() { mixin(MGF("mSwitchToPreviousWeapon", "Function UTGame.UTInventoryManager.SwitchToPreviousWeapon")); }
			ScriptFunction DrawHUD() { mixin(MGF("mDrawHUD", "Function UTGame.UTInventoryManager.DrawHUD")); }
			ScriptFunction SwitchToBestWeapon() { mixin(MGF("mSwitchToBestWeapon", "Function UTGame.UTInventoryManager.SwitchToBestWeapon")); }
		}
	}
	struct AmmoStore
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct UTGame.UTInventoryManager.AmmoStore")); }
		@property final auto ref
		{
			ScriptClass WeaponClass() { mixin(MGPS("ScriptClass", 4)); }
			int Amount() { mixin(MGPS("int", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UTInventoryManager.AmmoStore) AmmoStorage() { mixin(MGPC("ScriptArray!(UTInventoryManager.AmmoStore)", 508)); }
			float LastAdjustWeaponTime() { mixin(MGPC("float", 528)); }
			UTWeapon PendingSwitchWeapon() { mixin(MGPC("UTWeapon", 524)); }
			Weapon PreviousWeapon() { mixin(MGPC("Weapon", 520)); }
		}
		bool bInfiniteAmmo() { mixin(MGBPC(504, 0x1)); }
		bool bInfiniteAmmo(bool val) { mixin(MSBPC(504, 0x1)); }
	}
final:
	bool NeedsAmmo(ScriptClass TestWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = TestWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedsAmmo, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ClientSyncWeapon(Weapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSyncWeapon, params.ptr, cast(void*)0);
	}
	void OwnerEvent(ScriptName EventName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = EventName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OwnerEvent, params.ptr, cast(void*)0);
	}
	void GetWeaponList(ref ScriptArray!(UTWeapon) WeaponList, bool* bFilter = null, int* GroupFilter = null, bool* bNoEmpty = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(UTWeapon)*)params.ptr = WeaponList;
		if (bFilter !is null)
			*cast(bool*)&params[12] = *bFilter;
		if (GroupFilter !is null)
			*cast(int*)&params[16] = *GroupFilter;
		if (bNoEmpty !is null)
			*cast(bool*)&params[20] = *bNoEmpty;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponList, params.ptr, cast(void*)0);
		WeaponList = *cast(ScriptArray!(UTWeapon)*)params.ptr;
	}
	void SwitchWeapon(ubyte NewGroup)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchWeapon, params.ptr, cast(void*)0);
	}
	void AdjustWeapon(int NewOffset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustWeapon, params.ptr, cast(void*)0);
	}
	void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PrevWeapon, cast(void*)0, cast(void*)0);
	}
	void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NextWeapon, cast(void*)0, cast(void*)0);
	}
	void AllAmmo(bool* bAmmoForSuperWeapons = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bAmmoForSuperWeapons !is null)
			*cast(bool*)params.ptr = *bAmmoForSuperWeapons;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllAmmo, params.ptr, cast(void*)0);
	}
	void SetCurrentWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentWeapon, params.ptr, cast(void*)0);
	}
	void ClientSetCurrentWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientSetCurrentWeapon, params.ptr, cast(void*)0);
	}
	void ServerSetCurrentWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerSetCurrentWeapon, params.ptr, cast(void*)0);
	}
	void SetPendingWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPendingWeapon, params.ptr, cast(void*)0);
	}
	void ClientWeaponSet(Weapon NewWeapon, bool bOptionalSet, bool* bDoNotActivate = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		*cast(bool*)&params[4] = bOptionalSet;
		if (bDoNotActivate !is null)
			*cast(bool*)&params[8] = *bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWeaponSet, params.ptr, cast(void*)0);
	}
	Inventory CreateInventory(ScriptClass NewInventoryItemClass, bool* bDoNotActivate = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewInventoryItemClass;
		if (bDoNotActivate !is null)
			*cast(bool*)&params[4] = *bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateInventory, params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
	}
	void ProcessRetrySwitch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessRetrySwitch, cast(void*)0, cast(void*)0);
	}
	void RetrySwitchTo(UTWeapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.RetrySwitchTo, params.ptr, cast(void*)0);
	}
	void CheckSwitchTo(UTWeapon NewWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTWeapon*)params.ptr = NewWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckSwitchTo, params.ptr, cast(void*)0);
	}
	bool AddInventory(Inventory pNewItem, bool* bDoNotActivate = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Inventory*)params.ptr = pNewItem;
		if (bDoNotActivate !is null)
			*cast(bool*)&params[4] = *bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddInventory, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void DiscardInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DiscardInventory, cast(void*)0, cast(void*)0);
	}
	void RemoveFromInventory(Inventory ItemToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = ItemToRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFromInventory, params.ptr, cast(void*)0);
	}
	void AddAmmoToWeapon(int AmountToAdd, ScriptClass WeaponClassToAddTo)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = AmountToAdd;
		*cast(ScriptClass*)&params[4] = WeaponClassToAddTo;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAmmoToWeapon, params.ptr, cast(void*)0);
	}
	Inventory HasInventoryOfClass(ScriptClass InvClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = InvClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasInventoryOfClass, params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[4];
	}
	void ChangedWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangedWeapon, cast(void*)0, cast(void*)0);
	}
	void SwitchToPreviousWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchToPreviousWeapon, cast(void*)0, cast(void*)0);
	}
	void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawHUD, params.ptr, cast(void*)0);
	}
	void SwitchToBestWeapon(bool* bForceADifferentWeapon = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bForceADifferentWeapon !is null)
			*cast(bool*)params.ptr = *bForceADifferentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchToBestWeapon, params.ptr, cast(void*)0);
	}
}
