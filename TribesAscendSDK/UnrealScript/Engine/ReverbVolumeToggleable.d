module UnrealScript.Engine.ReverbVolumeToggleable;

import ScriptClasses;
import UnrealScript.Engine.ReverbVolume;
import UnrealScript.Engine.SeqAct_Toggle;

extern(C++) interface ReverbVolumeToggleable : ReverbVolume
{
public extern(D):
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25357], params.ptr, cast(void*)0);
	}
}
