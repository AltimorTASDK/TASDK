module UnrealScript.TribesGame.TrHUDTeam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrHUD;

extern(C++) interface TrHUDTeam : TrHUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrHUDTeam")()); }
	private static __gshared TrHUDTeam mDefaultProperties;
	@property final static TrHUDTeam DefaultProperties() { mixin(MGDPC!(TrHUDTeam, "TrHUDTeam TribesGame.Default__TrHUDTeam")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTimer;
		public @property static final ScriptFunction Timer() { mixin(MGF!("mTimer", "Function TribesGame.TrHUDTeam.Timer")()); }
	}
	@property final auto ref int m_nLastMessageCode() { mixin(MGPC!(int, 2492)()); }
	final void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
}
