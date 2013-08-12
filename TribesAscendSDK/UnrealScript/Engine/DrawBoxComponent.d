module UnrealScript.Engine.DrawBoxComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawBoxComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawBoxComponent")); }
	@property final
	{
		auto ref
		{
			Vector BoxExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 496); }
			Material BoxMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 492); }
			UObject.Color BoxColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bDrawOnlyIfSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 508) & 0x4) != 0; }
		bool bDrawOnlyIfSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 508) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 508) &= ~0x4; } return val; }
		bool bDrawLitBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 508) & 0x2) != 0; }
		bool bDrawLitBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 508) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 508) &= ~0x2; } return val; }
		bool bDrawWireBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 508) & 0x1) != 0; }
		bool bDrawWireBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 508) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 508) &= ~0x1; } return val; }
	}
}
