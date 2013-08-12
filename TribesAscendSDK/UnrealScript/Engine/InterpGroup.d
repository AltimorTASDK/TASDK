module UnrealScript.Engine.InterpGroup;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpGroup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpGroup")); }
	struct InterpEdSelKey
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpGroup.InterpEdSelKey")); }
		@property final auto ref
		{
			float UnsnappedPosition() { return *cast(float*)(cast(size_t)&this + 12); }
			int KeyIndex() { return *cast(int*)(cast(size_t)&this + 8); }
			InterpTrack Track() { return *cast(InterpTrack*)(cast(size_t)&this + 4); }
			InterpGroup Group() { return *cast(InterpGroup*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(InterpTrack) InterpTracks() { return *cast(ScriptArray!(InterpTrack)*)(cast(size_t)cast(void*)this + 64); }
			ScriptArray!(AnimSet) GroupAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 88); }
			UObject.Color GroupColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 84); }
			ScriptName GroupName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
			UObject.Pointer VfTable_FInterpEdInputInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bIsSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x10) != 0; }
		bool bIsSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x10; } return val; }
		bool bIsParented() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x8) != 0; }
		bool bIsParented(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x8; } return val; }
		bool bIsFolder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
		bool bIsFolder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
		bool bVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
		bool bVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
		bool bCollapsed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bCollapsed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
