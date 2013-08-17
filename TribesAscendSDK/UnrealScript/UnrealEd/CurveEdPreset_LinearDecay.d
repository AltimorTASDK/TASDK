module UnrealScript.UnrealEd.CurveEdPreset_LinearDecay;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.CurveEdPresetBase;

extern(C++) interface CurveEdPreset_LinearDecay : CurveEdPresetBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.CurveEdPreset_LinearDecay")); }
	private static __gshared CurveEdPreset_LinearDecay mDefaultProperties;
	@property final static CurveEdPreset_LinearDecay DefaultProperties() { mixin(MGDPC("CurveEdPreset_LinearDecay", "CurveEdPreset_LinearDecay UnrealEd.Default__CurveEdPreset_LinearDecay")); }
}
