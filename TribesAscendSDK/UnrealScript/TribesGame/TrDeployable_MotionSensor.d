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
public extern(D):
	struct MotionSensorEnemyInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref
		{
			float LastDetectedTimeStamp() { return *cast(float*)(cast(size_t)&this + 16); }
			Vector LastLocation() { return *cast(Vector*)(cast(size_t)&this + 4); }
			TrPawn SensedPawn() { return *cast(TrPawn*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrDeployable_MotionSensor.MotionSensorEnemyInfo) m_EnemyPawnsInRange() { return *cast(ScriptArray!(TrDeployable_MotionSensor.MotionSensorEnemyInfo)*)(cast(size_t)cast(void*)this + 1540); }
			Texture2D m_AlarmIcon() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 1616); }
			Vector LastCameraPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1604); }
			Vector LastCameraDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1592); }
			Vector LastScreenLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1580); }
			float m_IconAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 1576); }
			float m_fHUDAlarmTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1572); }
			float m_fLastAlarmTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 1564); }
			float m_fTimeBetweenAlarms() { return *cast(float*)(cast(size_t)cast(void*)this + 1560); }
			float m_fMotionSenseExpireTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1556); }
		}
		bool m_bDrawHUDAlarm() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1568) & 0x1) != 0; }
		bool m_bDrawHUDAlarm(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1568) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1568) &= ~0x1; } return val; }
	}
final:
	void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80134], cast(void*)0, cast(void*)0);
	}
	void OnPawnDetectedByCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80135], params.ptr, cast(void*)0);
	}
	void OnPawnExitedCollisionProxy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80138], params.ptr, cast(void*)0);
	}
	void UpdateInRangeEnemyPawns()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80141], cast(void*)0, cast(void*)0);
	}
	bool CanSetOffAlarm(TrPawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80145], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ModifyDetectedPawn(Pawn DetectedPawn, bool detected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = DetectedPawn;
		*cast(bool*)&params[4] = detected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80148], params.ptr, cast(void*)0);
	}
	void PlayAlarm()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80151], cast(void*)0, cast(void*)0);
	}
	void TriggerHUDAlarm()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80156], cast(void*)0, cast(void*)0);
	}
	void HideHUDAlarm()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80157], cast(void*)0, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80158], params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80169], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
