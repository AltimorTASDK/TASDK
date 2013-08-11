module UnrealScript.Engine.InterpTrackInstLinearColorProp;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstLinearColorProp : InterpTrackInstProperty
{
public extern(D):
	@property final auto ref
	{
		UObject.LinearColor ResetColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 72); }
		UObject.Pointer ColorProp() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
	}
}
