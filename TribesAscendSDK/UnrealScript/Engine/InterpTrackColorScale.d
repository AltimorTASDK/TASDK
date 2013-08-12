module UnrealScript.Engine.InterpTrackColorScale;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackColorScale : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackColorScale")); }
	private static __gshared InterpTrackColorScale mDefaultProperties;
	@property final static InterpTrackColorScale DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackColorScale)("InterpTrackColorScale Engine.Default__InterpTrackColorScale")); }
}
