module UnrealScript.Engine.InterpTrackInstAnimControl;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstAnimControl : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstAnimControl")); }
	private static __gshared InterpTrackInstAnimControl mDefaultProperties;
	@property final static InterpTrackInstAnimControl DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstAnimControl)("InterpTrackInstAnimControl Engine.Default__InterpTrackInstAnimControl")); }
	@property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
