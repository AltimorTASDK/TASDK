module UnrealScript.TribesGame.TrDeployable_MotionSensor;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrDeployable_Sensor;

extern(C++) interface TrDeployable_MotionSensor : TrDeployable_Sensor
{
	struct MotionSensorEnemyInfo
	{
		public @property final auto ref float LastDetectedTimeStamp() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __LastDetectedTimeStamp[4];
		public @property final auto ref Vector LastLocation() { return *cast(Vector*)(cast(size_t)&this + 4); }
		private ubyte __LastLocation[12];
		public @property final auto ref TrPawn SensedPawn() { return *cast(TrPawn*)(cast(size_t)&this + 0); }
		private ubyte __SensedPawn[4];
	}
	public @property final auto ref ScriptArray!(TrDeployable_MotionSensor.MotionSensorEnemyInfo) m_EnemyPawnsInRange() { return *cast(ScriptArray!(TrDeployable_MotionSensor.MotionSensorEnemyInfo)*)(cast(size_t)cast(void*)this + 1540); }
	public @property final auto ref Texture2D m_AlarmIcon() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1616); }
	public @property final auto ref Vector LastCameraPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1604); }
	public @property final auto ref Vector LastCameraDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1592); }
	public @property final auto ref Vector LastScreenLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1580); }
	public @property final auto ref float m_IconAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 1576); }
	public @property final auto ref float m_fHUDAlarmTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
	public @property final bool m_bDrawHUDAlarm() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1568) & 0x1) != 0; }
	public @property final bool m_bDrawHUDAlarm(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1568) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1568) &= ~0x1; } return val; }
	public @property final auto ref float m_fLastAlarmTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
	public @property final auto ref float m_fTimeBetweenAlarms() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
	public @property final auto ref float m_fMotionSenseExpireTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1556); }
	final void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80134], cast(void*)0, cast(void*)0);
	}
	final void OnPawnDetectedByCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80135], params.ptr, cast(void*)0);
	}
	final void OnPawnExitedCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80138], params.ptr, cast(void*)0);
	}
	final void UpdateInRangeEnemyPawns()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80141], cast(void*)0, cast(void*)0);
	}
	final bool CanSetOffAlarm(TrPawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80145], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void ModifyDetectedPawn(Pawn DetectedPawn, bool detected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = DetectedPawn;
		*cast(bool*)&params[4] = detected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80148], params.ptr, cast(void*)0);
	}
	final void PlayAlarm()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80151], cast(void*)0, cast(void*)0);
	}
	final void TriggerHUDAlarm()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80156], cast(void*)0, cast(void*)0);
	}
	final void HideHUDAlarm()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80157], cast(void*)0, cast(void*)0);
	}
	final void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80158], params.ptr, cast(void*)0);
	}
	final Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80169], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
