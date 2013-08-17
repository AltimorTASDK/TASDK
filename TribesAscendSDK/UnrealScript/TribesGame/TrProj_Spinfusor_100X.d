module UnrealScript.TribesGame.TrProj_Spinfusor_100X;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Spinfusor_100X : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_Spinfusor_100X")()); }
	private static __gshared TrProj_Spinfusor_100X mDefaultProperties;
	@property final static TrProj_Spinfusor_100X DefaultProperties() { mixin(MGDPC!(TrProj_Spinfusor_100X, "TrProj_Spinfusor_100X TribesGame.Default__TrProj_Spinfusor_100X")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSpawnFlightEffects;
		public @property static final ScriptFunction SpawnFlightEffects() { mixin(MGF!("mSpawnFlightEffects", "Function TribesGame.TrProj_Spinfusor_100X.SpawnFlightEffects")()); }
	}
	final void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
}
