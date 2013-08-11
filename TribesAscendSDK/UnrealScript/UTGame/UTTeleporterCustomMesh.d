module UnrealScript.UTGame.UTTeleporterCustomMesh;

import ScriptClasses;
import UnrealScript.Engine.Teleporter;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;

extern(C++) interface UTTeleporterCustomMesh : Teleporter
{
	public @property final auto ref float LastTime() { return *cast(float*)(cast(size_t)cast(void*)this + 744); }
	public @property final auto ref UTPawn LastPawn() { return *cast(UTPawn*)(cast(size_t)cast(void*)this + 740); }
	public @property final auto ref SoundCue TeleportingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 736); }
	final bool Accept(Actor Incoming, Actor Source)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Incoming;
		*cast(Actor*)&params[4] = Source;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49474], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49479], params.ptr, cast(void*)0);
	}
}
