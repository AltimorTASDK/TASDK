module UnrealScript.TribesGame.TrProj_FlareGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;
import UnrealScript.TribesGame.TrProj_TrackingMissile;

extern(C++) interface TrProj_FlareGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_FlareGrenade")()); }
	private static __gshared TrProj_FlareGrenade mDefaultProperties;
	@property final static TrProj_FlareGrenade DefaultProperties() { mixin(MGDPC!(TrProj_FlareGrenade, "TrProj_FlareGrenade TribesGame.Default__TrProj_FlareGrenade")()); }
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
			ScriptFunction CalculateHijackMetric() { mixin(MGF!("mCalculateHijackMetric", "Function TribesGame.TrProj_FlareGrenade.CalculateHijackMetric")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrProj_FlareGrenade.PostBeginPlay")()); }
			ScriptFunction HijackMissileGuidance() { mixin(MGF!("mHijackMissileGuidance", "Function TribesGame.TrProj_FlareGrenade.HijackMissileGuidance")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrProj_FlareGrenade.Destroyed")()); }
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
