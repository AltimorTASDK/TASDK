module UnrealScript.Engine.ParticleModuleTypeDataAnimTrail;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataAnimTrail : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleTypeDataAnimTrail")); }
	private static __gshared ParticleModuleTypeDataAnimTrail mDefaultProperties;
	@property final static ParticleModuleTypeDataAnimTrail DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleTypeDataAnimTrail)("ParticleModuleTypeDataAnimTrail Engine.Default__ParticleModuleTypeDataAnimTrail")); }
	@property final
	{
		auto ref
		{
			float TangentTessellationScalar() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float DistanceTessellationStepSize() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float TilingDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			int SheetsPerTrail() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			ScriptName ControlEdgeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bRenderTessellation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x80) != 0; }
		bool bRenderTessellation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x80; } return val; }
		bool bRenderTangents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x40) != 0; }
		bool bRenderTangents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x40; } return val; }
		bool bRenderSpawnPoints() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x20) != 0; }
		bool bRenderSpawnPoints(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x20; } return val; }
		bool bRenderGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x10) != 0; }
		bool bRenderGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x10; } return val; }
		bool bTangentRecalculationEveryFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x8) != 0; }
		bool bTangentRecalculationEveryFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x8; } return val; }
		bool bEnablePreviousTangentRecalculation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x4) != 0; }
		bool bEnablePreviousTangentRecalculation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x4; } return val; }
		bool bClipSourceSegement() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
		bool bClipSourceSegement(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
		bool bDeadTrailsOnDeactivate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bDeadTrailsOnDeactivate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	}
}
