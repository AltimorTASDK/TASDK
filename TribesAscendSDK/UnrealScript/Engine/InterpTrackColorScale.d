module UnrealScript.Engine.InterpTrackColorScale;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackColorScale : InterpTrackVectorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackColorScale")); }
}
