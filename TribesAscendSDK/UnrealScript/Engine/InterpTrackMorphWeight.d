module UnrealScript.Engine.InterpTrackMorphWeight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackMorphWeight : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackMorphWeight")()); }
	private static __gshared InterpTrackMorphWeight mDefaultProperties;
	@property final static InterpTrackMorphWeight DefaultProperties() { mixin(MGDPC!(InterpTrackMorphWeight, "InterpTrackMorphWeight Engine.Default__InterpTrackMorphWeight")()); }
	@property final auto ref ScriptName MorphNodeName() { mixin(MGPC!(ScriptName, 148)()); }
}
