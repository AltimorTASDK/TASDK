module UnrealScript.Engine.Brush;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Model;
import UnrealScript.Core.UObject;

extern(C++) interface Brush : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Brush")); }
	private static __gshared Brush mDefaultProperties;
	@property final static Brush DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Brush)("Brush Engine.Default__Brush")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.Brush.GeomSelection")); }
		@property final auto ref
		{
			int SelectionIndex() { return *cast(int*)(cast(size_t)&this + 8); }
			int Index() { return *cast(int*)(cast(size_t)&this + 4); }
			int Type() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Brush.GeomSelection) SavedSelections() { return *cast(ScriptArray!(Brush.GeomSelection)*)(cast(size_t)cast(void*)this + 500); }
			// WARNING: Property 'Brush' has the same name as a defined type!
			int PolyFlags() { return *cast(int*)(cast(size_t)cast(void*)this + 484); }
			UObject.Color BrushColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 480); }
			Brush.ECsgOper CsgOper() { return *cast(Brush.ECsgOper*)(cast(size_t)cast(void*)this + 476); }
		}
		bool bPlaceableFromClassBrowser() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x4) != 0; }
		bool bPlaceableFromClassBrowser(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x4; } return val; }
		bool bSolidWhenSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x2) != 0; }
		bool bSolidWhenSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x2; } return val; }
		bool bColored() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool bColored(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	}
}
