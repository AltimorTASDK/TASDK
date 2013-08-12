module UnrealScript.UTGame.UTActorFactoryAI;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryAI;
import UnrealScript.Engine.Actor;

extern(C++) interface UTActorFactoryAI : ActorFactoryAI
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTActorFactoryAI")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostCreateActor;
		public @property static final ScriptFunction PostCreateActor() { return mPostCreateActor ? mPostCreateActor : (mPostCreateActor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTActorFactoryAI.PostCreateActor")); }
	}
	@property final
	{
		bool bUseCompartment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x2) != 0; }
		bool bUseCompartment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x2; } return val; }
		bool bForceDeathmatchAI() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
		bool bForceDeathmatchAI(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	}
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCreateActor, params.ptr, cast(void*)0);
	}
}
