module UnrealScript.Engine.DrawCylinderComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawCylinderComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawCylinderComponent")); }
	@property final
	{
		auto ref
		{
			int CylinderSides() { return *cast(int*)(cast(size_t)cast(void*)this + 512); }
			float CylinderHeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float CylinderHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float CylinderTopRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float CylinderRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			Material CylinderMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 492); }
			UObject.Color CylinderColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bDrawOnlyIfSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x4) != 0; }
		bool bDrawOnlyIfSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x4; } return val; }
		bool bDrawLitCylinder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x2) != 0; }
		bool bDrawLitCylinder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x2; } return val; }
		bool bDrawWireCylinder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x1) != 0; }
		bool bDrawWireCylinder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x1; } return val; }
	}
}
