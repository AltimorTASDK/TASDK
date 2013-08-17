module UnrealScript.UnrealEd.CurveEdOptions;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface CurveEdOptions : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.CurveEdOptions")); }
	private static __gshared CurveEdOptions mDefaultProperties;
	@property final static CurveEdOptions DefaultProperties() { mixin(MGDPC("CurveEdOptions", "CurveEdOptions UnrealEd.Default__CurveEdOptions")); }
}
