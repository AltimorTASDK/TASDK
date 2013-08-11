module UnrealScript.Engine.InterpTrackInstColorProp;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstColorProp : InterpTrackInstProperty
{
	public @property final auto ref UObject.Color ResetColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref UObject.Pointer ColorProp() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
}
