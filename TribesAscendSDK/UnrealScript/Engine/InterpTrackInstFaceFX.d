module UnrealScript.Engine.InterpTrackInstFaceFX;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstFaceFX : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstFaceFX")); }
	private static __gshared InterpTrackInstFaceFX mDefaultProperties;
	@property final static InterpTrackInstFaceFX DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstFaceFX)("InterpTrackInstFaceFX Engine.Default__InterpTrackInstFaceFX")); }
	@property final
	{
		@property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		bool bFirstUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bFirstUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
}
