module UnrealScript.Engine.StaticMesh;

import ScriptClasses;
import UnrealScript.Engine.RB_BodySetup;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface StaticMesh : UObject
{
	struct StaticMeshLODElement
	{
		// WARNING: Property 'Material' has the same name as a defined type!
		public @property final bool bEnableShadowCasting() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool bEnableShadowCasting(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __bEnableShadowCasting[4];
		public @property final bool bEnableCollision() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bEnableCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bEnableCollision[4];
	}
	struct StaticMeshLODInfo
	{
		public @property final auto ref ScriptArray!(StaticMesh.StaticMeshLODElement) Elements() { return *cast(ScriptArray!(StaticMesh.StaticMeshLODElement)*)(cast(size_t)&this + 0); }
		private ubyte __Elements[12];
	}
	public @property final bool UseSimpleLineCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x1) != 0; }
	public @property final bool UseSimpleLineCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x1; } return val; }
	public @property final bool UseSimpleBoxCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x1) != 0; }
	public @property final bool UseSimpleBoxCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x1; } return val; }
	public @property final bool UseSimpleRigidBodyCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
	public @property final bool UseSimpleRigidBodyCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
	public @property final bool UseFullPrecisionUVs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1) != 0; }
	public @property final bool UseFullPrecisionUVs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1; } return val; }
	public @property final bool bUsedForInstancing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
	public @property final bool bUsedForInstancing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
	public @property final bool bUseMaximumStreamingTexelRatio() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x1) != 0; }
	public @property final bool bUseMaximumStreamingTexelRatio(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x1; } return val; }
	public @property final bool bPartitionForEdgeGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1) != 0; }
	public @property final bool bPartitionForEdgeGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1; } return val; }
	public @property final bool bCanBecomeDynamic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x1) != 0; }
	public @property final bool bCanBecomeDynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x1; } return val; }
	public @property final auto ref int LightMapResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int LightMapCoordinateIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float LODDistanceRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float LODMaxRange() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float StreamingDistanceMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref ScriptArray!(StaticMesh.StaticMeshLODInfo) LODInfo() { return *cast(ScriptArray!(StaticMesh.StaticMeshLODInfo)*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref RB_BodySetup BodySetup() { return *cast(RB_BodySetup*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref ScriptString SourceFilePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref ScriptString SourceFileTimestamp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 336); }
}
