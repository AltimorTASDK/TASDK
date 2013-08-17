module UnrealScript.TribesGame.TrProj_LightSpinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_LightSpinfusor : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_LightSpinfusor")); }
	private static __gshared TrProj_LightSpinfusor mDefaultProperties;
	@property final static TrProj_LightSpinfusor DefaultProperties() { mixin(MGDPC("TrProj_LightSpinfusor", "TrProj_LightSpinfusor TribesGame.Default__TrProj_LightSpinfusor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF("mSpawnFlightEffects", "Function TribesGame.TrProj_LightSpinfusor.SpawnFlightEffects")); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
