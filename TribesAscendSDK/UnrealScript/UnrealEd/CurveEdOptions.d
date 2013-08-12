module UnrealScript.UnrealEd.CurveEdOptions;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface CurveEdOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CurveEdOptions")); }
	private static __gshared CurveEdOptions mDefaultProperties;
	@property final static CurveEdOptions DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CurveEdOptions)("CurveEdOptions UnrealEd.Default__CurveEdOptions")); }
}
