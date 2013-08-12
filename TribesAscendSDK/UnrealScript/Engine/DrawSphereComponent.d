module UnrealScript.Engine.DrawSphereComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Material;

extern(C++) interface DrawSphereComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawSphereComponent")); }
	@property final
	{
		auto ref
		{
			int SphereSides() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
			float SphereRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			Material SphereMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 492); }
			UObject.Color SphereColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bDrawOnlyIfSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x4) != 0; }
		bool bDrawOnlyIfSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x4; } return val; }
		bool bDrawLitSphere() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x2) != 0; }
		bool bDrawLitSphere(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x2; } return val; }
		bool bDrawWireSphere() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
		bool bDrawWireSphere(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	}
}
