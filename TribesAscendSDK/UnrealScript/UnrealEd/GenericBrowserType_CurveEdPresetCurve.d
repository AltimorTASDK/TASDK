module UnrealScript.UnrealEd.GenericBrowserType_CurveEdPresetCurve;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_CurveEdPresetCurve : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.GenericBrowserType_CurveEdPresetCurve")()); }
	private static __gshared GenericBrowserType_CurveEdPresetCurve mDefaultProperties;
	@property final static GenericBrowserType_CurveEdPresetCurve DefaultProperties() { mixin(MGDPC!(GenericBrowserType_CurveEdPresetCurve, "GenericBrowserType_CurveEdPresetCurve UnrealEd.Default__GenericBrowserType_CurveEdPresetCurve")()); }
}
