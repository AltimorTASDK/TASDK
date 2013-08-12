module UnrealScript.Engine.StaticMesh;

import ScriptClasses;
import UnrealScript.Engine.RB_BodySetup;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface StaticMesh : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.StaticMesh")); }
	struct StaticMeshLODElement
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.StaticMesh.StaticMeshLODElement")); }
		@property final
		{
			// WARNING: Property 'Material' has the same name as a defined type!
			bool bEnableShadowCasting() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
			bool bEnableShadowCasting(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
			bool bEnableCollision() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bEnableCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		}
	}
	struct StaticMeshLODInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.StaticMesh.StaticMeshLODInfo")); }
		@property final auto ref ScriptArray!(StaticMesh.StaticMeshLODElement) Elements() { return *cast(ScriptArray!(StaticMesh.StaticMeshLODElement)*)(cast(size_t)&this + 0); }
	}
	@property final
	{
		auto ref
		{
			int LightMapResolution() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
			int LightMapCoordinateIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			float LODDistanceRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float LODMaxRange() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float StreamingDistanceMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			ScriptArray!(StaticMesh.StaticMeshLODInfo) LODInfo() { return *cast(ScriptArray!(StaticMesh.StaticMeshLODInfo)*)(cast(size_t)cast(void*)this + 72); }
			RB_BodySetup BodySetup() { return *cast(RB_BodySetup*)(cast(size_t)cast(void*)this + 196); }
			ScriptString SourceFilePath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 324); }
			ScriptString SourceFileTimestamp() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 336); }
		}
		bool UseSimpleLineCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x1) != 0; }
		bool UseSimpleLineCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x1; } return val; }
		bool UseSimpleBoxCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 256) & 0x1) != 0; }
		bool UseSimpleBoxCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 256) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 256) &= ~0x1; } return val; }
		bool UseSimpleRigidBodyCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
		bool UseSimpleRigidBodyCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
		bool UseFullPrecisionUVs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 264) & 0x1) != 0; }
		bool UseFullPrecisionUVs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 264) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 264) &= ~0x1; } return val; }
		bool bUsedForInstancing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
		bool bUsedForInstancing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
		bool bUseMaximumStreamingTexelRatio() { return (*cast(uint*)(cast(size_t)cast(void*)this + 272) & 0x1) != 0; }
		bool bUseMaximumStreamingTexelRatio(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 272) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 272) &= ~0x1; } return val; }
		bool bPartitionForEdgeGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1) != 0; }
		bool bPartitionForEdgeGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1; } return val; }
		bool bCanBecomeDynamic() { return (*cast(uint*)(cast(size_t)cast(void*)this + 280) & 0x1) != 0; }
		bool bCanBecomeDynamic(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 280) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 280) &= ~0x1; } return val; }
	}
}
