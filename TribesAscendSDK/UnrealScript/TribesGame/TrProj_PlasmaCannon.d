module UnrealScript.TribesGame.TrProj_PlasmaCannon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_PlasmaCannon : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_PlasmaCannon")); }
	private static __gshared TrProj_PlasmaCannon mDefaultProperties;
	@property final static TrProj_PlasmaCannon DefaultProperties() { mixin(MGDPC("TrProj_PlasmaCannon", "TrProj_PlasmaCannon TribesGame.Default__TrProj_PlasmaCannon")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF("mSpawnFlightEffects", "Function TribesGame.TrProj_PlasmaCannon.SpawnFlightEffects")); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
