module UnrealScript.Engine.InterpTrackLinearColorProp;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackLinearColorBase;

extern(C++) interface InterpTrackLinearColorProp : InterpTrackLinearColorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackLinearColorProp")); }
	@property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
