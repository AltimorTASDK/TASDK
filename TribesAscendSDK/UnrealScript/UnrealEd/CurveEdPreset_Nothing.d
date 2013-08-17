module UnrealScript.UnrealEd.CurveEdPreset_Nothing;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.CurveEdPresetBase;

extern(C++) interface CurveEdPreset_Nothing : CurveEdPresetBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.CurveEdPreset_Nothing")()); }
	private static __gshared CurveEdPreset_Nothing mDefaultProperties;
	@property final static CurveEdPreset_Nothing DefaultProperties() { mixin(MGDPC!(CurveEdPreset_Nothing, "CurveEdPreset_Nothing UnrealEd.Default__CurveEdPreset_Nothing")()); }
}
