module UnrealScript.TribesGame.TrActorFactoryPawn;

import ScriptClasses;
import UnrealScript.UTGame.UTActorFactoryAI;
import UnrealScript.Engine.Actor;

extern(C++) interface TrActorFactoryPawn : UTActorFactoryAI
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrActorFactoryPawn")); }
	private static __gshared TrActorFactoryPawn mDefaultProperties;
	@property final static TrActorFactoryPawn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrActorFactoryPawn)("TrActorFactoryPawn TribesGame.Default__TrActorFactoryPawn")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostCreateActor;
		public @property static final ScriptFunction PostCreateActor() { return mPostCreateActor ? mPostCreateActor : (mPostCreateActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrActorFactoryPawn.PostCreateActor")); }
	}
	@property final auto ref
	{
		ScriptClass FamilyInfo() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 144); }
		float GroundSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
		int NextTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
	}
	final void PostCreateActor(Actor NewActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostCreateActor, params.ptr, cast(void*)0);
	}
}
