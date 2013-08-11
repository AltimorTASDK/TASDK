module UnrealScript.Engine.ParticleEventManager;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleModuleEventSendToGame;

extern(C++) interface ParticleEventManager : Actor
{
	final void HandleParticleModuleEventSendToGame(ParticleModuleEventSendToGame InEvent, Vector* InCollideDirection, Vector* InHitLocation, Vector* InHitNormal, ScriptName* InBoneName)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ParticleModuleEventSendToGame*)params.ptr = InEvent;
		*cast(Vector*)&params[4] = *InCollideDirection;
		*cast(Vector*)&params[16] = *InHitLocation;
		*cast(Vector*)&params[28] = *InHitNormal;
		*cast(ScriptName*)&params[40] = *InBoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23084], params.ptr, cast(void*)0);
		*InCollideDirection = *cast(Vector*)&params[4];
		*InHitLocation = *cast(Vector*)&params[16];
		*InHitNormal = *cast(Vector*)&params[28];
		*InBoneName = *cast(ScriptName*)&params[40];
	}
}
