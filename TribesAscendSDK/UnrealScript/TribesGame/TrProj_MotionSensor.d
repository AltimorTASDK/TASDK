module UnrealScript.TribesGame.TrProj_MotionSensor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Mine;

extern(C++) interface TrProj_MotionSensor : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_MotionSensor")); }
	private static __gshared TrProj_MotionSensor mDefaultProperties;
	@property final static TrProj_MotionSensor DefaultProperties() { mixin(MGDPC("TrProj_MotionSensor", "TrProj_MotionSensor TribesGame.Default__TrProj_MotionSensor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mExplode;
			ScriptFunction mDetonateObsolete;
		}
		public @property static final
		{
			ScriptFunction Explode() { mixin(MGF("mExplode", "Function TribesGame.TrProj_MotionSensor.Explode")); }
			ScriptFunction DetonateObsolete() { mixin(MGF("mDetonateObsolete", "Function TribesGame.TrProj_MotionSensor.DetonateObsolete")); }
		}
	}
final:
	void Explode(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Explode, params.ptr, cast(void*)0);
	}
	void DetonateObsolete(bool* bDetonateFromDamage = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bDetonateFromDamage !is null)
			*cast(bool*)params.ptr = *bDetonateFromDamage;
		(cast(ScriptObject)this).ProcessEvent(Functions.DetonateObsolete, params.ptr, cast(void*)0);
	}
}
