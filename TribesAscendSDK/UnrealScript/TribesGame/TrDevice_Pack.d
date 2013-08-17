module UnrealScript.TribesGame.TrDevice_Pack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Pack : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_Pack")); }
	private static __gshared TrDevice_Pack mDefaultProperties;
	@property final static TrDevice_Pack DefaultProperties() { mixin(MGDPC("TrDevice_Pack", "TrDevice_Pack TribesGame.Default__TrDevice_Pack")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUsesPower;
			ScriptFunction mGetPowerPool;
			ScriptFunction mCanBeActive;
			ScriptFunction mConsumePowerPool;
			ScriptFunction mToggleActivate;
			ScriptFunction mServerToggleActivate;
			ScriptFunction mForceActivate;
			ScriptFunction mClientForceActive;
			ScriptFunction mClientForceInactive;
			ScriptFunction mStartFire;
			ScriptFunction mStopFire;
			ScriptFunction mSendToFiringState;
		}
		public @property static final
		{
			ScriptFunction UsesPower() { mixin(MGF("mUsesPower", "Function TribesGame.TrDevice_Pack.UsesPower")); }
			ScriptFunction GetPowerPool() { mixin(MGF("mGetPowerPool", "Function TribesGame.TrDevice_Pack.GetPowerPool")); }
			ScriptFunction CanBeActive() { mixin(MGF("mCanBeActive", "Function TribesGame.TrDevice_Pack.CanBeActive")); }
			ScriptFunction ConsumePowerPool() { mixin(MGF("mConsumePowerPool", "Function TribesGame.TrDevice_Pack.ConsumePowerPool")); }
			ScriptFunction ToggleActivate() { mixin(MGF("mToggleActivate", "Function TribesGame.TrDevice_Pack.ToggleActivate")); }
			ScriptFunction ServerToggleActivate() { mixin(MGF("mServerToggleActivate", "Function TribesGame.TrDevice_Pack.ServerToggleActivate")); }
			ScriptFunction ForceActivate() { mixin(MGF("mForceActivate", "Function TribesGame.TrDevice_Pack.ForceActivate")); }
			ScriptFunction ClientForceActive() { mixin(MGF("mClientForceActive", "Function TribesGame.TrDevice_Pack.ClientForceActive")); }
			ScriptFunction ClientForceInactive() { mixin(MGF("mClientForceInactive", "Function TribesGame.TrDevice_Pack.ClientForceInactive")); }
			ScriptFunction StartFire() { mixin(MGF("mStartFire", "Function TribesGame.TrDevice_Pack.StartFire")); }
			ScriptFunction StopFire() { mixin(MGF("mStopFire", "Function TribesGame.TrDevice_Pack.StopFire")); }
			ScriptFunction SendToFiringState() { mixin(MGF("mSendToFiringState", "Function TribesGame.TrDevice_Pack.SendToFiringState")); }
		}
	}
	struct PowerPoolCostInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrDevice_Pack.PowerPoolCostInfo")); }
		@property final auto ref
		{
			ScriptClass m_TrFamilyInfo() { mixin(MGPS("ScriptClass", 4)); }
			float m_fPowerPoolCostPerSec() { mixin(MGPS("float", 0)); }
		}
	}
	static struct Activated
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrDevice_Pack.Activated")); }
	}
	@property final auto ref
	{
		ScriptArray!(TrDevice_Pack.PowerPoolCostInfo) m_PowerPoolInfo() { mixin(MGPC("ScriptArray!(TrDevice_Pack.PowerPoolCostInfo)", 2152)); }
		float m_CachedPowerPoolCostPerSec() { mixin(MGPC("float", 2164)); }
		float m_fDefaultPowerPoolCostPerSec() { mixin(MGPC("float", 2148)); }
	}
final:
	bool UsesPower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.UsesPower, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	float GetPowerPool(TrPawn aPawn)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPowerPool, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	bool CanBeActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanBeActive, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ConsumePowerPool(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsumePowerPool, params.ptr, cast(void*)0);
	}
	void ToggleActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleActivate, cast(void*)0, cast(void*)0);
	}
	void ServerToggleActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerToggleActivate, cast(void*)0, cast(void*)0);
	}
	void ForceActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceActivate, cast(void*)0, cast(void*)0);
	}
	void ClientForceActive()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientForceActive, cast(void*)0, cast(void*)0);
	}
	void ClientForceInactive()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientForceInactive, cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFire, params.ptr, cast(void*)0);
	}
	void SendToFiringState(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendToFiringState, params.ptr, cast(void*)0);
	}
}
