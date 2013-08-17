module UnrealScript.TribesGame.TrDeployable_Sensor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable;

extern(C++) interface TrDeployable_Sensor : TrDeployable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeployable_Sensor")()); }
	private static __gshared TrDeployable_Sensor mDefaultProperties;
	@property final static TrDeployable_Sensor DefaultProperties() { mixin(MGDPC!(TrDeployable_Sensor, "TrDeployable_Sensor TribesGame.Default__TrDeployable_Sensor")()); }
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
			ScriptFunction CheckLOS() { mixin(MGF!("mCheckLOS", "Function TribesGame.TrDeployable_Sensor.CheckLOS")()); }
			ScriptFunction DeployComplete() { mixin(MGF!("mDeployComplete", "Function TribesGame.TrDeployable_Sensor.DeployComplete")()); }
			ScriptFunction ModifyDetectedPawn() { mixin(MGF!("mModifyDetectedPawn", "Function TribesGame.TrDeployable_Sensor.ModifyDetectedPawn")()); }
			ScriptFunction SetPowered() { mixin(MGF!("mSetPowered", "Function TribesGame.TrDeployable_Sensor.SetPowered")()); }
			ScriptFunction AddDetectedPawn() { mixin(MGF!("mAddDetectedPawn", "Function TribesGame.TrDeployable_Sensor.AddDetectedPawn")()); }
			ScriptFunction RemoveDetectedPawn() { mixin(MGF!("mRemoveDetectedPawn", "Function TribesGame.TrDeployable_Sensor.RemoveDetectedPawn")()); }
			ScriptFunction ReleaseAllDetectedPawns() { mixin(MGF!("mReleaseAllDetectedPawns", "Function TribesGame.TrDeployable_Sensor.ReleaseAllDetectedPawns")()); }
			ScriptFunction ManageEnemiesOutOfSight() { mixin(MGF!("mManageEnemiesOutOfSight", "Function TribesGame.TrDeployable_Sensor.ManageEnemiesOutOfSight")()); }
			ScriptFunction ReleaseOutOfSightEnemies() { mixin(MGF!("mReleaseOutOfSightEnemies", "Function TribesGame.TrDeployable_Sensor.ReleaseOutOfSightEnemies")()); }
			ScriptFunction ShouldDetectPawn() { mixin(MGF!("mShouldDetectPawn", "Function TribesGame.TrDeployable_Sensor.ShouldDetectPawn")()); }
			ScriptFunction OnPawnDetectedByCollisionProxy() { mixin(MGF!("mOnPawnDetectedByCollisionProxy", "Function TribesGame.TrDeployable_Sensor.OnPawnDetectedByCollisionProxy")()); }
			ScriptFunction IsInRange() { mixin(MGF!("mIsInRange", "Function TribesGame.TrDeployable_Sensor.IsInRange")()); }
			ScriptFunction OnPawnExitedCollisionProxy() { mixin(MGF!("mOnPawnExitedCollisionProxy", "Function TribesGame.TrDeployable_Sensor.OnPawnExitedCollisionProxy")()); }
			ScriptFunction IsDeployed() { mixin(MGF!("mIsDeployed", "Function TribesGame.TrDeployable_Sensor.IsDeployed")()); }
			ScriptFunction ScanTargets() { mixin(MGF!("mScanTargets", "Function TribesGame.TrDeployable_Sensor.ScanTargets")()); }
			ScriptFunction OnPowerStatusChanged() { mixin(MGF!("mOnPowerStatusChanged", "Function TribesGame.TrDeployable_Sensor.OnPowerStatusChanged")()); }
			ScriptFunction GetMarker() { mixin(MGF!("mGetMarker", "Function TribesGame.TrDeployable_Sensor.GetMarker")()); }
		}
	}
	static struct BlownUp
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrDeployable_Sensor.BlownUp")()); }
	}
	@property final auto ref
	{
		ScriptArray!(Pawn) m_DetectedPawns() { mixin(MGPC!(ScriptArray!(Pawn), 1524)()); }
		float m_fDetectionZOffset() { mixin(MGPC!(float, 1536)()); }
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
