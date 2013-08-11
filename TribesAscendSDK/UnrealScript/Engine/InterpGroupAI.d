module UnrealScript.Engine.InterpGroupAI;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpGroup;

extern(C++) interface InterpGroupAI : InterpGroup
{
public extern(D):
	@property final
	{
		auto ref
		{
			Actor StageMarkActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 120); }
			Pawn PreviewPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 116); }
			ScriptName StageMarkGroup() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 108); }
			ScriptClass PreviewPawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 104); }
		}
		bool bNoEncroachmentCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x2) != 0; }
		bool bNoEncroachmentCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x2; } return val; }
		bool SnapToRootBoneLocationWhenFinished() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
		bool SnapToRootBoneLocationWhenFinished(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	}
}
