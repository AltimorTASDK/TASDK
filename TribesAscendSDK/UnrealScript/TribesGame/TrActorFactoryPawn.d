module UnrealScript.TribesGame.TrActorFactoryPawn;

import ScriptClasses;
import UnrealScript.UTGame.UTActorFactoryAI;
import UnrealScript.Engine.Actor;

extern(C++) interface TrActorFactoryPawn : UTActorFactoryAI
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66285], params.ptr, cast(void*)0);
	}
}
