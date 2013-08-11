module UnrealScript.Engine.InterpTrackInstFloatProp;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstFloatProp : InterpTrackInstProperty
{
public extern(D):
	@property final auto ref
	{
		float ResetFloat() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
		UObject.Pointer FloatProp() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
	}
}
