module UnrealScript.Engine.InterpTrackVectorProp;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackVectorProp : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackVectorProp")); }
	private static __gshared InterpTrackVectorProp mDefaultProperties;
	@property final static InterpTrackVectorProp DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackVectorProp)("InterpTrackVectorProp Engine.Default__InterpTrackVectorProp")); }
	@property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
