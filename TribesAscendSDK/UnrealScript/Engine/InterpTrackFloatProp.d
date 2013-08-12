module UnrealScript.Engine.InterpTrackFloatProp;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackFloatProp : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackFloatProp")); }
	private static __gshared InterpTrackFloatProp mDefaultProperties;
	@property final static InterpTrackFloatProp DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackFloatProp)("InterpTrackFloatProp Engine.Default__InterpTrackFloatProp")); }
	@property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
