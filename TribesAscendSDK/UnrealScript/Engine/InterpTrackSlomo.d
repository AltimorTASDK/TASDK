module UnrealScript.Engine.InterpTrackSlomo;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackSlomo : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackSlomo")); }
	private static __gshared InterpTrackSlomo mDefaultProperties;
	@property final static InterpTrackSlomo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackSlomo)("InterpTrackSlomo Engine.Default__InterpTrackSlomo")); }
}
