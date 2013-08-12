module UnrealScript.UTGame.UTMutator_SlowTimeKills;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_SlowTimeKills : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTMutator_SlowTimeKills")); }
	private static __gshared UTMutator_SlowTimeKills mDefaultProperties;
	@property final static UTMutator_SlowTimeKills DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTMutator_SlowTimeKills)("UTMutator_SlowTimeKills UTGame.Default__UTMutator_SlowTimeKills")); }
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
			ScriptFunction MutatorIsAllowed() { return mMutatorIsAllowed ? mMutatorIsAllowed : (mMutatorIsAllowed = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator_SlowTimeKills.MutatorIsAllowed")); }
			ScriptFunction ScoreKill() { return mScoreKill ? mScoreKill : (mScoreKill = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator_SlowTimeKills.ScoreKill")); }
			ScriptFunction Timer() { return mTimer ? mTimer : (mTimer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator_SlowTimeKills.Timer")); }
		}
	}
	@property final auto ref
	{
		float SlowSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
		float RampUpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
		float SlowTime() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
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
