module UnrealScript.TribesGame.TrActorFactoryVehicle;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ActorFactoryVehicle;

extern(C++) interface TrActorFactoryVehicle : ActorFactoryVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrActorFactoryVehicle")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostCreateActor;
		public @property static final ScriptFunction PostCreateActor() { return mPostCreateActor ? mPostCreateActor : (mPostCreateActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrActorFactoryVehicle.PostCreateActor")); }
	}
	@property final auto ref ubyte TeamNum() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 96); }
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCreateActor, params.ptr, cast(void*)0);
	}
}
