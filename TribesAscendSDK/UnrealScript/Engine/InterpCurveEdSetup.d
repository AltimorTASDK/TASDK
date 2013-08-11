module UnrealScript.Engine.InterpCurveEdSetup;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface InterpCurveEdSetup : UObject
{
	struct CurveEdTab
	{
		public @property final auto ref ScriptArray!(InterpCurveEdSetup.CurveEdEntry) Curves() { return *cast(ScriptArray!(InterpCurveEdSetup.CurveEdEntry)*)(cast(size_t)&this + 12); }
		private ubyte __Curves[12];
		public @property final auto ref float ViewEndOutput() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __ViewEndOutput[4];
		public @property final auto ref float ViewStartOutput() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __ViewStartOutput[4];
		public @property final auto ref float ViewEndInput() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __ViewEndInput[4];
		public @property final auto ref float ViewStartInput() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __ViewStartInput[4];
		public @property final auto ref ScriptString TabName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __TabName[12];
	}
	struct CurveEdEntry
	{
		public @property final auto ref float ClampHigh() { return *cast(float*)(cast(size_t)&this + 40); }
		private ubyte __ClampHigh[4];
		public @property final auto ref float ClampLow() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __ClampLow[4];
		public @property final auto ref int bClamp() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __bClamp[4];
		public @property final auto ref int bFloatingPointColorCurve() { return *cast(int*)(cast(size_t)&this + 28); }
		private ubyte __bFloatingPointColorCurve[4];
		public @property final auto ref int bColorCurve() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __bColorCurve[4];
		public @property final auto ref int bHideCurve() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __bHideCurve[4];
		public @property final auto ref ScriptString CurveName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __CurveName[12];
		public @property final auto ref UObject.Color CurveColor() { return *cast(UObject.Color*)(cast(size_t)&this + 4); }
		private ubyte __CurveColor[4];
		public @property final auto ref UObject CurveObject() { return *cast(UObject*)(cast(size_t)&this + 0); }
		private ubyte __CurveObject[4];
	}
	public @property final auto ref ScriptArray!(InterpCurveEdSetup.CurveEdTab) Tabs() { return *cast(ScriptArray!(InterpCurveEdSetup.CurveEdTab)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref int ActiveTab() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
}
