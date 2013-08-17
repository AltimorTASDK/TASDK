module UnrealScript.UTGame.UTActorFactoryAI;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryAI;
import UnrealScript.Engine.Actor;

extern(C++) interface UTActorFactoryAI : ActorFactoryAI
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTActorFactoryAI")); }
	private static __gshared UTActorFactoryAI mDefaultProperties;
	@property final static UTActorFactoryAI DefaultProperties() { mixin(MGDPC("UTActorFactoryAI", "UTActorFactoryAI UTGame.Default__UTActorFactoryAI")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostCreateActor;
		public @property static final ScriptFunction PostCreateActor() { mixin(MGF("mPostCreateActor", "Function UTGame.UTActorFactoryAI.PostCreateActor")); }
	}
	@property final
	{
		bool bUseCompartment() { mixin(MGBPC(132, 0x2)); }
		bool bUseCompartment(bool val) { mixin(MSBPC(132, 0x2)); }
		bool bForceDeathmatchAI() { mixin(MGBPC(132, 0x1)); }
		bool bForceDeathmatchAI(bool val) { mixin(MSBPC(132, 0x1)); }
	}
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCreateActor, params.ptr, cast(void*)0);
	}
}
