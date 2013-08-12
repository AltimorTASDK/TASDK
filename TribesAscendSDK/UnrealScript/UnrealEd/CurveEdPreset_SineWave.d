module UnrealScript.UnrealEd.CurveEdPreset_SineWave;

import ScriptClasses;
import UnrealScript.UnrealEd.CurveEdPresetBase;

extern(C++) interface CurveEdPreset_SineWave : CurveEdPresetBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CurveEdPreset_SineWave")); }
}
