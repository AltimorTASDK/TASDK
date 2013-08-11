module UnrealScript.Engine.WaterVolume;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.Actor;

extern(C++) interface WaterVolume : PhysicsVolume
{
	public @property final auto ref ScriptClass ExitActor() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref SoundCue ExitSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref ScriptClass EntryActor() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 588); }
	public @property final auto ref SoundCue EntrySound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 584); }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29252], params.ptr, cast(void*)0);
	}
	final void PlayEntrySplash(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29257], params.ptr, cast(void*)0);
	}
	final void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29259], params.ptr, cast(void*)0);
	}
	final void PlayExitSplash(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29261], params.ptr, cast(void*)0);
	}
}
