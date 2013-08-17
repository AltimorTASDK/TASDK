module UnrealScript.UnrealEd.CurveEdPresetBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface CurveEdPresetBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.CurveEdPresetBase")); }
	private static __gshared CurveEdPresetBase mDefaultProperties;
	@property final static CurveEdPresetBase DefaultProperties() { mixin(MGDPC("CurveEdPresetBase", "CurveEdPresetBase UnrealEd.Default__CurveEdPresetBase")); }
}
