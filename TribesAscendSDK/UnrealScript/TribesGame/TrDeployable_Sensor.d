module UnrealScript.TribesGame.TrDeployable_Sensor;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable;

extern(C++) interface TrDeployable_Sensor : TrDeployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_Sensor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCheckLOS;
			ScriptFunction mDeployComplete;
			ScriptFunction mModifyDetectedPawn;
			ScriptFunction mSetPowered;
			ScriptFunction mAddDetectedPawn;
			ScriptFunction mRemoveDetectedPawn;
			ScriptFunction mReleaseAllDetectedPawns;
			ScriptFunction mManageEnemiesOutOfSight;
			ScriptFunction mReleaseOutOfSightEnemies;
			ScriptFunction mShouldDetectPawn;
			ScriptFunction mOnPawnDetectedByCollisionProxy;
			ScriptFunction mIsInRange;
			ScriptFunction mOnPawnExitedCollisionProxy;
			ScriptFunction mIsDeployed;
			ScriptFunction mScanTargets;
			ScriptFunction mOnPowerStatusChanged;
			ScriptFunction mGetMarker;
		}
		public @property static final
		{
			ScriptFunction CheckLOS() { return mCheckLOS ? mCheckLOS : (mCheckLOS = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.CheckLOS")); }
			ScriptFunction DeployComplete() { return mDeployComplete ? mDeployComplete : (mDeployComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.DeployComplete")); }
			ScriptFunction ModifyDetectedPawn() { return mModifyDetectedPawn ? mModifyDetectedPawn : (mModifyDetectedPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.ModifyDetectedPawn")); }
			ScriptFunction SetPowered() { return mSetPowered ? mSetPowered : (mSetPowered = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.SetPowered")); }
			ScriptFunction AddDetectedPawn() { return mAddDetectedPawn ? mAddDetectedPawn : (mAddDetectedPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.AddDetectedPawn")); }
			ScriptFunction RemoveDetectedPawn() { return mRemoveDetectedPawn ? mRemoveDetectedPawn : (mRemoveDetectedPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.RemoveDetectedPawn")); }
			ScriptFunction ReleaseAllDetectedPawns() { return mReleaseAllDetectedPawns ? mReleaseAllDetectedPawns : (mReleaseAllDetectedPawns = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.ReleaseAllDetectedPawns")); }
			ScriptFunction ManageEnemiesOutOfSight() { return mManageEnemiesOutOfSight ? mManageEnemiesOutOfSight : (mManageEnemiesOutOfSight = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.ManageEnemiesOutOfSight")); }
			ScriptFunction ReleaseOutOfSightEnemies() { return mReleaseOutOfSightEnemies ? mReleaseOutOfSightEnemies : (mReleaseOutOfSightEnemies = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.ReleaseOutOfSightEnemies")); }
			ScriptFunction ShouldDetectPawn() { return mShouldDetectPawn ? mShouldDetectPawn : (mShouldDetectPawn = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.ShouldDetectPawn")); }
			ScriptFunction OnPawnDetectedByCollisionProxy() { return mOnPawnDetectedByCollisionProxy ? mOnPawnDetectedByCollisionProxy : (mOnPawnDetectedByCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.OnPawnDetectedByCollisionProxy")); }
			ScriptFunction IsInRange() { return mIsInRange ? mIsInRange : (mIsInRange = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.IsInRange")); }
			ScriptFunction OnPawnExitedCollisionProxy() { return mOnPawnExitedCollisionProxy ? mOnPawnExitedCollisionProxy : (mOnPawnExitedCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.OnPawnExitedCollisionProxy")); }
			ScriptFunction IsDeployed() { return mIsDeployed ? mIsDeployed : (mIsDeployed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.IsDeployed")); }
			ScriptFunction ScanTargets() { return mScanTargets ? mScanTargets : (mScanTargets = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.ScanTargets")); }
			ScriptFunction OnPowerStatusChanged() { return mOnPowerStatusChanged ? mOnPowerStatusChanged : (mOnPowerStatusChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.OnPowerStatusChanged")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_Sensor.GetMarker")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(Pawn) m_DetectedPawns() { return *cast(ScriptArray!(Pawn)*)(cast(size_t)cast(void*)this + 1524); }
		float m_fDetectionZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1536); }
	}
final:
	bool CheckLOS(Pawn Target)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckLOS, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeployComplete, cast(void*)0, cast(void*)0);
	}
	void ModifyDetectedPawn(Pawn DetectedPawn, bool detected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = DetectedPawn;
		*cast(bool*)&params[4] = detected;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyDetectedPawn, params.ptr, cast(void*)0);
	}
	void SetPowered(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPowered, params.ptr, cast(void*)0);
	}
	void AddDetectedPawn(Pawn DetectedPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = DetectedPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddDetectedPawn, params.ptr, cast(void*)0);
	}
	void RemoveDetectedPawn(Pawn DetectedPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = DetectedPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveDetectedPawn, params.ptr, cast(void*)0);
	}
	void ReleaseAllDetectedPawns()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReleaseAllDetectedPawns, cast(void*)0, cast(void*)0);
	}
	void ManageEnemiesOutOfSight()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ManageEnemiesOutOfSight, cast(void*)0, cast(void*)0);
	}
	void ReleaseOutOfSightEnemies()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReleaseOutOfSightEnemies, cast(void*)0, cast(void*)0);
	}
	bool ShouldDetectPawn(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldDetectPawn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnPawnDetectedByCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnDetectedByCollisionProxy, params.ptr, cast(void*)0);
	}
	bool IsInRange(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsInRange, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnPawnExitedCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnExitedCollisionProxy, params.ptr, cast(void*)0);
	}
	bool IsDeployed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsDeployed, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ScanTargets()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ScanTargets, cast(void*)0, cast(void*)0);
	}
	void OnPowerStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPowerStatusChanged, cast(void*)0, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
