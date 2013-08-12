module UnrealScript.Engine.InterpTrack;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface InterpTrack : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrack")); }
	private static __gshared InterpTrack mDefaultProperties;
	@property final static InterpTrack DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrack)("InterpTrack Engine.Default__InterpTrack")); }
	enum ETrackActiveCondition : ubyte
	{
		ETAC_Always = 0,
		ETAC_GoreEnabled = 1,
		ETAC_GoreDisabled = 2,
		ETAC_MAX = 3,
	}
	struct SubTrackGroup
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrack.SubTrackGroup")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(int) TrackIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 12); }
				ScriptString GroupName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			}
			bool bIsSelected() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
			bool bIsSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
			bool bIsCollapsed() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bIsCollapsed(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	struct SupportedSubTrackInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrack.SupportedSubTrackInfo")); }
		@property final auto ref
		{
			int GroupIndex() { return *cast(int*)(cast(size_t)&this + 16); }
			ScriptString SubTrackName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			ScriptClass SupportedClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(InterpTrack) SubTracks() { return *cast(ScriptArray!(InterpTrack)*)(cast(size_t)cast(void*)this + 68); }
			ScriptArray!(InterpTrack.SubTrackGroup) SubTrackGroups() { return *cast(ScriptArray!(InterpTrack.SubTrackGroup)*)(cast(size_t)cast(void*)this + 80); }
			ScriptArray!(InterpTrack.SupportedSubTrackInfo) SupportedSubTracks() { return *cast(ScriptArray!(InterpTrack.SupportedSubTrackInfo)*)(cast(size_t)cast(void*)this + 92); }
			ScriptString TrackTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
			InterpTrack.ETrackActiveCondition ActiveCondition() { return *cast(InterpTrack.ETrackActiveCondition*)(cast(size_t)cast(void*)this + 108); }
			ScriptClass TrackInstClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 104); }
			UObject.Pointer CurveEdVTable() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
			UObject.Pointer VfTable_FInterpEdInputInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bIsCollapsed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x100) != 0; }
		bool bIsCollapsed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x100; } return val; }
		bool bIsRecording() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x80) != 0; }
		bool bIsRecording(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x80; } return val; }
		bool bIsSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x40) != 0; }
		bool bIsSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x40; } return val; }
		bool bVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x20) != 0; }
		bool bVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x20; } return val; }
		bool bSubTrackOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x10) != 0; }
		bool bSubTrackOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x10; } return val; }
		bool bIsAnimControlTrack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x8) != 0; }
		bool bIsAnimControlTrack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x8; } return val; }
		bool bDisableTrack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x4) != 0; }
		bool bDisableTrack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x4; } return val; }
		bool bDirGroupOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x2) != 0; }
		bool bDirGroupOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x2; } return val; }
		bool bOnePerGroup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
		bool bOnePerGroup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	}
}
