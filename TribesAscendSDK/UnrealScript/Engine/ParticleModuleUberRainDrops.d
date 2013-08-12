module UnrealScript.Engine.ParticleModuleUberRainDrops;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder;

extern(C++) interface ParticleModuleUberRainDrops : ParticleModuleUberBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleUberRainDrops")); }
	@property final
	{
		auto ref
		{
			Vector StartLocationMax() { return *cast(Vector*)(cast(size_t)cast(void*)this + 208); }
			Vector StartLocationMin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 196); }
			ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis PC_HeightAxis() { return *cast(ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis*)(cast(size_t)cast(void*)this + 192); }
			float PC_StartHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float PC_StartRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			Vector PC_StartLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 172); }
			float PC_VelocityScale() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float AlphaOverLife() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			Vector ColorOverLife() { return *cast(Vector*)(cast(size_t)cast(void*)this + 148); }
			float StartVelocityRadialMax() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			float StartVelocityRadialMin() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			Vector StartVelocityMax() { return *cast(Vector*)(cast(size_t)cast(void*)this + 128); }
			Vector StartVelocityMin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 116); }
			Vector StartSizeMax() { return *cast(Vector*)(cast(size_t)cast(void*)this + 104); }
			Vector StartSizeMin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 92); }
			float LifetimeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float LifetimeMin() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
		}
		bool bRadialVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x200) != 0; }
		bool bRadialVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x200; } return val; }
		bool bVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x100) != 0; }
		bool bVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x100; } return val; }
		bool bSurfaceOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x80) != 0; }
		bool bSurfaceOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x80; } return val; }
		bool bNegative_Z() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x40) != 0; }
		bool bNegative_Z(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x40; } return val; }
		bool bNegative_Y() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x20) != 0; }
		bool bNegative_Y(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x20; } return val; }
		bool bNegative_X() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x10) != 0; }
		bool bNegative_X(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x10; } return val; }
		bool bPositive_Z() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x8) != 0; }
		bool bPositive_Z(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x8; } return val; }
		bool bPositive_Y() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x4) != 0; }
		bool bPositive_Y(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x4; } return val; }
		bool bPositive_X() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x2) != 0; }
		bool bPositive_X(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x2; } return val; }
		bool bIsUsingCylinder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1) != 0; }
		bool bIsUsingCylinder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1; } return val; }
	}
}
