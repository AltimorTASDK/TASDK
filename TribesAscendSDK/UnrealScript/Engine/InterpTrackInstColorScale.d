module UnrealScript.Engine.InterpTrackInstColorScale;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstColorScale : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstColorScale")); }
	private static __gshared InterpTrackInstColorScale mDefaultProperties;
	@property final static InterpTrackInstColorScale DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstColorScale)("InterpTrackInstColorScale Engine.Default__InterpTrackInstColorScale")); }
}
