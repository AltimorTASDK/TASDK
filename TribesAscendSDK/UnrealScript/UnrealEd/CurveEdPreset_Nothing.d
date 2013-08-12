module UnrealScript.UnrealEd.CurveEdPreset_Nothing;

import ScriptClasses;
import UnrealScript.UnrealEd.CurveEdPresetBase;

extern(C++) interface CurveEdPreset_Nothing : CurveEdPresetBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CurveEdPreset_Nothing")); }
}
