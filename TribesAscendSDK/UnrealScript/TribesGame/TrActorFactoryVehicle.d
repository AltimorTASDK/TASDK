module UnrealScript.TribesGame.TrActorFactoryVehicle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ActorFactoryVehicle;

extern(C++) interface TrActorFactoryVehicle : ActorFactoryVehicle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrActorFactoryVehicle")()); }
	private static __gshared TrActorFactoryVehicle mDefaultProperties;
	@property final static TrActorFactoryVehicle DefaultProperties() { mixin(MGDPC!(TrActorFactoryVehicle, "TrActorFactoryVehicle TribesGame.Default__TrActorFactoryVehicle")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostCreateActor;
		public @property static final ScriptFunction PostCreateActor() { mixin(MGF!("mPostCreateActor", "Function TribesGame.TrActorFactoryVehicle.PostCreateActor")()); }
	}
	@property final auto ref ubyte TeamNum() { mixin(MGPC!("ubyte", 96)()); }
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCreateActor, params.ptr, cast(void*)0);
	}
}
