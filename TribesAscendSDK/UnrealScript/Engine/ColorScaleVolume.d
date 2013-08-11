module UnrealScript.Engine.ColorScaleVolume;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Volume;

extern(C++) interface ColorScaleVolume : Volume
{
	public @property final auto ref float InterpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref Vector ColorScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 520); }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12778], params.ptr, cast(void*)0);
	}
	final void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12785], params.ptr, cast(void*)0);
	}
}
