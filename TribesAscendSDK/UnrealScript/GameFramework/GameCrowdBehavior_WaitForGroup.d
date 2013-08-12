module UnrealScript.GameFramework.GameCrowdBehavior_WaitForGroup;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.GameFramework.GameCrowdAgentBehavior;

extern(C++) interface GameCrowdBehavior_WaitForGroup : GameCrowdAgentBehavior
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdBehavior_WaitForGroup")); }
	private static __gshared GameCrowdBehavior_WaitForGroup mDefaultProperties;
	@property final static GameCrowdBehavior_WaitForGroup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameCrowdBehavior_WaitForGroup)("GameCrowdBehavior_WaitForGroup GameFramework.Default__GameCrowdBehavior_WaitForGroup")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitBehavior;
			ScriptFunction mGetBehaviorString;
			ScriptFunction mShouldEndIdle;
			ScriptFunction mStopBehavior;
		}
		public @property static final
		{
			ScriptFunction InitBehavior() { return mInitBehavior ? mInitBehavior : (mInitBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_WaitForGroup.InitBehavior")); }
			ScriptFunction GetBehaviorString() { return mGetBehaviorString ? mGetBehaviorString : (mGetBehaviorString = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_WaitForGroup.GetBehaviorString")); }
			ScriptFunction ShouldEndIdle() { return mShouldEndIdle ? mShouldEndIdle : (mShouldEndIdle = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_WaitForGroup.ShouldEndIdle")); }
			ScriptFunction StopBehavior() { return mStopBehavior ? mStopBehavior : (mStopBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_WaitForGroup.StopBehavior")); }
		}
	}
final:
	void InitBehavior(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitBehavior, params.ptr, cast(void*)0);
	}
	ScriptString GetBehaviorString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBehaviorString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool ShouldEndIdle()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldEndIdle, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void StopBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopBehavior, cast(void*)0, cast(void*)0);
	}
}
