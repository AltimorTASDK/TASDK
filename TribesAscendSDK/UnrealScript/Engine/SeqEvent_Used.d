module UnrealScript.Engine.SeqEvent_Used;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Texture2D;

extern(C++) interface SeqEvent_Used : SequenceEvent
{
	public @property final bool bAimToInteract() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x1) != 0; }
	public @property final bool bAimToInteract(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x1; } return val; }
	public @property final auto ref float InteractDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptArray!(ScriptClass) ClassProximityTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref ScriptArray!(ScriptClass) IgnoredClassProximityTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref Texture2D InteractIcon() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref ScriptString InteractText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
}
