module UnrealScript.UTGame.UTAirVehicle;

import ScriptClasses;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.UDKBase.UDKProjectile;
import UnrealScript.Engine.Actor;

extern(C++) interface UTAirVehicle : UTVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAirVehicle")); }
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
			ScriptFunction LockOnWarning() { return mLockOnWarning ? mLockOnWarning : (mLockOnWarning = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAirVehicle.LockOnWarning")); }
			ScriptFunction SetDriving() { return mSetDriving ? mSetDriving : (mSetDriving = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAirVehicle.SetDriving")); }
			ScriptFunction RecommendLongRangedAttack() { return mRecommendLongRangedAttack ? mRecommendLongRangedAttack : (mRecommendLongRangedAttack = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAirVehicle.RecommendLongRangedAttack")); }
			ScriptFunction Dodge() { return mDodge ? mDodge : (mDodge = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAirVehicle.Dodge")); }
		}
	}
	@property final
	{
		auto ref
		{
			float LastRadarLockWarnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2776); }
			ScriptString RadarLockMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2764); }
			float PushForce() { return *cast(float*)(cast(size_t)cast(void*)this + 2760); }
		}
		bool bAutoLand() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2756) & 0x1) != 0; }
		bool bAutoLand(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2756) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2756) &= ~0x1; } return val; }
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
