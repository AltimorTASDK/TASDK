module UnrealScript.Engine.Interface_Speaker;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UInterface;

extern(C++) interface Interface_Speaker : UInterface
{
public extern(D):
	final void Speak(SoundCue Cue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SoundCue*)params.ptr = Cue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18354], params.ptr, cast(void*)0);
	}
}
