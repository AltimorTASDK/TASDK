module UnrealScript.Engine.SeqAct_SetMesh;

import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface SeqAct_SetMesh : SequenceAction
{
	enum EMeshType : ubyte
	{
		MeshType_StaticMesh = 0,
		MeshType_SkeletalMesh = 1,
		MeshType_MAX = 2,
	}
	public @property final auto ref SeqAct_SetMesh.EMeshType MeshType() { return *cast(SeqAct_SetMesh.EMeshType*)(cast(size_t)cast(void*)this + 240); }
	public @property final bool bIsAllowedToMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
	public @property final bool bIsAllowedToMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	public @property final bool bAllowDecalsToReattach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x2) != 0; }
	public @property final bool bAllowDecalsToReattach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x2; } return val; }
	public @property final auto ref StaticMesh NewStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref SkeletalMesh NewSkeletalMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 232); }
}
