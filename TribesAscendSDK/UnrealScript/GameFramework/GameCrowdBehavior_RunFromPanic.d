module UnrealScript.GameFramework.GameCrowdBehavior_RunFromPanic;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowdDestination;
import UnrealScript.GameFramework.GameCrowdAgentBehavior;

extern(C++) interface GameCrowdBehavior_RunFromPanic : GameCrowdAgentBehavior
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdBehavior_RunFromPanic")); }
	private static __gshared GameCrowdBehavior_RunFromPanic mDefaultProperties;
	@property final static GameCrowdBehavior_RunFromPanic DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GameCrowdBehavior_RunFromPanic)("GameCrowdBehavior_RunFromPanic GameFramework.Default__GameCrowdBehavior_RunFromPanic")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mActivatedBy;
			ScriptFunction mInitBehavior;
			ScriptFunction mStopBehavior;
			ScriptFunction mPropagateViralBehaviorTo;
			ScriptFunction mAllowThisDestination;
			ScriptFunction mAllowBehaviorAt;
			ScriptFunction mGetBehaviorString;
			ScriptFunction mTick;
		}
		public @property static final
		{
			ScriptFunction ActivatedBy() { return mActivatedBy ? mActivatedBy : (mActivatedBy = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_RunFromPanic.ActivatedBy")); }
			ScriptFunction InitBehavior() { return mInitBehavior ? mInitBehavior : (mInitBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_RunFromPanic.InitBehavior")); }
			ScriptFunction StopBehavior() { return mStopBehavior ? mStopBehavior : (mStopBehavior = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_RunFromPanic.StopBehavior")); }
			ScriptFunction PropagateViralBehaviorTo() { return mPropagateViralBehaviorTo ? mPropagateViralBehaviorTo : (mPropagateViralBehaviorTo = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_RunFromPanic.PropagateViralBehaviorTo")); }
			ScriptFunction AllowThisDestination() { return mAllowThisDestination ? mAllowThisDestination : (mAllowThisDestination = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_RunFromPanic.AllowThisDestination")); }
			ScriptFunction AllowBehaviorAt() { return mAllowBehaviorAt ? mAllowBehaviorAt : (mAllowBehaviorAt = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_RunFromPanic.AllowBehaviorAt")); }
			ScriptFunction GetBehaviorString() { return mGetBehaviorString ? mGetBehaviorString : (mGetBehaviorString = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_RunFromPanic.GetBehaviorString")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdBehavior_RunFromPanic.Tick")); }
		}
	}
	@property final auto ref
	{
		float TimeToStopPanic() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
		float DurationOfPanic() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
		Actor PanicFocus() { return *cast(Actor*)(cast(size_t)cast(void*)this + 84); }
	}
final:
	void ActivatedBy(Actor NewActionTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActionTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivatedBy, params.ptr, cast(void*)0);
	}
	void InitBehavior(GameCrowdAgent Agent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitBehavior, params.ptr, cast(void*)0);
	}
	void StopBehavior()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StopBehavior, cast(void*)0, cast(void*)0);
	}
	void PropagateViralBehaviorTo(GameCrowdAgent OtherAgent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = OtherAgent;
		(cast(ScriptObject)this).ProcessEvent(Functions.PropagateViralBehaviorTo, params.ptr, cast(void*)0);
	}
	bool AllowThisDestination(GameCrowdDestination Destination)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = Destination;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowThisDestination, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool AllowBehaviorAt(GameCrowdDestination Destination)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GameCrowdDestination*)params.ptr = Destination;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowBehaviorAt, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetBehaviorString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBehaviorString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
}
