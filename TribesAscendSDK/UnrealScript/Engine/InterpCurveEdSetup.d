module UnrealScript.Engine.InterpCurveEdSetup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface InterpCurveEdSetup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InterpCurveEdSetup")()); }
	private static __gshared InterpCurveEdSetup mDefaultProperties;
	@property final static InterpCurveEdSetup DefaultProperties() { mixin(MGDPC!(InterpCurveEdSetup, "InterpCurveEdSetup Engine.Default__InterpCurveEdSetup")()); }
	struct CurveEdTab
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpCurveEdSetup.CurveEdTab")()); }
		@property final auto ref
		{
			ScriptArray!(InterpCurveEdSetup.CurveEdEntry) Curves() { mixin(MGPS!(ScriptArray!(InterpCurveEdSetup.CurveEdEntry), 12)()); }
			float ViewEndOutput() { mixin(MGPS!(float, 36)()); }
			float ViewStartOutput() { mixin(MGPS!(float, 32)()); }
			float ViewEndInput() { mixin(MGPS!(float, 28)()); }
			float ViewStartInput() { mixin(MGPS!(float, 24)()); }
			ScriptString TabName() { mixin(MGPS!(ScriptString, 0)()); }
		}
	}
	struct CurveEdEntry
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InterpCurveEdSetup.CurveEdEntry")()); }
		@property final auto ref
		{
			float ClampHigh() { mixin(MGPS!(float, 40)()); }
			float ClampLow() { mixin(MGPS!(float, 36)()); }
			int bClamp() { mixin(MGPS!(int, 32)()); }
			int bFloatingPointColorCurve() { mixin(MGPS!(int, 28)()); }
			int bColorCurve() { mixin(MGPS!(int, 24)()); }
			int bHideCurve() { mixin(MGPS!(int, 20)()); }
			ScriptString CurveName() { mixin(MGPS!(ScriptString, 8)()); }
			UObject.Color CurveColor() { mixin(MGPS!(UObject.Color, 4)()); }
			UObject CurveObject() { mixin(MGPS!(UObject, 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(InterpCurveEdSetup.CurveEdTab) Tabs() { mixin(MGPC!(ScriptArray!(InterpCurveEdSetup.CurveEdTab), 60)()); }
		int ActiveTab() { mixin(MGPC!(int, 72)()); }
	}
}
