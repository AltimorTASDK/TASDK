module UnrealScript.UTGame.UTActorFactoryPickup;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.Actor;

extern(C++) interface UTActorFactoryPickup : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTActorFactoryPickup")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostCreateActor;
		public @property static final ScriptFunction PostCreateActor() { return mPostCreateActor ? mPostCreateActor : (mPostCreateActor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTActorFactoryPickup.PostCreateActor")); }
	}
	@property final auto ref ScriptClass InventoryClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCreateActor, params.ptr, cast(void*)0);
	}
}
