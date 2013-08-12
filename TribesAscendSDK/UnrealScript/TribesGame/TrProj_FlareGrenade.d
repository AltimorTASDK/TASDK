module UnrealScript.TribesGame.TrProj_FlareGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.TribesGame.TrProj_TrackingMissile;

extern(C++) interface TrProj_FlareGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_FlareGrenade")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCalculateHijackMetric;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mHijackMissileGuidance;
			ScriptFunction mDestroyed;
		}
		public @property static final
		{
			ScriptFunction CalculateHijackMetric() { return mCalculateHijackMetric ? mCalculateHijackMetric : (mCalculateHijackMetric = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_FlareGrenade.CalculateHijackMetric")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_FlareGrenade.PostBeginPlay")); }
			ScriptFunction HijackMissileGuidance() { return mHijackMissileGuidance ? mHijackMissileGuidance : (mHijackMissileGuidance = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_FlareGrenade.HijackMissileGuidance")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_FlareGrenade.Destroyed")); }
		}
	}
final:
	float CalculateHijackMetric(TrProj_TrackingMissile pMissile)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrProj_TrackingMissile*)params.ptr = pMissile;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalculateHijackMetric, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void HijackMissileGuidance()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HijackMissileGuidance, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
