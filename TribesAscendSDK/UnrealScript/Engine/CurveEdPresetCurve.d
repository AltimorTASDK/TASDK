module UnrealScript.Engine.CurveEdPresetCurve;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface CurveEdPresetCurve : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CurveEdPresetCurve")); }
	private static __gshared CurveEdPresetCurve mDefaultProperties;
	@property final static CurveEdPresetCurve DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CurveEdPresetCurve)("CurveEdPresetCurve Engine.Default__CurveEdPresetCurve")); }
	struct PresetGeneratedPoint
	{
		private ubyte __buffer__[21];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.CurveEdPresetCurve.PresetGeneratedPoint")); }
		@property final
		{
			auto ref
			{
				UObject.EInterpCurveMode IntepMode() { return *cast(UObject.EInterpCurveMode*)(cast(size_t)&this + 20); }
				float TangentOut() { return *cast(float*)(cast(size_t)&this + 16); }
				float TangentIn() { return *cast(float*)(cast(size_t)&this + 12); }
				float KeyOut() { return *cast(float*)(cast(size_t)&this + 4); }
				float KeyIn() { return *cast(float*)(cast(size_t)&this + 0); }
			}
			bool TangentsValid() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
			bool TangentsValid(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ScriptArray!(CurveEdPresetCurve.PresetGeneratedPoint) Points() { return *cast(ScriptArray!(CurveEdPresetCurve.PresetGeneratedPoint)*)(cast(size_t)cast(void*)this + 72); }
		ScriptString CurveName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
	}
}
