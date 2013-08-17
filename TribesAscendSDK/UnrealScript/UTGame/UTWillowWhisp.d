module UnrealScript.UTGame.UTWillowWhisp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTReplicatedEmitter;

extern(C++) interface UTWillowWhisp : UTReplicatedEmitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTWillowWhisp")); }
	private static __gshared UTWillowWhisp mDefaultProperties;
	@property final static UTWillowWhisp DefaultProperties() { mixin(MGDPC("UTWillowWhisp", "UTWillowWhisp UTGame.Default__UTWillowWhisp")); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTWillowWhisp.PostBeginPlay")); }
			ScriptFunction SetInitialState() { mixin(MGF("mSetInitialState", "Function UTGame.UTWillowWhisp.SetInitialState")); }
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function UTGame.UTWillowWhisp.ReplicatedEvent")); }
			ScriptFunction SetTemplate() { mixin(MGF("mSetTemplate", "Function UTGame.UTWillowWhisp.SetTemplate")); }
			ScriptFunction StartNextPath() { mixin(MGF("mStartNextPath", "Function UTGame.UTWillowWhisp.StartNextPath")); }
		}
	}
	static struct Constants
	{
		enum MAX_WAYPOINTS = 15;
	}
	static struct Pathing
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTWillowWhisp.Pathing")); }
	}
	@property final auto ref
	{
		int Position() { mixin(MGPC("int", 680)); }
		int NumPoints() { mixin(MGPC("int", 676)); }
		Vector WayPoints() { mixin(MGPC("Vector", 496)); }
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
	void SetTemplate(ParticleSystem NewTemplate, bool* bDestroyOnFinish = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		if (bDestroyOnFinish !is null)
			*cast(bool*)&params[4] = *bDestroyOnFinish;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTemplate, params.ptr, cast(void*)0);
	}
	void StartNextPath()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartNextPath, cast(void*)0, cast(void*)0);
	}
}
