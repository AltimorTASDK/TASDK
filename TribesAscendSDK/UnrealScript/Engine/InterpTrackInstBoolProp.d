module UnrealScript.Engine.InterpTrackInstBoolProp;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstBoolProp : InterpTrackInstProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstBoolProp")); }
	@property final
	{
		@property final auto ref UObject.Pointer BoolProp() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
		bool ResetBool() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool ResetBool(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
}
