module UnrealScript.Engine.CurveEdPresetCurve;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface CurveEdPresetCurve : UObject
{
	struct PresetGeneratedPoint
	{
		public @property final auto ref UObject.EInterpCurveMode IntepMode() { return *cast(UObject.EInterpCurveMode*)(cast(size_t)&this + 20); }
		private ubyte __IntepMode[1];
		public @property final auto ref float TangentOut() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __TangentOut[4];
		public @property final auto ref float TangentIn() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __TangentIn[4];
		public @property final bool TangentsValid() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
		public @property final bool TangentsValid(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		private ubyte __TangentsValid[4];
		public @property final auto ref float KeyOut() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __KeyOut[4];
		public @property final auto ref float KeyIn() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __KeyIn[4];
	}
	public @property final auto ref ScriptArray!(CurveEdPresetCurve.PresetGeneratedPoint) Points() { return *cast(ScriptArray!(CurveEdPresetCurve.PresetGeneratedPoint)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptString CurveName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
}
