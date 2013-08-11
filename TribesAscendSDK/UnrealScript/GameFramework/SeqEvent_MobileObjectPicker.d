module UnrealScript.GameFramework.SeqEvent_MobileObjectPicker;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqEvent_MobileRawInput;

extern(C++) interface SeqEvent_MobileObjectPicker : SeqEvent_MobileRawInput
{
	public @property final auto ref ScriptArray!(UObject) Targets() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref UObject FinalTouchObject() { return *cast(UObject*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref Vector FinalTouchNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref Vector FinalTouchLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float TraceDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
}
