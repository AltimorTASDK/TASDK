module UnrealScript.Engine.InterpTrackInstProperty;

import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Core.UObject;
import UnrealScript.Core.Function;

extern(C++) interface InterpTrackInstProperty : InterpTrackInst
{
public extern(D):
	@property final auto ref
	{
		UObject PropertyOuterObjectInst() { return *cast(UObject*)(cast(size_t)cast(void*)this + 64); }
		Function PropertyUpdateCallback() { return *cast(Function*)(cast(size_t)cast(void*)this + 60); }
	}
}
