module UnrealScript.Engine.ParticleModuleLocationBoneSocket;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface ParticleModuleLocationBoneSocket : ParticleModuleLocationBase
{
public extern(D):
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
		@property final auto ref
		{
			Vector Offset() { return *cast(Vector*)(cast(size_t)&this + 8); }
			ScriptName BoneSocketName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ParticleModuleLocationBoneSocket.LocationBoneSocketInfo) SourceLocations() { return *cast(ScriptArray!(ParticleModuleLocationBoneSocket.LocationBoneSocketInfo)*)(cast(size_t)cast(void*)this + 88); }
			SkeletalMesh EditorSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 112); }
			ScriptName SkelMeshActorParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 104); }
			Vector UniversalOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 76); }
			ParticleModuleLocationBoneSocket.ELocationBoneSocketSelectionMethod SelectionMethod() { return *cast(ParticleModuleLocationBoneSocket.ELocationBoneSocketSelectionMethod*)(cast(size_t)cast(void*)this + 73); }
			ParticleModuleLocationBoneSocket.ELocationBoneSocketSource SourceType() { return *cast(ParticleModuleLocationBoneSocket.ELocationBoneSocketSource*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bOrientMeshEmitters() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
		bool bOrientMeshEmitters(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
		bool bUpdatePositionEachFrame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bUpdatePositionEachFrame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
