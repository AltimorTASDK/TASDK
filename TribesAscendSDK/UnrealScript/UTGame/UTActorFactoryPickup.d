module UnrealScript.UTGame.UTActorFactoryPickup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.Actor;

extern(C++) interface UTActorFactoryPickup : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTActorFactoryPickup")); }
	private static __gshared UTActorFactoryPickup mDefaultProperties;
	@property final static UTActorFactoryPickup DefaultProperties() { mixin(MGDPC("UTActorFactoryPickup", "UTActorFactoryPickup UTGame.Default__UTActorFactoryPickup")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostCreateActor;
		public @property static final ScriptFunction PostCreateActor() { mixin(MGF("mPostCreateActor", "Function UTGame.UTActorFactoryPickup.PostCreateActor")); }
	}
	@property final auto ref ScriptClass InventoryClass() { mixin(MGPC("ScriptClass", 92)); }
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCreateActor, params.ptr, cast(void*)0);
	}
}
