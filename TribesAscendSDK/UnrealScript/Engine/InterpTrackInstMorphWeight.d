module UnrealScript.Engine.InterpTrackInstMorphWeight;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstMorphWeight : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstMorphWeight")); }
	private static __gshared InterpTrackInstMorphWeight mDefaultProperties;
	@property final static InterpTrackInstMorphWeight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstMorphWeight)("InterpTrackInstMorphWeight Engine.Default__InterpTrackInstMorphWeight")); }
}
