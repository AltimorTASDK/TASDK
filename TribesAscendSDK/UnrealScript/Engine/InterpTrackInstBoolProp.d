module UnrealScript.Engine.InterpTrackInstBoolProp;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstBoolProp : InterpTrackInstProperty
{
public extern(D):
	@property final
	{
		@property final auto ref UObject.Pointer BoolProp() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
		bool ResetBool() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool ResetBool(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
}
