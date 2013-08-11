module UnrealScript.Engine.AnimNotify_ViewShake;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.AnimNotify_Scripted;

extern(C++) interface AnimNotify_ViewShake : AnimNotify_Scripted
{
	// WARNING: Property 'ShakeParams' has the same name as a defined type!
	public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref float ShakeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final bool bUseBoneLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x2) != 0; }
	public @property final bool bUseBoneLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x2; } return val; }
	public @property final bool bDoControllerVibration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
	public @property final bool bDoControllerVibration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	public @property final auto ref float FOVFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref float FOVAmplitude() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref Vector LocFrequency() { return *cast(Vector*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref Vector LocAmplitude() { return *cast(Vector*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref Vector RotFrequency() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref Vector RotAmplitude() { return *cast(Vector*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	final void Notify(Actor Owner, AnimNodeSequence AnimSeqInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Owner;
		*cast(AnimNodeSequence*)&params[4] = AnimSeqInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11472], params.ptr, cast(void*)0);
	}
}
