module UnrealScript.Engine.SeqAct_SetMesh;

import ScriptClasses;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface SeqAct_SetMesh : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetMesh")); }
	enum EMeshType : ubyte
	{
		MeshType_StaticMesh = 0,
		MeshType_SkeletalMesh = 1,
		MeshType_MAX = 2,
	}
	@property final
	{
		auto ref
		{
			SeqAct_SetMesh.EMeshType MeshType() { return *cast(SeqAct_SetMesh.EMeshType*)(cast(size_t)cast(void*)this + 240); }
			StaticMesh NewStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 236); }
			SkeletalMesh NewSkeletalMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bIsAllowedToMove() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bIsAllowedToMove(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
		bool bAllowDecalsToReattach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x2) != 0; }
		bool bAllowDecalsToReattach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x2; } return val; }
	}
}
