module UnrealScript.UnrealEd.CurveEdPreset_LinearDecay;

import ScriptClasses;
import UnrealScript.UnrealEd.CurveEdPresetBase;

extern(C++) interface CurveEdPreset_LinearDecay : CurveEdPresetBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CurveEdPreset_LinearDecay")); }
}
