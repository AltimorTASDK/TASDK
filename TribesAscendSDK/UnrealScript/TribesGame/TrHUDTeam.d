module UnrealScript.TribesGame.TrHUDTeam;

import ScriptClasses;
import UnrealScript.TribesGame.TrHUD;

extern(C++) interface TrHUDTeam : TrHUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrHUDTeam")); }
	private static __gshared TrHUDTeam mDefaultProperties;
	@property final static TrHUDTeam DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrHUDTeam)("TrHUDTeam TribesGame.Default__TrHUDTeam")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTimer;
		public @property static final ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHUDTeam.Timer")); }
	}
	@property final auto ref int m_nLastMessageCode() { return *cast(int*)(cast(size_t)cast(void*)this + 2492); }
	final void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
}
