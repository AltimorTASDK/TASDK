module UnrealScript.TribesGame.TrCallIn_CrashLandInfo;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Info;

extern(C++) interface TrCallIn_CrashLandInfo : Info
{
public extern(D):
	@property final
	{
		auto ref
		{
			float MomentumTransfer() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			float Damage() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			float DamageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
			ScriptClass DamageTypeClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 516); }
			Vector r_CrashLandNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 504); }
			Vector r_CrashLandPoint() { return *cast(Vector*)(cast(size_t)cast(void*)this + 492); }
			float r_fCrashLandTime() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			Controller m_Owner() { return *cast(Controller*)(cast(size_t)cast(void*)this + 480); }
			ScriptClass m_ItemToDeploy() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 476); }
		}
		bool r_bPodLanded() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
		bool r_bPodLanded(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
	}
final:
	bool SpawnCrashLandInfo(Controller Initializer, float CrashLandTime, Vector CrashLandPoint, Vector CrashLandNormal, ScriptClass ItemInDeliveryPod)
	{
		ubyte params[40];
		params[] = 0;
		*cast(Controller*)params.ptr = Initializer;
		*cast(float*)&params[4] = CrashLandTime;
		*cast(Vector*)&params[8] = CrashLandPoint;
		*cast(Vector*)&params[20] = CrashLandNormal;
		*cast(ScriptClass*)&params[32] = ItemInDeliveryPod;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73992], params.ptr, cast(void*)0);
		return *cast(bool*)&params[36];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74000], cast(void*)0, cast(void*)0);
	}
	void InitTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74001], cast(void*)0, cast(void*)0);
	}
	void DeliveryPodLanded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74005], cast(void*)0, cast(void*)0);
	}
	void MoveSameTeamPawn(TrPawn PawnToMove)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = PawnToMove;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74007], params.ptr, cast(void*)0);
	}
	void PerformLandingDamage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74013], cast(void*)0, cast(void*)0);
	}
}
