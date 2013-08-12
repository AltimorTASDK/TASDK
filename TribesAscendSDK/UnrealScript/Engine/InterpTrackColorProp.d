module UnrealScript.Engine.InterpTrackColorProp;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackColorProp : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackColorProp")); }
	private static __gshared InterpTrackColorProp mDefaultProperties;
	@property final static InterpTrackColorProp DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackColorProp)("InterpTrackColorProp Engine.Default__InterpTrackColorProp")); }
	@property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
