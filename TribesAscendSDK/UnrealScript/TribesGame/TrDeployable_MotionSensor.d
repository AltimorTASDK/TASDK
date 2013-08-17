module UnrealScript.TribesGame.TrDeployable_MotionSensor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrDeployable_Sensor;

extern(C++) interface TrDeployable_MotionSensor : TrDeployable_Sensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployable_MotionSensor")); }
	private static __gshared TrDeployable_MotionSensor mDefaultProperties;
	@property final static TrDeployable_MotionSensor DefaultProperties() { mixin(MGDPC("TrDeployable_MotionSensor", "TrDeployable_MotionSensor TribesGame.Default__TrDeployable_MotionSensor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDeployComplete;
			ScriptFunction mOnPawnDetectedByCollisionProxy;
			ScriptFunction mOnPawnExitedCollisionProxy;
			ScriptFunction mUpdateInRangeEnemyPawns;
			ScriptFunction mCanSetOffAlarm;
			ScriptFunction mModifyDetectedPawn;
			ScriptFunction mPlayAlarm;
			ScriptFunction mTriggerHUDAlarm;
			ScriptFunction mHideHUDAlarm;
			ScriptFunction mPostRenderFor;
			ScriptFunction mGetMarker;
		}
		public @property static final
		{
			ScriptFunction DeployComplete() { mixin(MGF("mDeployComplete", "Function TribesGame.TrDeployable_MotionSensor.DeployComplete")); }
			ScriptFunction OnPawnDetectedByCollisionProxy() { mixin(MGF("mOnPawnDetectedByCollisionProxy", "Function TribesGame.TrDeployable_MotionSensor.OnPawnDetectedByCollisionProxy")); }
			ScriptFunction OnPawnExitedCollisionProxy() { mixin(MGF("mOnPawnExitedCollisionProxy", "Function TribesGame.TrDeployable_MotionSensor.OnPawnExitedCollisionProxy")); }
			ScriptFunction UpdateInRangeEnemyPawns() { mixin(MGF("mUpdateInRangeEnemyPawns", "Function TribesGame.TrDeployable_MotionSensor.UpdateInRangeEnemyPawns")); }
			ScriptFunction CanSetOffAlarm() { mixin(MGF("mCanSetOffAlarm", "Function TribesGame.TrDeployable_MotionSensor.CanSetOffAlarm")); }
			ScriptFunction ModifyDetectedPawn() { mixin(MGF("mModifyDetectedPawn", "Function TribesGame.TrDeployable_MotionSensor.ModifyDetectedPawn")); }
			ScriptFunction PlayAlarm() { mixin(MGF("mPlayAlarm", "Function TribesGame.TrDeployable_MotionSensor.PlayAlarm")); }
			ScriptFunction TriggerHUDAlarm() { mixin(MGF("mTriggerHUDAlarm", "Function TribesGame.TrDeployable_MotionSensor.TriggerHUDAlarm")); }
			ScriptFunction HideHUDAlarm() { mixin(MGF("mHideHUDAlarm", "Function TribesGame.TrDeployable_MotionSensor.HideHUDAlarm")); }
			ScriptFunction PostRenderFor() { mixin(MGF("mPostRenderFor", "Function TribesGame.TrDeployable_MotionSensor.PostRenderFor")); }
			ScriptFunction GetMarker() { mixin(MGF("mGetMarker", "Function TribesGame.TrDeployable_MotionSensor.GetMarker")); }
		}
	}
	struct MotionSensorEnemyInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrDeployable_MotionSensor.MotionSensorEnemyInfo")); }
		@property final auto ref
		{
			float LastDetectedTimeStamp() { mixin(MGPS("float", 16)); }
			Vector LastLocation() { mixin(MGPS("Vector", 4)); }
			TrPawn SensedPawn() { mixin(MGPS("TrPawn", 0)); }
		}
	}
	static struct BlownUp
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrDeployable_MotionSensor.BlownUp")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrDeployable_MotionSensor.MotionSensorEnemyInfo) m_EnemyPawnsInRange() { mixin(MGPC("ScriptArray!(TrDeployable_MotionSensor.MotionSensorEnemyInfo)", 1540)); }
			Texture2D m_AlarmIcon() { mixin(MGPC("Texture2D", 1616)); }
			Vector LastCameraPos() { mixin(MGPC("Vector", 1604)); }
			Vector LastCameraDir() { mixin(MGPC("Vector", 1592)); }
			Vector LastScreenLoc() { mixin(MGPC("Vector", 1580)); }
			float m_IconAlpha() { mixin(MGPC("float", 1576)); }
			float m_fHUDAlarmTime() { mixin(MGPC("float", 1572)); }
			float m_fLastAlarmTimestamp() { mixin(MGPC("float", 1564)); }
			float m_fTimeBetweenAlarms() { mixin(MGPC("float", 1560)); }
			float m_fMotionSenseExpireTime() { mixin(MGPC("float", 1556)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_AlarmSound'!
		}
		bool m_bDrawHUDAlarm() { mixin(MGBPC(1568, 0x1)); }
		bool m_bDrawHUDAlarm(bool val) { mixin(MSBPC(1568, 0x1)); }
	}
final:
	void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DeployComplete, cast(void*)0, cast(void*)0);
	}
	void OnPawnDetectedByCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnDetectedByCollisionProxy, params.ptr, cast(void*)0);
	}
	void OnPawnExitedCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnExitedCollisionProxy, params.ptr, cast(void*)0);
	}
	void UpdateInRangeEnemyPawns()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateInRangeEnemyPawns, cast(void*)0, cast(void*)0);
	}
	bool CanSetOffAlarm(TrPawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSetOffAlarm, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ModifyDetectedPawn(Pawn DetectedPawn, bool detected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = DetectedPawn;
		*cast(bool*)&params[4] = detected;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyDetectedPawn, params.ptr, cast(void*)0);
	}
	void PlayAlarm()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAlarm, cast(void*)0, cast(void*)0);
	}
	void TriggerHUDAlarm()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TriggerHUDAlarm, cast(void*)0, cast(void*)0);
	}
	void HideHUDAlarm()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideHUDAlarm, cast(void*)0, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
