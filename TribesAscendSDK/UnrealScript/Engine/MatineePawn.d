module UnrealScript.Engine.MatineePawn;

import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface MatineePawn : Pawn
{
public extern(D):
	@property final auto ref SkeletalMesh PreviewMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 1144); }
}
