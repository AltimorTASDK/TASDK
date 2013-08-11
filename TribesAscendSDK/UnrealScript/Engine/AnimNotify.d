module UnrealScript.Engine.AnimNotify;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimNotify : UObject
{
	public @property final auto ref UObject.Color NotifyColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 60); }
	final bool FindNextNotifyOfClass(AnimNodeSequence AnimSeqInstigator, ScriptClass NotifyClass, AnimSequence.AnimNotifyEvent* OutEvent)
	{
		ubyte params[32];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = AnimSeqInstigator;
		*cast(ScriptClass*)&params[4] = NotifyClass;
		*cast(AnimSequence.AnimNotifyEvent*)&params[8] = *OutEvent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11128], params.ptr, cast(void*)0);
		*OutEvent = *cast(AnimSequence.AnimNotifyEvent*)&params[8];
		return *cast(bool*)&params[28];
	}
}
