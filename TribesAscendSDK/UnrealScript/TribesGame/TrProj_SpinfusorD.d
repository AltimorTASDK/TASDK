module UnrealScript.TribesGame.TrProj_SpinfusorD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_SpinfusorD : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_SpinfusorD")); }
	private static __gshared TrProj_SpinfusorD mDefaultProperties;
	@property final static TrProj_SpinfusorD DefaultProperties() { mixin(MGDPC("TrProj_SpinfusorD", "TrProj_SpinfusorD TribesGame.Default__TrProj_SpinfusorD")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF("mSpawnFlightEffects", "Function TribesGame.TrProj_SpinfusorD.SpawnFlightEffects")); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
