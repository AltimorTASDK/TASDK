module UnrealScript.Engine.InterpTrack;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface InterpTrack : UObject
{
	enum ETrackActiveCondition : ubyte
	{
		ETAC_Always = 0,
		ETAC_GoreEnabled = 1,
		ETAC_GoreDisabled = 2,
		ETAC_MAX = 3,
	}
	struct SubTrackGroup
	{
		public @property final auto ref ScriptArray!(int) TrackIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 12); }
		private ubyte __TrackIndices[12];
		public @property final bool bIsSelected() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
		public @property final bool bIsSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
		private ubyte __bIsSelected[4];
		public @property final bool bIsCollapsed() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
		public @property final bool bIsCollapsed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		private ubyte __bIsCollapsed[4];
		public @property final auto ref ScriptString GroupName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __GroupName[12];
	}
	struct SupportedSubTrackInfo
	{
		public @property final auto ref int GroupIndex() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __GroupIndex[4];
		public @property final auto ref ScriptString SubTrackName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __SubTrackName[12];
		public @property final auto ref ScriptClass SupportedClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		private ubyte __SupportedClass[4];
	}
	public @property final auto ref ScriptArray!(InterpTrack) SubTracks() { return *cast(ScriptArray!(InterpTrack)*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref ScriptArray!(InterpTrack.SubTrackGroup) SubTrackGroups() { return *cast(ScriptArray!(InterpTrack.SubTrackGroup)*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref ScriptArray!(InterpTrack.SupportedSubTrackInfo) SupportedSubTracks() { return *cast(ScriptArray!(InterpTrack.SupportedSubTrackInfo)*)(cast(size_t)cast(void*)this + 92); }
	public @property final bool bIsCollapsed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x100) != 0; }
	public @property final bool bIsCollapsed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x100; } return val; }
	public @property final bool bIsRecording() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x80) != 0; }
	public @property final bool bIsRecording(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x80; } return val; }
	public @property final bool bIsSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x40) != 0; }
	public @property final bool bIsSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x40; } return val; }
	public @property final bool bVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x20) != 0; }
	public @property final bool bVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x20; } return val; }
	public @property final bool bSubTrackOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x10) != 0; }
	public @property final bool bSubTrackOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x10; } return val; }
	public @property final bool bIsAnimControlTrack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x8) != 0; }
	public @property final bool bIsAnimControlTrack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x8; } return val; }
	public @property final bool bDisableTrack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x4) != 0; }
	public @property final bool bDisableTrack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x4; } return val; }
	public @property final bool bDirGroupOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x2) != 0; }
	public @property final bool bDirGroupOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x2; } return val; }
	public @property final bool bOnePerGroup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
	public @property final bool bOnePerGroup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	public @property final auto ref ScriptString TrackTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref InterpTrack.ETrackActiveCondition ActiveCondition() { return *cast(InterpTrack.ETrackActiveCondition*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptClass TrackInstClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref UObject.Pointer CurveEdVTable() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref UObject.Pointer VfTable_FInterpEdInputInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
}
