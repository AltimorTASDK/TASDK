module UnrealScript.Engine.ParticleModuleLocationBoneSocket;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface ParticleModuleLocationBoneSocket : ParticleModuleLocationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleLocationBoneSocket")); }
	private static __gshared ParticleModuleLocationBoneSocket mDefaultProperties;
	@property final static ParticleModuleLocationBoneSocket DefaultProperties() { mixin(MGDPC("ParticleModuleLocationBoneSocket", "ParticleModuleLocationBoneSocket Engine.Default__ParticleModuleLocationBoneSocket")); }
	enum ELocationBoneSocketSource : ubyte
	{
		BONESOCKETSOURCE_Bones = 0,
		BONESOCKETSOURCE_Sockets = 1,
		BONESOCKETSOURCE_MAX = 2,
	}
	enum ELocationBoneSocketSelectionMethod : ubyte
	{
		BONESOCKETSEL_Sequential = 0,
		BONESOCKETSEL_Random = 1,
		BONESOCKETSEL_RandomExhaustive = 2,
		BONESOCKETSEL_MAX = 3,
	}
	struct LocationBoneSocketInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.ParticleModuleLocationBoneSocket.LocationBoneSocketInfo")); }
		@property final auto ref
		{
			Vector Offset() { mixin(MGPS("Vector", 8)); }
			ScriptName BoneSocketName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ParticleModuleLocationBoneSocket.LocationBoneSocketInfo) SourceLocations() { mixin(MGPC("ScriptArray!(ParticleModuleLocationBoneSocket.LocationBoneSocketInfo)", 88)); }
			SkeletalMesh EditorSkelMesh() { mixin(MGPC("SkeletalMesh", 112)); }
			ScriptName SkelMeshActorParamName() { mixin(MGPC("ScriptName", 104)); }
			Vector UniversalOffset() { mixin(MGPC("Vector", 76)); }
			ParticleModuleLocationBoneSocket.ELocationBoneSocketSelectionMethod SelectionMethod() { mixin(MGPC("ParticleModuleLocationBoneSocket.ELocationBoneSocketSelectionMethod", 73)); }
			ParticleModuleLocationBoneSocket.ELocationBoneSocketSource SourceType() { mixin(MGPC("ParticleModuleLocationBoneSocket.ELocationBoneSocketSource", 72)); }
		}
		bool bOrientMeshEmitters() { mixin(MGBPC(100, 0x2)); }
		bool bOrientMeshEmitters(bool val) { mixin(MSBPC(100, 0x2)); }
		bool bUpdatePositionEachFrame() { mixin(MGBPC(100, 0x1)); }
		bool bUpdatePositionEachFrame(bool val) { mixin(MSBPC(100, 0x1)); }
	}
}
