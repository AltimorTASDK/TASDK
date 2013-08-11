module UnrealScript.UDKBase.UDKAnimNodeFramePlayer;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;

extern(C++) interface UDKAnimNodeFramePlayer : AnimNodeSequence
{
	final void SetAnimation(ScriptName Sequence, float RateScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Sequence;
		*cast(float*)&params[8] = RateScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34585], params.ptr, cast(void*)0);
	}
	final void SetAnimPosition(float Perc)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Perc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34588], params.ptr, cast(void*)0);
	}
}
