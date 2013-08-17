module UnrealScript.Engine.StaticMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_BodySetup;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface StaticMesh : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.StaticMesh")()); }
	private static __gshared StaticMesh mDefaultProperties;
	@property final static StaticMesh DefaultProperties() { mixin(MGDPC!(StaticMesh, "StaticMesh Engine.Default__StaticMesh")()); }
	struct StaticMeshLODElement
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.StaticMesh.StaticMeshLODElement")()); }
		@property final
		{
			// WARNING: Property 'Material' has the same name as a defined type!
			bool bEnableShadowCasting() { mixin(MGBPS!(4, 0x1)()); }
			bool bEnableShadowCasting(bool val) { mixin(MSBPS!(4, 0x1)()); }
			bool bEnableCollision() { mixin(MGBPS!(12, 0x1)()); }
			bool bEnableCollision(bool val) { mixin(MSBPS!(12, 0x1)()); }
		}
	}
	struct StaticMeshLODInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.StaticMesh.StaticMeshLODInfo")()); }
		@property final auto ref ScriptArray!(StaticMesh.StaticMeshLODElement) Elements() { mixin(MGPS!(ScriptArray!(StaticMesh.StaticMeshLODElement), 0)()); }
	}
	@property final
	{
		auto ref
		{
			int LightMapResolution() { mixin(MGPC!(int, 108)()); }
			int LightMapCoordinateIndex() { mixin(MGPC!(int, 112)()); }
			float LODDistanceRatio() { mixin(MGPC!(float, 84)()); }
			float LODMaxRange() { mixin(MGPC!(float, 88)()); }
			float StreamingDistanceMultiplier() { mixin(MGPC!(float, 288)()); }
			ScriptArray!(StaticMesh.StaticMeshLODInfo) LODInfo() { mixin(MGPC!(ScriptArray!(StaticMesh.StaticMeshLODInfo), 72)()); }
			RB_BodySetup BodySetup() { mixin(MGPC!(RB_BodySetup, 196)()); }
			ScriptString SourceFilePath() { mixin(MGPC!(ScriptString, 324)()); }
			ScriptString SourceFileTimestamp() { mixin(MGPC!(ScriptString, 336)()); }
		}
		bool UseSimpleLineCollision() { mixin(MGBPC!(252, 0x1)()); }
		bool UseSimpleLineCollision(bool val) { mixin(MSBPC!(252, 0x1)()); }
		bool UseSimpleBoxCollision() { mixin(MGBPC!(256, 0x1)()); }
		bool UseSimpleBoxCollision(bool val) { mixin(MSBPC!(256, 0x1)()); }
		bool UseSimpleRigidBodyCollision() { mixin(MGBPC!(260, 0x1)()); }
		bool UseSimpleRigidBodyCollision(bool val) { mixin(MSBPC!(260, 0x1)()); }
		bool UseFullPrecisionUVs() { mixin(MGBPC!(264, 0x1)()); }
		bool UseFullPrecisionUVs(bool val) { mixin(MSBPC!(264, 0x1)()); }
		bool bUsedForInstancing() { mixin(MGBPC!(268, 0x1)()); }
		bool bUsedForInstancing(bool val) { mixin(MSBPC!(268, 0x1)()); }
		bool bUseMaximumStreamingTexelRatio() { mixin(MGBPC!(272, 0x1)()); }
		bool bUseMaximumStreamingTexelRatio(bool val) { mixin(MSBPC!(272, 0x1)()); }
		bool bPartitionForEdgeGeometry() { mixin(MGBPC!(276, 0x1)()); }
		bool bPartitionForEdgeGeometry(bool val) { mixin(MSBPC!(276, 0x1)()); }
		bool bCanBecomeDynamic() { mixin(MGBPC!(280, 0x1)()); }
		bool bCanBecomeDynamic(bool val) { mixin(MSBPC!(280, 0x1)()); }
	}
}
