module UnrealScript.Engine.InterpTrackInstVisibility;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.InterpTrackVisibility;

extern(C++) interface InterpTrackInstVisibility : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstVisibility")); }
	private static __gshared InterpTrackInstVisibility mDefaultProperties;
	@property final static InterpTrackInstVisibility DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstVisibility)("InterpTrackInstVisibility Engine.Default__InterpTrackInstVisibility")); }
	@property final auto ref
	{
		float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		InterpTrackVisibility.EVisibilityTrackAction Action() { return *cast(InterpTrackVisibility.EVisibilityTrackAction*)(cast(size_t)cast(void*)this + 60); }
	}
}
