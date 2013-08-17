module UnrealScript.Engine.InterpTrackInstMorphWeight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;

extern(C++) interface InterpTrackInstMorphWeight : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpTrackInstMorphWeight")()); }
	private static __gshared InterpTrackInstMorphWeight mDefaultProperties;
	@property final static InterpTrackInstMorphWeight DefaultProperties() { mixin(MGDPC!(InterpTrackInstMorphWeight, "InterpTrackInstMorphWeight Engine.Default__InterpTrackInstMorphWeight")()); }
}
