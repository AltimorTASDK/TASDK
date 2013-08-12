module UnrealScript.UDKBase.UDKVehicleBase;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SVehicle;
import UnrealScript.UDKBase.UDKCarriedObject;

extern(C++) interface UDKVehicleBase : SVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKVehicleBase")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mHoldGameObject;
			ScriptFunction mSwitchWeapon;
			ScriptFunction mAdjacentSeat;
			ScriptFunction mServerAdjacentSeat;
			ScriptFunction mServerChangeSeat;
			ScriptFunction mGetDamageScaling;
			ScriptFunction mNeedToTurn;
			ScriptFunction mDrivingStatusChanged;
			ScriptFunction mDriverEnter;
			ScriptFunction mApplyWeaponEffects;
			ScriptFunction mGetVehicleDrivingStatName;
			ScriptFunction mEjectDriver;
			ScriptFunction mDetachDriver;
			ScriptFunction mChooseFireMode;
			ScriptFunction mBotFire;
			ScriptFunction mStopFiringWeapon;
			ScriptFunction mDriverLeft;
			ScriptFunction mHandleDeadVehicleDriver;
		}
		public @property static final
		{
			ScriptFunction HoldGameObject() { return mHoldGameObject ? mHoldGameObject : (mHoldGameObject = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.HoldGameObject")); }
			ScriptFunction SwitchWeapon() { return mSwitchWeapon ? mSwitchWeapon : (mSwitchWeapon = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.SwitchWeapon")); }
			ScriptFunction AdjacentSeat() { return mAdjacentSeat ? mAdjacentSeat : (mAdjacentSeat = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.AdjacentSeat")); }
			ScriptFunction ServerAdjacentSeat() { return mServerAdjacentSeat ? mServerAdjacentSeat : (mServerAdjacentSeat = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.ServerAdjacentSeat")); }
			ScriptFunction ServerChangeSeat() { return mServerChangeSeat ? mServerChangeSeat : (mServerChangeSeat = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.ServerChangeSeat")); }
			ScriptFunction GetDamageScaling() { return mGetDamageScaling ? mGetDamageScaling : (mGetDamageScaling = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.GetDamageScaling")); }
			ScriptFunction NeedToTurn() { return mNeedToTurn ? mNeedToTurn : (mNeedToTurn = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.NeedToTurn")); }
			ScriptFunction DrivingStatusChanged() { return mDrivingStatusChanged ? mDrivingStatusChanged : (mDrivingStatusChanged = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.DrivingStatusChanged")); }
			ScriptFunction DriverEnter() { return mDriverEnter ? mDriverEnter : (mDriverEnter = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.DriverEnter")); }
			ScriptFunction ApplyWeaponEffects() { return mApplyWeaponEffects ? mApplyWeaponEffects : (mApplyWeaponEffects = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.ApplyWeaponEffects")); }
			ScriptFunction GetVehicleDrivingStatName() { return mGetVehicleDrivingStatName ? mGetVehicleDrivingStatName : (mGetVehicleDrivingStatName = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.GetVehicleDrivingStatName")); }
			ScriptFunction EjectDriver() { return mEjectDriver ? mEjectDriver : (mEjectDriver = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.EjectDriver")); }
			ScriptFunction DetachDriver() { return mDetachDriver ? mDetachDriver : (mDetachDriver = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.DetachDriver")); }
			ScriptFunction ChooseFireMode() { return mChooseFireMode ? mChooseFireMode : (mChooseFireMode = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.ChooseFireMode")); }
			ScriptFunction BotFire() { return mBotFire ? mBotFire : (mBotFire = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.BotFire")); }
			ScriptFunction StopFiringWeapon() { return mStopFiringWeapon ? mStopFiringWeapon : (mStopFiringWeapon = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.StopFiringWeapon")); }
			ScriptFunction DriverLeft() { return mDriverLeft ? mDriverLeft : (mDriverLeft = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.DriverLeft")); }
			ScriptFunction HandleDeadVehicleDriver() { return mHandleDeadVehicleDriver ? mHandleDeadVehicleDriver : (mHandleDeadVehicleDriver = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKVehicleBase.HandleDeadVehicleDriver")); }
		}
	}
	@property final
	{
		bool bShouldEject() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1544) & 0x1) != 0; }
		bool bShouldEject(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1544) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1544) &= ~0x1; } return val; }
	}
final:
	void HoldGameObject(UDKCarriedObject GameObj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKCarriedObject*)params.ptr = GameObj;
		(cast(ScriptObject)this).ProcessEvent(Functions.HoldGameObject, params.ptr, cast(void*)0);
	}
	void SwitchWeapon(ubyte NewGroup)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.SwitchWeapon, params.ptr, cast(void*)0);
	}
	void AdjacentSeat(int Direction, Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Direction;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjacentSeat, params.ptr, cast(void*)0);
	}
	void ServerAdjacentSeat(int Direction, Controller C)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Direction;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerAdjacentSeat, params.ptr, cast(void*)0);
	}
	void ServerChangeSeat(int RequestedSeat)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = RequestedSeat;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerChangeSeat, params.ptr, cast(void*)0);
	}
	float GetDamageScaling()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDamageScaling, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool NeedToTurn(Vector targ)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = targ;
		(cast(ScriptObject)this).ProcessEvent(Functions.NeedToTurn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void DrivingStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DrivingStatusChanged, cast(void*)0, cast(void*)0);
	}
	bool DriverEnter(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverEnter, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ApplyWeaponEffects(int OverlayFlags, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OverlayFlags;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyWeaponEffects, params.ptr, cast(void*)0);
	}
	ScriptName GetVehicleDrivingStatName()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVehicleDrivingStatName, params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void EjectDriver()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EjectDriver, cast(void*)0, cast(void*)0);
	}
	void DetachDriver(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetachDriver, params.ptr, cast(void*)0);
	}
	ubyte ChooseFireMode()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChooseFireMode, params.ptr, cast(void*)0);
		return params[0];
	}
	bool BotFire(bool bFinished)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bFinished;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotFire, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StopFiringWeapon()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFiringWeapon, cast(void*)0, cast(void*)0);
	}
	void DriverLeft()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DriverLeft, cast(void*)0, cast(void*)0);
	}
	void HandleDeadVehicleDriver()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleDeadVehicleDriver, cast(void*)0, cast(void*)0);
	}
}
