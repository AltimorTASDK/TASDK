module UnrealScript.TribesGame.TrProj_HavocPilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;
import UnrealScript.TribesGame.TrProj_TrackingMissile;

extern(C++) interface TrProj_HavocPilot : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_HavocPilot")); }
	private static __gshared TrProj_HavocPilot mDefaultProperties;
	@property final static TrProj_HavocPilot DefaultProperties() { mixin(MGDPC("TrProj_HavocPilot", "TrProj_HavocPilot TribesGame.Default__TrProj_HavocPilot")); }
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
			ScriptFunction CalculateHijackMetric() { mixin(MGF("mCalculateHijackMetric", "Function TribesGame.TrProj_HavocPilot.CalculateHijackMetric")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrProj_HavocPilot.PostBeginPlay")); }
			ScriptFunction HijackMissileGuidance() { mixin(MGF("mHijackMissileGuidance", "Function TribesGame.TrProj_HavocPilot.HijackMissileGuidance")); }
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function TribesGame.TrProj_HavocPilot.Destroyed")); }
		}
	}
final:
	float CalculateHijackMetric(TrProj_TrackingMissile Tracker)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrProj_TrackingMissile*)params.ptr = Tracker;
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
