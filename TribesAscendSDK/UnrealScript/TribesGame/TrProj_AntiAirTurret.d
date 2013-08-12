module UnrealScript.TribesGame.TrProj_AntiAirTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_AntiAirTurret : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_AntiAirTurret")); }
	private static __gshared TrProj_AntiAirTurret mDefaultProperties;
	@property final static TrProj_AntiAirTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_AntiAirTurret)("TrProj_AntiAirTurret TribesGame.Default__TrProj_AntiAirTurret")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDestroyed;
		public @property static final ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_AntiAirTurret.Destroyed")); }
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
