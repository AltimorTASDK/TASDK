module UnrealScript.Engine.CurveEdPresetCurve;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface CurveEdPresetCurve : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CurveEdPresetCurve")()); }
	private static __gshared CurveEdPresetCurve mDefaultProperties;
	@property final static CurveEdPresetCurve DefaultProperties() { mixin(MGDPC!(CurveEdPresetCurve, "CurveEdPresetCurve Engine.Default__CurveEdPresetCurve")()); }
	struct PresetGeneratedPoint
	{
		private ubyte __buffer__[21];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.CurveEdPresetCurve.PresetGeneratedPoint")()); }
		@property final
		{
			auto ref
			{
				UObject.EInterpCurveMode IntepMode() { mixin(MGPS!(UObject.EInterpCurveMode, 20)()); }
				float TangentOut() { mixin(MGPS!(float, 16)()); }
				float TangentIn() { mixin(MGPS!(float, 12)()); }
				float KeyOut() { mixin(MGPS!(float, 4)()); }
				float KeyIn() { mixin(MGPS!(float, 0)()); }
			}
			bool TangentsValid() { mixin(MGBPS!(8, 0x1)()); }
			bool TangentsValid(bool val) { mixin(MSBPS!(8, 0x1)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(CurveEdPresetCurve.PresetGeneratedPoint) Points() { mixin(MGPC!(ScriptArray!(CurveEdPresetCurve.PresetGeneratedPoint), 72)()); }
		ScriptString CurveName() { mixin(MGPC!(ScriptString, 60)()); }
	}
}
