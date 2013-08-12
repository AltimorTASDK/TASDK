module UnrealScript.UnrealEd.GenericBrowserType_CurveEdPresetCurve;

import ScriptClasses;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_CurveEdPresetCurve : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.GenericBrowserType_CurveEdPresetCurve")); }
	private static __gshared GenericBrowserType_CurveEdPresetCurve mDefaultProperties;
	@property final static GenericBrowserType_CurveEdPresetCurve DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GenericBrowserType_CurveEdPresetCurve)("GenericBrowserType_CurveEdPresetCurve UnrealEd.Default__GenericBrowserType_CurveEdPresetCurve")); }
}
