module UnrealScript.GameFramework.GameKActorSpawnableEffect;

import ScriptClasses;
import UnrealScript.Engine.KActor;

extern(C++) interface GameKActorSpawnableEffect : KActor
{
public extern(D):
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31713], cast(void*)0, cast(void*)0);
	}
	void FellOutOfWorld(ScriptClass dmgType)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = dmgType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31714], params.ptr, cast(void*)0);
	}
	void StartScalingDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31716], cast(void*)0, cast(void*)0);
	}
}
