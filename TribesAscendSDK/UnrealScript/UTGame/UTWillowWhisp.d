module UnrealScript.UTGame.UTWillowWhisp;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTReplicatedEmitter;

extern(C++) interface UTWillowWhisp : UTReplicatedEmitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTWillowWhisp")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetInitialState;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mSetTemplate;
			ScriptFunction mStartNextPath;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWillowWhisp.PostBeginPlay")); }
			ScriptFunction SetInitialState() { return mSetInitialState ? mSetInitialState : (mSetInitialState = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWillowWhisp.SetInitialState")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWillowWhisp.ReplicatedEvent")); }
			ScriptFunction SetTemplate() { return mSetTemplate ? mSetTemplate : (mSetTemplate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWillowWhisp.SetTemplate")); }
			ScriptFunction StartNextPath() { return mStartNextPath ? mStartNextPath : (mStartNextPath = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTWillowWhisp.StartNextPath")); }
		}
	}
	static struct Constants
	{
		enum MAX_WAYPOINTS = 15;
	}
	@property final auto ref
	{
		int Position() { return *cast(int*)(cast(size_t)cast(void*)this + 680); }
		int NumPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 676); }
		Vector WayPoints() { return *cast(Vector*)(cast(size_t)cast(void*)this + 496); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInitialState, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void SetTemplate(ParticleSystem NewTemplate, bool bDestroyOnFinish)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		*cast(bool*)&params[4] = bDestroyOnFinish;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTemplate, params.ptr, cast(void*)0);
	}
	void StartNextPath()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartNextPath, cast(void*)0, cast(void*)0);
	}
}
