module UnrealScript.TribesGame.TrDevice_LightAssaultRifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AssaultRifle;

extern(C++) interface TrDevice_LightAssaultRifle : TrDevice_AssaultRifle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_LightAssaultRifle")); }
	private static __gshared TrDevice_LightAssaultRifle mDefaultProperties;
	@property final static TrDevice_LightAssaultRifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_LightAssaultRifle)("TrDevice_LightAssaultRifle TribesGame.Default__TrDevice_LightAssaultRifle")); }
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
			ScriptFunction OnReloadComplete() { return mOnReloadComplete ? mOnReloadComplete : (mOnReloadComplete = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_LightAssaultRifle.OnReloadComplete")); }
			ScriptFunction StopFire() { return mStopFire ? mStopFire : (mStopFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_LightAssaultRifle.StopFire")); }
			ScriptFunction StartFire() { return mStartFire ? mStartFire : (mStartFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_LightAssaultRifle.StartFire")); }
			ScriptFunction RefireTimer() { return mRefireTimer ? mRefireTimer : (mRefireTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_LightAssaultRifle.RefireTimer")); }
			ScriptFunction EndFire() { return mEndFire ? mEndFire : (mEndFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_LightAssaultRifle.EndFire")); }
			ScriptFunction FireAmmunition() { return mFireAmmunition ? mFireAmmunition : (mFireAmmunition = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_LightAssaultRifle.FireAmmunition")); }
			ScriptFunction PlayFiringSound() { return mPlayFiringSound ? mPlayFiringSound : (mPlayFiringSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_LightAssaultRifle.PlayFiringSound")); }
			ScriptFunction ServerStopFire() { return mServerStopFire ? mServerStopFire : (mServerStopFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_LightAssaultRifle.ServerStopFire")); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fBurtShotRefireTime() { return *cast(float*)(cast(size_t)cast(void*)this + 2184); }
			int m_nShotsSoFar() { return *cast(int*)(cast(size_t)cast(void*)this + 2176); }
			int m_nShotBurstCount() { return *cast(int*)(cast(size_t)cast(void*)this + 2172); }
		}
		bool m_bHoldingFire() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2180) & 0x1) != 0; }
		bool m_bHoldingFire(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2180) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2180) &= ~0x1; } return val; }
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
