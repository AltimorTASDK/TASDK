module UnrealScript.UnrealEd.CurveEdPreset_CosWave;

import ScriptClasses;
import UnrealScript.UnrealEd.CurveEdPresetBase;

extern(C++) interface CurveEdPreset_CosWave : CurveEdPresetBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CurveEdPreset_CosWave")); }
}
