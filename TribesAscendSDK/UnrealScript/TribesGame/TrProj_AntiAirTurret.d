module UnrealScript.TribesGame.TrProj_AntiAirTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_AntiAirTurret : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_AntiAirTurret")()); }
	private static __gshared TrProj_AntiAirTurret mDefaultProperties;
	@property final static TrProj_AntiAirTurret DefaultProperties() { mixin(MGDPC!(TrProj_AntiAirTurret, "TrProj_AntiAirTurret TribesGame.Default__TrProj_AntiAirTurret")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDestroyed;
		public @property static final ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrProj_AntiAirTurret.Destroyed")()); }
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
