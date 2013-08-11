module UnrealScript.GameFramework.SeqEvent_MobileRawInput;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_MobileRawInput : SequenceEvent
{
public extern(D):
	@property final auto ref
	{
		float TimeStamp() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
		float TouchLocationY() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float TouchLocationX() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		int TouchIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 256); }
	}
	final void RegisterEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33054], cast(void*)0, cast(void*)0);
	}
}
