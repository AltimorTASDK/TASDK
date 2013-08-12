module UnrealScript.UnrealEd.CurveEdPresetBase;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface CurveEdPresetBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CurveEdPresetBase")); }
	private static __gshared CurveEdPresetBase mDefaultProperties;
	@property final static CurveEdPresetBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CurveEdPresetBase)("CurveEdPresetBase UnrealEd.Default__CurveEdPresetBase")); }
}
