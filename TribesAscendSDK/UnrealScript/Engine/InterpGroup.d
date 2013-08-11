module UnrealScript.Engine.InterpGroup;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpGroup : UObject
{
	struct InterpEdSelKey
	{
		public @property final auto ref float UnsnappedPosition() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __UnsnappedPosition[4];
		public @property final auto ref int KeyIndex() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __KeyIndex[4];
		public @property final auto ref InterpTrack Track() { return *cast(InterpTrack*)(cast(size_t)&this + 4); }
		private ubyte __Track[4];
		public @property final auto ref InterpGroup Group() { return *cast(InterpGroup*)(cast(size_t)&this + 0); }
		private ubyte __Group[4];
	}
	public @property final auto ref ScriptArray!(InterpTrack) InterpTracks() { return *cast(ScriptArray!(InterpTrack)*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptArray!(AnimSet) GroupAnimSets() { return *cast(ScriptArray!(AnimSet)*)(cast(size_t)cast(void*)this + 88); }
	public @property final bool bIsSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x10) != 0; }
	public @property final bool bIsSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x10; } return val; }
	public @property final bool bIsParented() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x8) != 0; }
	public @property final bool bIsParented(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x8; } return val; }
	public @property final bool bIsFolder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
	public @property final bool bIsFolder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
	public @property final bool bVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
	public @property final bool bVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
	public @property final bool bCollapsed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bCollapsed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	public @property final auto ref UObject.Color GroupColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptName GroupName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref UObject.Pointer VfTable_FInterpEdInputInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
}
