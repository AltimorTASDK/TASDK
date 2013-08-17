module UnrealScript.UDKBase.UDKVehicleBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SVehicle;
import UnrealScript.UDKBase.UDKCarriedObject;

extern(C++) interface UDKVehicleBase : SVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKVehicleBase")()); }
	private static __gshared UDKVehicleBase mDefaultProperties;
	@property final static UDKVehicleBase DefaultProperties() { mixin(MGDPC!(UDKVehicleBase, "UDKVehicleBase UDKBase.Default__UDKVehicleBase")()); }
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
			ScriptFunction HoldGameObject() { mixin(MGF!("mHoldGameObject", "Function UDKBase.UDKVehicleBase.HoldGameObject")()); }
			ScriptFunction SwitchWeapon() { mixin(MGF!("mSwitchWeapon", "Function UDKBase.UDKVehicleBase.SwitchWeapon")()); }
			ScriptFunction AdjacentSeat() { mixin(MGF!("mAdjacentSeat", "Function UDKBase.UDKVehicleBase.AdjacentSeat")()); }
			ScriptFunction ServerAdjacentSeat() { mixin(MGF!("mServerAdjacentSeat", "Function UDKBase.UDKVehicleBase.ServerAdjacentSeat")()); }
			ScriptFunction ServerChangeSeat() { mixin(MGF!("mServerChangeSeat", "Function UDKBase.UDKVehicleBase.ServerChangeSeat")()); }
			ScriptFunction GetDamageScaling() { mixin(MGF!("mGetDamageScaling", "Function UDKBase.UDKVehicleBase.GetDamageScaling")()); }
			ScriptFunction NeedToTurn() { mixin(MGF!("mNeedToTurn", "Function UDKBase.UDKVehicleBase.NeedToTurn")()); }
			ScriptFunction DrivingStatusChanged() { mixin(MGF!("mDrivingStatusChanged", "Function UDKBase.UDKVehicleBase.DrivingStatusChanged")()); }
			ScriptFunction DriverEnter() { mixin(MGF!("mDriverEnter", "Function UDKBase.UDKVehicleBase.DriverEnter")()); }
			ScriptFunction ApplyWeaponEffects() { mixin(MGF!("mApplyWeaponEffects", "Function UDKBase.UDKVehicleBase.ApplyWeaponEffects")()); }
			ScriptFunction GetVehicleDrivingStatName() { mixin(MGF!("mGetVehicleDrivingStatName", "Function UDKBase.UDKVehicleBase.GetVehicleDrivingStatName")()); }
			ScriptFunction EjectDriver() { mixin(MGF!("mEjectDriver", "Function UDKBase.UDKVehicleBase.EjectDriver")()); }
			ScriptFunction DetachDriver() { mixin(MGF!("mDetachDriver", "Function UDKBase.UDKVehicleBase.DetachDriver")()); }
			ScriptFunction ChooseFireMode() { mixin(MGF!("mChooseFireMode", "Function UDKBase.UDKVehicleBase.ChooseFireMode")()); }
			ScriptFunction BotFire() { mixin(MGF!("mBotFire", "Function UDKBase.UDKVehicleBase.BotFire")()); }
			ScriptFunction StopFiringWeapon() { mixin(MGF!("mStopFiringWeapon", "Function UDKBase.UDKVehicleBase.StopFiringWeapon")()); }
			ScriptFunction DriverLeft() { mixin(MGF!("mDriverLeft", "Function UDKBase.UDKVehicleBase.DriverLeft")()); }
			ScriptFunction HandleDeadVehicleDriver() { mixin(MGF!("mHandleDeadVehicleDriver", "Function UDKBase.UDKVehicleBase.HandleDeadVehicleDriver")()); }
		}
	}
	@property final
	{
		bool bShouldEject() { mixin(MGBPC!(1544, 0x1)()); }
		bool bShouldEject(bool val) { mixin(MSBPC!(1544, 0x1)()); }
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
