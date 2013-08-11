module UnrealScript.Engine.ParticleModuleEventSendToGame;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ParticleModuleEventSendToGame : UObject
{
	final void DoEvent(Vector* InCollideDirection, Vector* InHitLocation, Vector* InHitNormal, ScriptName* InBoneName)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = *InCollideDirection;
		*cast(Vector*)&params[12] = *InHitLocation;
		*cast(Vector*)&params[24] = *InHitNormal;
		*cast(ScriptName*)&params[36] = *InBoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23311], params.ptr, cast(void*)0);
		*InCollideDirection = *cast(Vector*)params.ptr;
		*InHitLocation = *cast(Vector*)&params[12];
		*InHitNormal = *cast(Vector*)&params[24];
		*InBoneName = *cast(ScriptName*)&params[36];
	}
}
