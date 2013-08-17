module UnrealScript.TribesGame.TrDevice_LightAssaultRifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AssaultRifle;

extern(C++) interface TrDevice_LightAssaultRifle : TrDevice_AssaultRifle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_LightAssaultRifle")()); }
	private static __gshared TrDevice_LightAssaultRifle mDefaultProperties;
	@property final static TrDevice_LightAssaultRifle DefaultProperties() { mixin(MGDPC!(TrDevice_LightAssaultRifle, "TrDevice_LightAssaultRifle TribesGame.Default__TrDevice_LightAssaultRifle")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnReloadComplete;
			ScriptFunction mStopFire;
			ScriptFunction mStartFire;
			ScriptFunction mRefireTimer;
			ScriptFunction mEndFire;
			ScriptFunction mFireAmmunition;
			ScriptFunction mPlayFiringSound;
			ScriptFunction mServerStopFire;
		}
		public @property static final
		{
			ScriptFunction OnReloadComplete() { mixin(MGF!("mOnReloadComplete", "Function TribesGame.TrDevice_LightAssaultRifle.OnReloadComplete")()); }
			ScriptFunction StopFire() { mixin(MGF!("mStopFire", "Function TribesGame.TrDevice_LightAssaultRifle.StopFire")()); }
			ScriptFunction StartFire() { mixin(MGF!("mStartFire", "Function TribesGame.TrDevice_LightAssaultRifle.StartFire")()); }
			ScriptFunction RefireTimer() { mixin(MGF!("mRefireTimer", "Function TribesGame.TrDevice_LightAssaultRifle.RefireTimer")()); }
			ScriptFunction EndFire() { mixin(MGF!("mEndFire", "Function TribesGame.TrDevice_LightAssaultRifle.EndFire")()); }
			ScriptFunction FireAmmunition() { mixin(MGF!("mFireAmmunition", "Function TribesGame.TrDevice_LightAssaultRifle.FireAmmunition")()); }
			ScriptFunction PlayFiringSound() { mixin(MGF!("mPlayFiringSound", "Function TribesGame.TrDevice_LightAssaultRifle.PlayFiringSound")()); }
			ScriptFunction ServerStopFire() { mixin(MGF!("mServerStopFire", "Function TribesGame.TrDevice_LightAssaultRifle.ServerStopFire")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fBurtShotRefireTime() { mixin(MGPC!(float, 2184)()); }
			int m_nShotsSoFar() { mixin(MGPC!(int, 2176)()); }
			int m_nShotBurstCount() { mixin(MGPC!(int, 2172)()); }
		}
		bool m_bHoldingFire() { mixin(MGBPC!(2180, 0x1)()); }
		bool m_bHoldingFire(bool val) { mixin(MSBPC!(2180, 0x1)()); }
	}
final:
	void OnReloadComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReloadComplete, cast(void*)0, cast(void*)0);
	}
	void StopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StopFire, params.ptr, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
	void RefireTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RefireTimer, cast(void*)0, cast(void*)0);
	}
	void EndFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.EndFire, params.ptr, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	void PlayFiringSound()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayFiringSound, cast(void*)0, cast(void*)0);
	}
	void ServerStopFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.ServerStopFire, params.ptr, cast(void*)0);
	}
}
