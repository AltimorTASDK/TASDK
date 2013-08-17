module UnrealScript.TribesGame.TrActorFactoryPawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTActorFactoryAI;
import UnrealScript.Engine.Actor;

extern(C++) interface TrActorFactoryPawn : UTActorFactoryAI
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrActorFactoryPawn")()); }
	private static __gshared TrActorFactoryPawn mDefaultProperties;
	@property final static TrActorFactoryPawn DefaultProperties() { mixin(MGDPC!(TrActorFactoryPawn, "TrActorFactoryPawn TribesGame.Default__TrActorFactoryPawn")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostCreateActor;
		public @property static final ScriptFunction PostCreateActor() { mixin(MGF!("mPostCreateActor", "Function TribesGame.TrActorFactoryPawn.PostCreateActor")()); }
	}
	@property final auto ref
	{
		ScriptClass FamilyInfo() { mixin(MGPC!(ScriptClass, 144)()); }
		float GroundSpeed() { mixin(MGPC!(float, 140)()); }
		int NextTeam() { mixin(MGPC!(int, 136)()); }
	}
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCreateActor, params.ptr, cast(void*)0);
	}
}
