module UnrealScript.Engine.InventoryManager;

import ScriptClasses;
import UnrealScript.Engine.Weapon;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.HUD;

extern(C++) interface InventoryManager : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InventoryManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHandlePickupQuery;
			ScriptFunction mAddInventory;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mGetPendingFireLength;
			ScriptFunction mSetPendingFire;
			ScriptFunction mClearPendingFire;
			ScriptFunction mIsPendingFire;
			ScriptFunction mClearAllPendingFire;
			ScriptFunction mInventoryActors;
			ScriptFunction mSetupFor;
			ScriptFunction mDestroyed;
			ScriptFunction mFindInventoryType;
			ScriptFunction mCreateInventory;
			ScriptFunction mRemoveFromInventory;
			ScriptFunction mDiscardInventory;
			ScriptFunction mOwnerDied;
			ScriptFunction mDrawHUD;
			ScriptFunction mGetWeaponRatingFor;
			ScriptFunction mGetBestWeapon;
			ScriptFunction mSwitchToBestWeapon;
			ScriptFunction mPrevWeapon;
			ScriptFunction mNextWeapon;
			ScriptFunction mSetCurrentWeapon;
			ScriptFunction mInternalSetCurrentWeapon;
			ScriptFunction mServerSetCurrentWeapon;
			ScriptFunction mSetPendingWeapon;
			ScriptFunction mCancelWeaponChange;
			ScriptFunction mClearPendingWeapon;
			ScriptFunction mChangedWeapon;
			ScriptFunction mClientWeaponSet;
			ScriptFunction mUpdateController;
		}
		public @property static final
		{
			ScriptFunction HandlePickupQuery() { return mHandlePickupQuery ? mHandlePickupQuery : (mHandlePickupQuery = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.HandlePickupQuery")); }
			ScriptFunction AddInventory() { return mAddInventory ? mAddInventory : (mAddInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.AddInventory")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.PostBeginPlay")); }
			ScriptFunction GetPendingFireLength() { return mGetPendingFireLength ? mGetPendingFireLength : (mGetPendingFireLength = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.GetPendingFireLength")); }
			ScriptFunction SetPendingFire() { return mSetPendingFire ? mSetPendingFire : (mSetPendingFire = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.SetPendingFire")); }
			ScriptFunction ClearPendingFire() { return mClearPendingFire ? mClearPendingFire : (mClearPendingFire = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.ClearPendingFire")); }
			ScriptFunction IsPendingFire() { return mIsPendingFire ? mIsPendingFire : (mIsPendingFire = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.IsPendingFire")); }
			ScriptFunction ClearAllPendingFire() { return mClearAllPendingFire ? mClearAllPendingFire : (mClearAllPendingFire = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.ClearAllPendingFire")); }
			ScriptFunction InventoryActors() { return mInventoryActors ? mInventoryActors : (mInventoryActors = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.InventoryActors")); }
			ScriptFunction SetupFor() { return mSetupFor ? mSetupFor : (mSetupFor = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.SetupFor")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.Destroyed")); }
			ScriptFunction FindInventoryType() { return mFindInventoryType ? mFindInventoryType : (mFindInventoryType = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.FindInventoryType")); }
			ScriptFunction CreateInventory() { return mCreateInventory ? mCreateInventory : (mCreateInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.CreateInventory")); }
			ScriptFunction RemoveFromInventory() { return mRemoveFromInventory ? mRemoveFromInventory : (mRemoveFromInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.RemoveFromInventory")); }
			ScriptFunction DiscardInventory() { return mDiscardInventory ? mDiscardInventory : (mDiscardInventory = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.DiscardInventory")); }
			ScriptFunction OwnerDied() { return mOwnerDied ? mOwnerDied : (mOwnerDied = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.OwnerDied")); }
			ScriptFunction DrawHUD() { return mDrawHUD ? mDrawHUD : (mDrawHUD = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.DrawHUD")); }
			ScriptFunction GetWeaponRatingFor() { return mGetWeaponRatingFor ? mGetWeaponRatingFor : (mGetWeaponRatingFor = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.GetWeaponRatingFor")); }
			ScriptFunction GetBestWeapon() { return mGetBestWeapon ? mGetBestWeapon : (mGetBestWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.GetBestWeapon")); }
			ScriptFunction SwitchToBestWeapon() { return mSwitchToBestWeapon ? mSwitchToBestWeapon : (mSwitchToBestWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.SwitchToBestWeapon")); }
			ScriptFunction PrevWeapon() { return mPrevWeapon ? mPrevWeapon : (mPrevWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.PrevWeapon")); }
			ScriptFunction NextWeapon() { return mNextWeapon ? mNextWeapon : (mNextWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.NextWeapon")); }
			ScriptFunction SetCurrentWeapon() { return mSetCurrentWeapon ? mSetCurrentWeapon : (mSetCurrentWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.SetCurrentWeapon")); }
			ScriptFunction InternalSetCurrentWeapon() { return mInternalSetCurrentWeapon ? mInternalSetCurrentWeapon : (mInternalSetCurrentWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.InternalSetCurrentWeapon")); }
			ScriptFunction ServerSetCurrentWeapon() { return mServerSetCurrentWeapon ? mServerSetCurrentWeapon : (mServerSetCurrentWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.ServerSetCurrentWeapon")); }
			ScriptFunction SetPendingWeapon() { return mSetPendingWeapon ? mSetPendingWeapon : (mSetPendingWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.SetPendingWeapon")); }
			ScriptFunction CancelWeaponChange() { return mCancelWeaponChange ? mCancelWeaponChange : (mCancelWeaponChange = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.CancelWeaponChange")); }
			ScriptFunction ClearPendingWeapon() { return mClearPendingWeapon ? mClearPendingWeapon : (mClearPendingWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.ClearPendingWeapon")); }
			ScriptFunction ChangedWeapon() { return mChangedWeapon ? mChangedWeapon : (mChangedWeapon = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.ChangedWeapon")); }
			ScriptFunction ClientWeaponSet() { return mClientWeaponSet ? mClientWeaponSet : (mClientWeaponSet = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.ClientWeaponSet")); }
			ScriptFunction UpdateController() { return mUpdateController ? mUpdateController : (mUpdateController = ScriptObject.Find!(ScriptFunction)("Function Engine.InventoryManager.UpdateController")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(int) PendingFire() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 492); }
			Weapon LastAttemptedSwitchToWeapon() { return *cast(Weapon*)(cast(size_t)cast(void*)this + 484); }
			Weapon PendingWeapon() { return *cast(Weapon*)(cast(size_t)cast(void*)this + 480); }
			Inventory InventoryChain() { return *cast(Inventory*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bMustHoldWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool bMustHoldWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	}
final:
	bool HandlePickupQuery(ScriptClass ItemClass, Actor Pickup)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = ItemClass;
		*cast(Actor*)&params[4] = Pickup;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandlePickupQuery, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
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
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	int GetPendingFireLength(Weapon InWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPendingFireLength, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void SetPendingFire(Weapon InWeapon, int InFiringMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(int*)&params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPendingFire, params.ptr, cast(void*)0);
	}
	void ClearPendingFire(Weapon InWeapon, int InFiringMode)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(int*)&params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPendingFire, params.ptr, cast(void*)0);
	}
	bool IsPendingFire(Weapon InWeapon, int InFiringMode)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		*cast(int*)&params[4] = InFiringMode;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPendingFire, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void ClearAllPendingFire(Weapon InWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = InWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearAllPendingFire, params.ptr, cast(void*)0);
	}
	void InventoryActors(ScriptClass BaseClass, Inventory* Inv)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = BaseClass;
		*cast(Inventory*)&params[4] = *Inv;
		(cast(ScriptObject)this).ProcessEvent(Functions.InventoryActors, params.ptr, cast(void*)0);
		*Inv = *cast(Inventory*)&params[4];
	}
	void SetupFor(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupFor, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	Inventory FindInventoryType(ScriptClass DesiredClass, bool bAllowSubclass)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DesiredClass;
		*cast(bool*)&params[4] = bAllowSubclass;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindInventoryType, params.ptr, cast(void*)0);
		return *cast(Inventory*)&params[8];
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
	void RemoveFromInventory(Inventory ItemToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = ItemToRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFromInventory, params.ptr, cast(void*)0);
	}
	void DiscardInventory()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DiscardInventory, cast(void*)0, cast(void*)0);
	}
	void OwnerDied()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OwnerDied, cast(void*)0, cast(void*)0);
	}
	void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawHUD, params.ptr, cast(void*)0);
	}
	float GetWeaponRatingFor(Weapon W)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Weapon*)params.ptr = W;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetWeaponRatingFor, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	Weapon GetBestWeapon(bool bForceADifferentWeapon)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bForceADifferentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBestWeapon, params.ptr, cast(void*)0);
		return *cast(Weapon*)&params[4];
	}
	void SwitchToBestWeapon(bool bForceADifferentWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForceADifferentWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchToBestWeapon, params.ptr, cast(void*)0);
	}
	void PrevWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PrevWeapon, cast(void*)0, cast(void*)0);
	}
	void NextWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NextWeapon, cast(void*)0, cast(void*)0);
	}
	void SetCurrentWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentWeapon, params.ptr, cast(void*)0);
	}
	void InternalSetCurrentWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.InternalSetCurrentWeapon, params.ptr, cast(void*)0);
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
	bool CancelWeaponChange()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CancelWeaponChange, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearPendingWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPendingWeapon, cast(void*)0, cast(void*)0);
	}
	void ChangedWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangedWeapon, cast(void*)0, cast(void*)0);
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
	void UpdateController()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateController, cast(void*)0, cast(void*)0);
	}
}
