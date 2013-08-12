module UnrealScript.UTGame.UTInventoryManager;

import ScriptClasses;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.InventoryManager;
import UnrealScript.Engine.HUD;

extern(C++) interface UTInventoryManager : InventoryManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTInventoryManager")); }
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
			ScriptFunction NeedsAmmo() { return mNeedsAmmo ? mNeedsAmmo : (mNeedsAmmo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.NeedsAmmo")); }
			ScriptFunction ClientSyncWeapon() { return mClientSyncWeapon ? mClientSyncWeapon : (mClientSyncWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.ClientSyncWeapon")); }
			ScriptFunction OwnerEvent() { return mOwnerEvent ? mOwnerEvent : (mOwnerEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.OwnerEvent")); }
			ScriptFunction GetWeaponList() { return mGetWeaponList ? mGetWeaponList : (mGetWeaponList = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.GetWeaponList")); }
			ScriptFunction SwitchWeapon() { return mSwitchWeapon ? mSwitchWeapon : (mSwitchWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.SwitchWeapon")); }
			ScriptFunction AdjustWeapon() { return mAdjustWeapon ? mAdjustWeapon : (mAdjustWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.AdjustWeapon")); }
			ScriptFunction PrevWeapon() { return mPrevWeapon ? mPrevWeapon : (mPrevWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.PrevWeapon")); }
			ScriptFunction NextWeapon() { return mNextWeapon ? mNextWeapon : (mNextWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.NextWeapon")); }
			ScriptFunction AllAmmo() { return mAllAmmo ? mAllAmmo : (mAllAmmo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.AllAmmo")); }
			ScriptFunction SetCurrentWeapon() { return mSetCurrentWeapon ? mSetCurrentWeapon : (mSetCurrentWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.SetCurrentWeapon")); }
			ScriptFunction ClientSetCurrentWeapon() { return mClientSetCurrentWeapon ? mClientSetCurrentWeapon : (mClientSetCurrentWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.ClientSetCurrentWeapon")); }
			ScriptFunction ServerSetCurrentWeapon() { return mServerSetCurrentWeapon ? mServerSetCurrentWeapon : (mServerSetCurrentWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.ServerSetCurrentWeapon")); }
			ScriptFunction SetPendingWeapon() { return mSetPendingWeapon ? mSetPendingWeapon : (mSetPendingWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.SetPendingWeapon")); }
			ScriptFunction ClientWeaponSet() { return mClientWeaponSet ? mClientWeaponSet : (mClientWeaponSet = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.ClientWeaponSet")); }
			ScriptFunction CreateInventory() { return mCreateInventory ? mCreateInventory : (mCreateInventory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.CreateInventory")); }
			ScriptFunction ProcessRetrySwitch() { return mProcessRetrySwitch ? mProcessRetrySwitch : (mProcessRetrySwitch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.ProcessRetrySwitch")); }
			ScriptFunction RetrySwitchTo() { return mRetrySwitchTo ? mRetrySwitchTo : (mRetrySwitchTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.RetrySwitchTo")); }
			ScriptFunction CheckSwitchTo() { return mCheckSwitchTo ? mCheckSwitchTo : (mCheckSwitchTo = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.CheckSwitchTo")); }
			ScriptFunction AddInventory() { return mAddInventory ? mAddInventory : (mAddInventory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.AddInventory")); }
			ScriptFunction DiscardInventory() { return mDiscardInventory ? mDiscardInventory : (mDiscardInventory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.DiscardInventory")); }
			ScriptFunction RemoveFromInventory() { return mRemoveFromInventory ? mRemoveFromInventory : (mRemoveFromInventory = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.RemoveFromInventory")); }
			ScriptFunction AddAmmoToWeapon() { return mAddAmmoToWeapon ? mAddAmmoToWeapon : (mAddAmmoToWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.AddAmmoToWeapon")); }
			ScriptFunction HasInventoryOfClass() { return mHasInventoryOfClass ? mHasInventoryOfClass : (mHasInventoryOfClass = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.HasInventoryOfClass")); }
			ScriptFunction ChangedWeapon() { return mChangedWeapon ? mChangedWeapon : (mChangedWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.ChangedWeapon")); }
			ScriptFunction SwitchToPreviousWeapon() { return mSwitchToPreviousWeapon ? mSwitchToPreviousWeapon : (mSwitchToPreviousWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.SwitchToPreviousWeapon")); }
			ScriptFunction DrawHUD() { return mDrawHUD ? mDrawHUD : (mDrawHUD = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.DrawHUD")); }
			ScriptFunction SwitchToBestWeapon() { return mSwitchToBestWeapon ? mSwitchToBestWeapon : (mSwitchToBestWeapon = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTInventoryManager.SwitchToBestWeapon")); }
		}
	}
	struct AmmoStore
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.UTInventoryManager.AmmoStore")); }
		@property final auto ref
		{
			ScriptClass WeaponClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
			int Amount() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UTInventoryManager.AmmoStore) AmmoStorage() { return *cast(ScriptArray!(UTInventoryManager.AmmoStore)*)(cast(size_t)cast(void*)this + 508); }
			float LastAdjustWeaponTime() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			UTWeapon PendingSwitchWeapon() { return *cast(UTWeapon*)(cast(size_t)cast(void*)this + 524); }
			Weapon PreviousWeapon() { return *cast(Weapon*)(cast(size_t)cast(void*)this + 520); }
		}
		bool bInfiniteAmmo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
		bool bInfiniteAmmo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
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
	void GetWeaponList(ScriptArray!(UTWeapon)* WeaponList, bool bFilter, int GroupFilter, bool bNoEmpty)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(UTWeapon)*)params.ptr = *WeaponList;
		*cast(bool*)&params[12] = bFilter;
		*cast(int*)&params[16] = GroupFilter;
		*cast(bool*)&params[20] = bNoEmpty;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponList, params.ptr, cast(void*)0);
		*WeaponList = *cast(ScriptArray!(UTWeapon)*)params.ptr;
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
	void AllAmmo(bool bAmmoForSuperWeapons)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bAmmoForSuperWeapons;
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
	void ClientWeaponSet(Weapon NewWeapon, bool bOptionalSet, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = NewWeapon;
		*cast(bool*)&params[4] = bOptionalSet;
		*cast(bool*)&params[8] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientWeaponSet, params.ptr, cast(void*)0);
	}
	Inventory CreateInventory(ScriptClass NewInventoryItemClass, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = NewInventoryItemClass;
		*cast(bool*)&params[4] = bDoNotActivate;
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
	bool AddInventory(Inventory pNewItem, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Inventory*)params.ptr = pNewItem;
		*cast(bool*)&params[4] = bDoNotActivate;
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
	void SwitchToBestWeapon(bool bForceADifferentWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceADifferentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchToBestWeapon, params.ptr, cast(void*)0);
	}
}
