module UnrealScript.Engine.ParticleModuleTypeDataTrail2;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataTrail2 : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleTypeDataTrail2")); }
	@property final
	{
		auto ref
		{
			int MaxParticleInTrailCount() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
			int MaxTrailCount() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
			int Sheets() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
			int TextureTile() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
			float TessellationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float TessellationFactorDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			int TessellationFactor() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
		}
		bool RenderTessellation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x20) != 0; }
		bool RenderTessellation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x20; } return val; }
		bool RenderLines() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x10) != 0; }
		bool RenderLines(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x10; } return val; }
		bool RenderDirectLine() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x8) != 0; }
		bool RenderDirectLine(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x8; } return val; }
		bool RenderGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
		bool RenderGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
		bool bClearTangents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
		bool bClearTangents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
		bool bClipSourceSegement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bClipSourceSegement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
