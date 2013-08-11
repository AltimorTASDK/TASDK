module UnrealScript.Engine.ParticleModuleLocationBoneSocket;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface ParticleModuleLocationBoneSocket : ParticleModuleLocationBase
{
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
		public @property final auto ref Vector Offset() { return *cast(Vector*)(cast(size_t)&this + 8); }
		private ubyte __Offset[12];
		public @property final auto ref ScriptName BoneSocketName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __BoneSocketName[8];
	}
	public @property final auto ref ScriptArray!(ParticleModuleLocationBoneSocket.LocationBoneSocketInfo) SourceLocations() { return *cast(ScriptArray!(ParticleModuleLocationBoneSocket.LocationBoneSocketInfo)*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref SkeletalMesh EditorSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptName SkelMeshActorParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 104); }
	public @property final bool bOrientMeshEmitters() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
	public @property final bool bOrientMeshEmitters(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
	public @property final bool bUpdatePositionEachFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bUpdatePositionEachFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	public @property final auto ref Vector UniversalOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ParticleModuleLocationBoneSocket.ELocationBoneSocketSelectionMethod SelectionMethod() { return *cast(ParticleModuleLocationBoneSocket.ELocationBoneSocketSelectionMethod*)(cast(size_t)cast(void*)this + 73); }
	public @property final auto ref ParticleModuleLocationBoneSocket.ELocationBoneSocketSource SourceType() { return *cast(ParticleModuleLocationBoneSocket.ELocationBoneSocketSource*)(cast(size_t)cast(void*)this + 72); }
}
