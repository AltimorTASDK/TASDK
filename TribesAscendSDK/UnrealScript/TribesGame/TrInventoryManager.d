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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[72629], params.ptr, cast(void*)0);
		return *cast(TrDevice*)&params[4];
	}
	bool AddInventory(Inventory pNewItem, bool bDoNotActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Inventory*)params.ptr = pNewItem;
		*cast(bool*)&params[4] = bDoNotActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[76825], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98103], cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98104], params.ptr, cast(void*)0);
	}
	TrDevice GetDeviceByWeaponClass(ScriptClass DeviceClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeviceClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98111], params.ptr, cast(void*)0);
		return *cast(TrDevice*)&params[4];
	}
	TrDevice GetDeviceByWeaponId(int WeaponId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = WeaponId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98117], params.ptr, cast(void*)0);
		return *cast(TrDevice*)&params[4];
	}
	void TrGetWeaponList(ScriptArray!(TrDevice)* WeaponList, bool bInhandOnly)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(TrDevice)*)params.ptr = *WeaponList;
		*cast(bool*)&params[12] = bInhandOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98123], params.ptr, cast(void*)0);
		*WeaponList = *cast(ScriptArray!(TrDevice)*)params.ptr;
	}
	void DiscardEquippedDeployable()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98128], cast(void*)0, cast(void*)0);
	}
	void AdjustWeapon(int NewOffset)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewOffset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98130], params.ptr, cast(void*)0);
	}
	void SetPendingWeapon(Weapon DesiredWeapon)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Weapon*)params.ptr = DesiredWeapon;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98137], params.ptr, cast(void*)0);
	}
	void RemoveFromInventory(Inventory ItemToRemove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Inventory*)params.ptr = ItemToRemove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98146], params.ptr, cast(void*)0);
	}
	void AutoFireWeapon(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98149], params.ptr, cast(void*)0);
	}
	void SwitchWeaponByEquipPoint(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98154], params.ptr, cast(void*)0);
	}
	void SwitchToPreviousWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98158], cast(void*)0, cast(void*)0);
	}
	void ServerAutoFireWeapon(TrObject.TR_EQUIP_POINT EquipPoint)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrObject.TR_EQUIP_POINT*)params.ptr = EquipPoint;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98159], params.ptr, cast(void*)0);
	}
}
