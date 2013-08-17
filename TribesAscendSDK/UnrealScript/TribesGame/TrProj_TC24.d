module UnrealScript.TribesGame.TrProj_TC24;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_TC24 : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_TC24")); }
	private static __gshared TrProj_TC24 mDefaultProperties;
	@property final static TrProj_TC24 DefaultProperties() { mixin(MGDPC("TrProj_TC24", "TrProj_TC24 TribesGame.Default__TrProj_TC24")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDestroyed;
		public @property static final ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function TribesGame.TrProj_TC24.Destroyed")); }
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
}
