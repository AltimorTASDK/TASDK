module UnrealScript.UTGame.UTMutator_SlowTimeKills;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_SlowTimeKills : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTMutator_SlowTimeKills")()); }
	private static __gshared UTMutator_SlowTimeKills mDefaultProperties;
	@property final static UTMutator_SlowTimeKills DefaultProperties() { mixin(MGDPC!(UTMutator_SlowTimeKills, "UTMutator_SlowTimeKills UTGame.Default__UTMutator_SlowTimeKills")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mMutatorIsAllowed;
			ScriptFunction mScoreKill;
			ScriptFunction mTimer;
		}
		public @property static final
		{
			ScriptFunction MutatorIsAllowed() { mixin(MGF!("mMutatorIsAllowed", "Function UTGame.UTMutator_SlowTimeKills.MutatorIsAllowed")()); }
			ScriptFunction ScoreKill() { mixin(MGF!("mScoreKill", "Function UTGame.UTMutator_SlowTimeKills.ScoreKill")()); }
			ScriptFunction Timer() { mixin(MGF!("mTimer", "Function UTGame.UTMutator_SlowTimeKills.Timer")()); }
		}
	}
	static struct Rampup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTMutator_SlowTimeKills.Rampup")()); }
	}
	@property final auto ref
	{
		float SlowSpeed() { mixin(MGPC!(float, 504)()); }
		float RampUpTime() { mixin(MGPC!(float, 500)()); }
		float SlowTime() { mixin(MGPC!(float, 496)()); }
	}
final:
	bool MutatorIsAllowed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.MutatorIsAllowed, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ScoreKill(Controller Killer, Controller Killed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(Controller*)&params[4] = Killed;
		(cast(ScriptObject)this).ProcessEvent(Functions.ScoreKill, params.ptr, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
}
