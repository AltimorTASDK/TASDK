module UnrealScript.Engine.Brush;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Model;
import UnrealScript.Core.UObject;

extern(C++) interface Brush : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Brush")); }
	private static __gshared Brush mDefaultProperties;
	@property final static Brush DefaultProperties() { mixin(MGDPC("Brush", "Brush Engine.Default__Brush")); }
	enum ECsgOper : ubyte
	{
		CSG_Active = 0,
		CSG_Add = 1,
		CSG_Subtract = 2,
		CSG_Intersect = 3,
		CSG_Deintersect = 4,
		CSG_MAX = 5,
	}
	struct GeomSelection
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Brush.GeomSelection")); }
		@property final auto ref
		{
			int SelectionIndex() { mixin(MGPS("int", 8)); }
			int Index() { mixin(MGPS("int", 4)); }
			int Type() { mixin(MGPS("int", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Brush.GeomSelection) SavedSelections() { mixin(MGPC("ScriptArray!(Brush.GeomSelection)", 500)); }
			// WARNING: Property 'BrushComponent' has the same name as a defined type!
			// WARNING: Property 'Brush' has the same name as a defined type!
			int PolyFlags() { mixin(MGPC("int", 484)); }
			UObject.Color BrushColor() { mixin(MGPC("UObject.Color", 480)); }
			Brush.ECsgOper CsgOper() { mixin(MGPC("Brush.ECsgOper", 476)); }
		}
		bool bPlaceableFromClassBrowser() { mixin(MGBPC(488, 0x4)); }
		bool bPlaceableFromClassBrowser(bool val) { mixin(MSBPC(488, 0x4)); }
		bool bSolidWhenSelected() { mixin(MGBPC(488, 0x2)); }
		bool bSolidWhenSelected(bool val) { mixin(MSBPC(488, 0x2)); }
		bool bColored() { mixin(MGBPC(488, 0x1)); }
		bool bColored(bool val) { mixin(MSBPC(488, 0x1)); }
	}
}
