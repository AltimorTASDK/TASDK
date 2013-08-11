module UnrealScript.Engine.InterpTrackInstBoolProp;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstBoolProp : InterpTrackInstProperty
{
	public @property final bool ResetBool() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
	public @property final bool ResetBool(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	public @property final auto ref UObject.Pointer BoolProp() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
}
