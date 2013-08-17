module UnrealScript.UnrealEd.CurveEdPreset_UserSet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.CurveEdPresetBase;

extern(C++) interface CurveEdPreset_UserSet : CurveEdPresetBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.CurveEdPreset_UserSet")()); }
	private static __gshared CurveEdPreset_UserSet mDefaultProperties;
	@property final static CurveEdPreset_UserSet DefaultProperties() { mixin(MGDPC!(CurveEdPreset_UserSet, "CurveEdPreset_UserSet UnrealEd.Default__CurveEdPreset_UserSet")()); }
}
