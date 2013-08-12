module UnrealScript.TribesGame.TrInventoryManager;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.Inventory;
import UnrealScript.Engine.Weapon;
import UnrealScript.UTGame.UTInventoryManager;
import UnrealScript.TribesGame.TrStatsInterface;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrInventoryManager : UTInventoryManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrInventoryManager")); }
	private static __gshared TrInventoryManager mDefaultProperties;
	@property final static TrInventoryManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrInventoryManager)("TrInventoryManager TribesGame.Default__TrInventoryManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetDeviceByEquipPoint;
			ScriptFunction mAddInventory;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mGetDeviceByWeaponClass;
			ScriptFunction mGetDeviceByWeaponId;
			ScriptFunction mTrGetWeaponList;
			ScriptFunction mDiscardEquippedDeployable;
			ScriptFunction mAdjustWeapon;
			ScriptFunction mSetPendingWeapon;
			ScriptFunction mRemoveFromInventory;
			ScriptFunction mAutoFireWeapon;
			ScriptFunction mSwitchWeaponByEquipPoint;
			ScriptFunction mSwitchToPreviousWeapon;
			ScriptFunction mServerAutoFireWeapon;
		}
		public @property static final
		{
			ScriptFunction GetDeviceByEquipPoint() { return mGetDeviceByEquipPoint ? mGetDeviceByEquipPoint : (mGetDeviceByEquipPoint = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.GetDeviceByEquipPoint")); }
			ScriptFunction AddInventory() { return mAddInventory ? mAddInventory : (mAddInventory = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.AddInventory")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.ReplicatedEvent")); }
			ScriptFunction GetDeviceByWeaponClass() { return mGetDeviceByWeaponClass ? mGetDeviceByWeaponClass : (mGetDeviceByWeaponClass = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.GetDeviceByWeaponClass")); }
			ScriptFunction GetDeviceByWeaponId() { return mGetDeviceByWeaponId ? mGetDeviceByWeaponId : (mGetDeviceByWeaponId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.GetDeviceByWeaponId")); }
			ScriptFunction TrGetWeaponList() { return mTrGetWeaponList ? mTrGetWeaponList : (mTrGetWeaponList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.TrGetWeaponList")); }
			ScriptFunction DiscardEquippedDeployable() { return mDiscardEquippedDeployable ? mDiscardEquippedDeployable : (mDiscardEquippedDeployable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.DiscardEquippedDeployable")); }
			ScriptFunction AdjustWeapon() { return mAdjustWeapon ? mAdjustWeapon : (mAdjustWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.AdjustWeapon")); }
			ScriptFunction SetPendingWeapon() { return mSetPendingWeapon ? mSetPendingWeapon : (mSetPendingWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.SetPendingWeapon")); }
			ScriptFunction RemoveFromInventory() { return mRemoveFromInventory ? mRemoveFromInventory : (mRemoveFromInventory = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.RemoveFromInventory")); }
			ScriptFunction AutoFireWeapon() { return mAutoFireWeapon ? mAutoFireWeapon : (mAutoFireWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.AutoFireWeapon")); }
			ScriptFunction SwitchWeaponByEquipPoint() { return mSwitchWeaponByEquipPoint ? mSwitchWeaponByEquipPoint : (mSwitchWeaponByEquipPoint = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.SwitchWeaponByEquipPoint")); }
			ScriptFunction SwitchToPreviousWeapon() { return mSwitchToPreviousWeapon ? mSwitchToPreviousWeapon : (mSwitchToPreviousWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.SwitchToPreviousWeapon")); }
			ScriptFunction ServerAutoFireWeapon() { return mServerAutoFireWeapon ? mServerAutoFireWeapon : (mServerAutoFireWeapon = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryManager.ServerAutoFireWeapon")); }
		}
	}
	@property final
	{
		auto ref
		{
			TrStatsInterface Stats() { return *cast(TrStatsInterface*)(cast(size_t)cast(void*)this + 540); }
			TrObject.TR_EQUIP_POINT m_PreviousDeviceEquipPoint() { return *cast(TrObject.TR_EQUIP_POINT*)(cast(size_t)cast(void*)this + 536); }
			TrDevice m_RealLastDevice() { return *cast(TrDevice*)(cast(size_t)cast(void*)this + 532); }
		}
		bool c_bRetryEquippingPrimaryWeapon() { return (*cast(uint*)(cast(size_t)cast(void*)this + 544) & 0x1) != 0; }
		bool c_bRetryEquippingPrimaryWeapon(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 544) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 544) &= ~0x1; } return val; }
	}
final:
	TrDevice GetDeviceByEquipPoint(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDeviceByEquipPoint, params.ptr, cast(void*)0);
		return *cast(TrDevice*)&params[4];
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
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	TrDevice GetDeviceByWeaponClass(ScriptClass DeviceClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDeviceByWeaponClass, params.ptr, cast(void*)0);
		return *cast(TrDevice*)&params[4];
	}
	TrDevice GetDeviceByWeaponId(int WeaponId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = WeaponId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDeviceByWeaponId, params.ptr, cast(void*)0);
		return *cast(TrDevice*)&params[4];
	}
	void TrGetWeaponList(ScriptArray!(TrDevice)* WeaponList, bool bInhandOnly)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(TrDevice)*)params.ptr = *WeaponList;
		*cast(bool*)&params[12] = bInhandOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.TrGetWeaponList, params.ptr, cast(void*)0);
		*WeaponList = *cast(ScriptArray!(TrDevice)*)params.ptr;
	}
	void DiscardEquippedDeployable()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DiscardEquippedDeployable, cast(void*)0, cast(void*)0);
	}
	void AdjustWeapon(int NewOffset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewOffset;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustWeapon, params.ptr, cast(void*)0);
	}
	void SetPendingWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPendingWeapon, params.ptr, cast(void*)0);
	}
	void RemoveFromInventory(Inventory ItemToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = ItemToRemove;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveFromInventory, params.ptr, cast(void*)0);
	}
	void AutoFireWeapon(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.AutoFireWeapon, params.ptr, cast(void*)0);
	}
	void SwitchWeaponByEquipPoint(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchWeaponByEquipPoint, params.ptr, cast(void*)0);
	}
	void SwitchToPreviousWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchToPreviousWeapon, cast(void*)0, cast(void*)0);
	}
	void ServerAutoFireWeapon(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerAutoFireWeapon, params.ptr, cast(void*)0);
	}
}
