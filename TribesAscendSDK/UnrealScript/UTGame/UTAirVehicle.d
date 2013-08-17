module UnrealScript.UTGame.UTAirVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.UDKBase.UDKProjectile;
import UnrealScript.Engine.Actor;

extern(C++) interface UTAirVehicle : UTVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTAirVehicle")()); }
	private static __gshared UTAirVehicle mDefaultProperties;
	@property final static UTAirVehicle DefaultProperties() { mixin(MGDPC!(UTAirVehicle, "UTAirVehicle UTGame.Default__UTAirVehicle")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mLockOnWarning;
			ScriptFunction mSetDriving;
			ScriptFunction mRecommendLongRangedAttack;
			ScriptFunction mDodge;
		}
		public @property static final
		{
			ScriptFunction LockOnWarning() { mixin(MGF!("mLockOnWarning", "Function UTGame.UTAirVehicle.LockOnWarning")()); }
			ScriptFunction SetDriving() { mixin(MGF!("mSetDriving", "Function UTGame.UTAirVehicle.SetDriving")()); }
			ScriptFunction RecommendLongRangedAttack() { mixin(MGF!("mRecommendLongRangedAttack", "Function UTGame.UTAirVehicle.RecommendLongRangedAttack")()); }
			ScriptFunction Dodge() { mixin(MGF!("mDodge", "Function UTGame.UTAirVehicle.Dodge")()); }
		}
	}
	static struct AutoLanding
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTAirVehicle.AutoLanding")()); }
	}
	@property final
	{
		auto ref
		{
			float LastRadarLockWarnTime() { mixin(MGPC!(float, 2776)()); }
			ScriptString RadarLockMessage() { mixin(MGPC!(ScriptString, 2764)()); }
			float PushForce() { mixin(MGPC!(float, 2760)()); }
		}
		bool bAutoLand() { mixin(MGBPC!(2756, 0x1)()); }
		bool bAutoLand(bool val) { mixin(MSBPC!(2756, 0x1)()); }
	}
final:
	void LockOnWarning(UDKProjectile IncomingMissile)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKProjectile*)params.ptr = IncomingMissile;
		(cast(ScriptObject)this).ProcessEvent(Functions.LockOnWarning, params.ptr, cast(void*)0);
	}
	void SetDriving(bool bNewDriving)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewDriving;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDriving, params.ptr, cast(void*)0);
	}
	bool RecommendLongRangedAttack()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RecommendLongRangedAttack, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool Dodge(Actor.EDoubleClickDir DoubleClickMove)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor.EDoubleClickDir*)params.ptr = DoubleClickMove;
		(cast(ScriptObject)this).ProcessEvent(Functions.Dodge, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
