module UnrealScript.TribesGame.TrProj_PlasmaGun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_PlasmaGun : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_PlasmaGun")()); }
	private static __gshared TrProj_PlasmaGun mDefaultProperties;
	@property final static TrProj_PlasmaGun DefaultProperties() { mixin(MGDPC!(TrProj_PlasmaGun, "TrProj_PlasmaGun TribesGame.Default__TrProj_PlasmaGun")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF!("mSpawnFlightEffects", "Function TribesGame.TrProj_PlasmaGun.SpawnFlightEffects")()); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
