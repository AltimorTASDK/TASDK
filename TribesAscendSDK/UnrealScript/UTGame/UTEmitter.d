module UnrealScript.UTGame.UTEmitter;

import ScriptClasses;
import UnrealScript.Engine.WorldInfo;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Emitter;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UTEmitter : Emitter
{
	final ParticleSystem GetTemplateForDistance(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)* TemplateList, Vector SpawnLocation, WorldInfo WI)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)params.ptr = *TemplateList;
		*cast(Vector*)&params[12] = SpawnLocation;
		*cast(WorldInfo*)&params[24] = WI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[40133], params.ptr, cast(void*)0);
		*TemplateList = *cast(ScriptArray!(UDKPawn.DistanceBasedParticleTemplate)*)params.ptr;
		return *cast(ParticleSystem*)&params[28];
	}
	final void SetTemplate(ParticleSystem NewTemplate, bool bDestroyOnFinish)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = NewTemplate;
		*cast(bool*)&params[4] = bDestroyOnFinish;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47361], params.ptr, cast(void*)0);
	}
	final void SetLightEnvironment(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* Light)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = Light;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47366], params.ptr, cast(void*)0);
	}
}
