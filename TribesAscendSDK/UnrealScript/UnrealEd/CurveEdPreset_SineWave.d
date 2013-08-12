module UnrealScript.UnrealEd.CurveEdPreset_SineWave;

import ScriptClasses;
import UnrealScript.UnrealEd.CurveEdPresetBase;

extern(C++) interface CurveEdPreset_SineWave : CurveEdPresetBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.CurveEdPreset_SineWave")); }
	private static __gshared CurveEdPreset_SineWave mDefaultProperties;
	@property final static CurveEdPreset_SineWave DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CurveEdPreset_SineWave)("CurveEdPreset_SineWave UnrealEd.Default__CurveEdPreset_SineWave")); }
}
