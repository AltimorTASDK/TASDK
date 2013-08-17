module UnrealScript.TribesGame.TrProj_Spinfusor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Spinfusor : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_Spinfusor")()); }
	private static __gshared TrProj_Spinfusor mDefaultProperties;
	@property final static TrProj_Spinfusor DefaultProperties() { mixin(MGDPC!(TrProj_Spinfusor, "TrProj_Spinfusor TribesGame.Default__TrProj_Spinfusor")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF!("mSpawnFlightEffects", "Function TribesGame.TrProj_Spinfusor.SpawnFlightEffects")()); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
