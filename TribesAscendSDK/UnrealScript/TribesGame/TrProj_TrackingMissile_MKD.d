module UnrealScript.TribesGame.TrProj_TrackingMissile_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_TrackingMissile_MKD : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_TrackingMissile_MKD")()); }
	private static __gshared TrProj_TrackingMissile_MKD mDefaultProperties;
	@property final static TrProj_TrackingMissile_MKD DefaultProperties() { mixin(MGDPC!(TrProj_TrackingMissile_MKD, "TrProj_TrackingMissile_MKD TribesGame.Default__TrProj_TrackingMissile_MKD")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDestroyed;
		public @property static final ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrProj_TrackingMissile_MKD.Destroyed")()); }
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
