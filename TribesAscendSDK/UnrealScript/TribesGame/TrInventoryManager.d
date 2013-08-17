module UnrealScript.TribesGame.TrInventoryManager;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrInventoryManager")()); }
	private static __gshared TrInventoryManager mDefaultProperties;
	@property final static TrInventoryManager DefaultProperties() { mixin(MGDPC!(TrInventoryManager, "TrInventoryManager TribesGame.Default__TrInventoryManager")()); }
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
			ScriptFunction GetDeviceByEquipPoint() { mixin(MGF!("mGetDeviceByEquipPoint", "Function TribesGame.TrInventoryManager.GetDeviceByEquipPoint")()); }
			ScriptFunction AddInventory() { mixin(MGF!("mAddInventory", "Function TribesGame.TrInventoryManager.AddInventory")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrInventoryManager.PostBeginPlay")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrInventoryManager.ReplicatedEvent")()); }
			ScriptFunction GetDeviceByWeaponClass() { mixin(MGF!("mGetDeviceByWeaponClass", "Function TribesGame.TrInventoryManager.GetDeviceByWeaponClass")()); }
			ScriptFunction GetDeviceByWeaponId() { mixin(MGF!("mGetDeviceByWeaponId", "Function TribesGame.TrInventoryManager.GetDeviceByWeaponId")()); }
			ScriptFunction TrGetWeaponList() { mixin(MGF!("mTrGetWeaponList", "Function TribesGame.TrInventoryManager.TrGetWeaponList")()); }
			ScriptFunction DiscardEquippedDeployable() { mixin(MGF!("mDiscardEquippedDeployable", "Function TribesGame.TrInventoryManager.DiscardEquippedDeployable")()); }
			ScriptFunction AdjustWeapon() { mixin(MGF!("mAdjustWeapon", "Function TribesGame.TrInventoryManager.AdjustWeapon")()); }
			ScriptFunction SetPendingWeapon() { mixin(MGF!("mSetPendingWeapon", "Function TribesGame.TrInventoryManager.SetPendingWeapon")()); }
			ScriptFunction RemoveFromInventory() { mixin(MGF!("mRemoveFromInventory", "Function TribesGame.TrInventoryManager.RemoveFromInventory")()); }
			ScriptFunction AutoFireWeapon() { mixin(MGF!("mAutoFireWeapon", "Function TribesGame.TrInventoryManager.AutoFireWeapon")()); }
			ScriptFunction SwitchWeaponByEquipPoint() { mixin(MGF!("mSwitchWeaponByEquipPoint", "Function TribesGame.TrInventoryManager.SwitchWeaponByEquipPoint")()); }
			ScriptFunction SwitchToPreviousWeapon() { mixin(MGF!("mSwitchToPreviousWeapon", "Function TribesGame.TrInventoryManager.SwitchToPreviousWeapon")()); }
			ScriptFunction ServerAutoFireWeapon() { mixin(MGF!("mServerAutoFireWeapon", "Function TribesGame.TrInventoryManager.ServerAutoFireWeapon")()); }
		}
	}
	@property final
	{
		auto ref
		{
			TrStatsInterface Stats() { mixin(MGPC!(TrStatsInterface, 540)()); }
			TrObject.TR_EQUIP_POINT m_PreviousDeviceEquipPoint() { mixin(MGPC!(TrObject.TR_EQUIP_POINT, 536)()); }
			TrDevice m_RealLastDevice() { mixin(MGPC!(TrDevice, 532)()); }
		}
		bool c_bRetryEquippingPrimaryWeapon() { mixin(MGBPC!(544, 0x1)()); }
		bool c_bRetryEquippingPrimaryWeapon(bool val) { mixin(MSBPC!(544, 0x1)()); }
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
	void TrGetWeaponList(ref ScriptArray!(TrDevice) WeaponList, bool bInhandOnly)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(TrDevice)*)params.ptr = WeaponList;
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
