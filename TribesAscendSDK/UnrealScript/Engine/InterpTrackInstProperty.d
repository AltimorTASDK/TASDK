module UnrealScript.Engine.InterpTrackInstProperty;

import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Core.UObject;
import UnrealScript.Core.Function;

extern(C++) interface InterpTrackInstProperty : InterpTrackInst
{
	public @property final auto ref UObject PropertyOuterObjectInst() { return *cast(UObject*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref Function PropertyUpdateCallback() { return *cast(Function*)(cast(size_t)cast(void*)this + 60); }
}
