module UnrealScript.Engine.InterpTrackInstToggle;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.InterpTrackToggle;

extern(C++) interface InterpTrackInstToggle : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstToggle")); }
	private static __gshared InterpTrackInstToggle mDefaultProperties;
	@property final static InterpTrackInstToggle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstToggle)("InterpTrackInstToggle Engine.Default__InterpTrackInstToggle")); }
	@property final
	{
		auto ref
		{
			float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
			InterpTrackToggle.ETrackToggleAction Action() { return *cast(InterpTrackToggle.ETrackToggleAction*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bSavedActiveState() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bSavedActiveState(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	}
}
