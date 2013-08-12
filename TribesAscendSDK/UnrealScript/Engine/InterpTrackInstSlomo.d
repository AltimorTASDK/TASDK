module UnrealScript.Engine.InterpTrackInstSlomo;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstSlomo : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstSlomo")); }
	private static __gshared InterpTrackInstSlomo mDefaultProperties;
	@property final static InterpTrackInstSlomo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstSlomo)("InterpTrackInstSlomo Engine.Default__InterpTrackInstSlomo")); }
	@property final auto ref float OldTimeDilation() { return *cast(float*)(cast(size_t)cast(void*)this + 60); }
}
