module UnrealScript.Engine.BlockingVolume;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Volume;

extern(C++) interface BlockingVolume : Volume
{
	public @property final bool bBlockCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 520) & 0x1) != 0; }
	public @property final bool bBlockCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 520) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 520) &= ~0x1; } return val; }
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12007], params.ptr, cast(void*)0);
	}
}
