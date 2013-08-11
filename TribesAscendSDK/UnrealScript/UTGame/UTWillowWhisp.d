module UnrealScript.UTGame.UTWillowWhisp;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.UTGame.UTReplicatedEmitter;

extern(C++) interface UTWillowWhisp : UTReplicatedEmitter
{
	public static immutable auto MAX_WAYPOINTS = 15;
	public @property final auto ref int Position() { return *cast(int*)(cast(size_t)cast(void*)this + 680); }
	public @property final auto ref int NumPoints() { return *cast(int*)(cast(size_t)cast(void*)this + 676); }
	public @property final auto ref Vector WayPoints() { return *cast(Vector*)(cast(size_t)cast(void*)this + 496); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50418], cast(void*)0, cast(void*)0);
	}
	final void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50425], cast(void*)0, cast(void*)0);
	}
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50426], params.ptr, cast(void*)0);
	}
	final void SetTemplate(ParticleSystem NewTemplate, bool bDestroyOnFinish)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		*cast(bool*)&params[4] = bDestroyOnFinish;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50428], params.ptr, cast(void*)0);
	}
	final void StartNextPath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50431], cast(void*)0, cast(void*)0);
	}
}
