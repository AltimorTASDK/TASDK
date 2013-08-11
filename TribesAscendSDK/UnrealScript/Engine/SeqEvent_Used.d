module UnrealScript.Engine.SeqEvent_Used;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Texture2D;

extern(C++) interface SeqEvent_Used : SequenceEvent
{
public extern(D):
	@property final
	{
		auto ref
		{
			float InteractDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			ScriptArray!(ScriptClass) ClassProximityTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 280); }
			ScriptArray!(ScriptClass) IgnoredClassProximityTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 292); }
			Texture2D InteractIcon() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 276); }
			ScriptString InteractText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
		}
		bool bAimToInteract() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x1) != 0; }
		bool bAimToInteract(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x1; } return val; }
	}
}
