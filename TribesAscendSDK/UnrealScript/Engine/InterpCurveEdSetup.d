module UnrealScript.Engine.InterpCurveEdSetup;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface InterpCurveEdSetup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpCurveEdSetup")); }
	private static __gshared InterpCurveEdSetup mDefaultProperties;
	@property final static InterpCurveEdSetup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpCurveEdSetup)("InterpCurveEdSetup Engine.Default__InterpCurveEdSetup")); }
	struct CurveEdTab
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpCurveEdSetup.CurveEdTab")); }
		@property final auto ref
		{
			ScriptArray!(InterpCurveEdSetup.CurveEdEntry) Curves() { return *cast(ScriptArray!(InterpCurveEdSetup.CurveEdEntry)*)(cast(size_t)&this + 12); }
			float ViewEndOutput() { return *cast(float*)(cast(size_t)&this + 36); }
			float ViewStartOutput() { return *cast(float*)(cast(size_t)&this + 32); }
			float ViewEndInput() { return *cast(float*)(cast(size_t)&this + 28); }
			float ViewStartInput() { return *cast(float*)(cast(size_t)&this + 24); }
			ScriptString TabName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	struct CurveEdEntry
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpCurveEdSetup.CurveEdEntry")); }
		@property final auto ref
		{
			float ClampHigh() { return *cast(float*)(cast(size_t)&this + 40); }
			float ClampLow() { return *cast(float*)(cast(size_t)&this + 36); }
			int bClamp() { return *cast(int*)(cast(size_t)&this + 32); }
			int bFloatingPointColorCurve() { return *cast(int*)(cast(size_t)&this + 28); }
			int bColorCurve() { return *cast(int*)(cast(size_t)&this + 24); }
			int bHideCurve() { return *cast(int*)(cast(size_t)&this + 20); }
			ScriptString CurveName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
			UObject.Color CurveColor() { return *cast(UObject.Color*)(cast(size_t)&this + 4); }
			UObject CurveObject() { return *cast(UObject*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(InterpCurveEdSetup.CurveEdTab) Tabs() { return *cast(ScriptArray!(InterpCurveEdSetup.CurveEdTab)*)(cast(size_t)cast(void*)this + 60); }
		int ActiveTab() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	}
}
