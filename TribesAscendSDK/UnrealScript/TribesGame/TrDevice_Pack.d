module UnrealScript.TribesGame.TrDevice_Pack;

import ScriptClasses;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Pack : TrDevice
{
public extern(D):
	struct PowerPoolCostInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			ScriptClass m_TrFamilyInfo() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
			float m_fPowerPoolCostPerSec() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrDevice_Pack.PowerPoolCostInfo) m_PowerPoolInfo() { return *cast(ScriptArray!(TrDevice_Pack.PowerPoolCostInfo)*)(cast(size_t)cast(void*)this + 2152); }
		float m_CachedPowerPoolCostPerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 2164); }
		float m_fDefaultPowerPoolCostPerSec() { return *cast(float*)(cast(size_t)cast(void*)this + 2148); }
	}
final:
	bool UsesPower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80672], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float GetPowerPool(TrPawn aPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80674], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool CanBeActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80678], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ConsumePowerPool(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80681], params.ptr, cast(void*)0);
	}
	void ToggleActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80688], cast(void*)0, cast(void*)0);
	}
	void ServerToggleActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80689], cast(void*)0, cast(void*)0);
	}
	void ForceActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80690], cast(void*)0, cast(void*)0);
	}
	void ClientForceActive()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80691], cast(void*)0, cast(void*)0);
	}
	void ClientForceInactive()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80692], cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80704], params.ptr, cast(void*)0);
	}
	void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80706], params.ptr, cast(void*)0);
	}
	void SendToFiringState(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80708], params.ptr, cast(void*)0);
	}
}
