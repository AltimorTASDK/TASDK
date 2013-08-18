module UnrealScript.Engine.InterpTrack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface InterpTrack : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrack")); }
	private static __gshared InterpTrack mDefaultProperties;
	@property final static InterpTrack DefaultProperties() { mixin(MGDPC("InterpTrack", "InterpTrack Engine.Default__InterpTrack")); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.InterpTrack.SubTrackGroup")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(int) TrackIndices() { mixin(MGPS("ScriptArray!(int)", 12)); }
				ScriptString GroupName() { mixin(MGPS("ScriptString", 0)); }
			}
			bool bIsSelected() { mixin(MGBPS(24, 0x2)); }
			bool bIsSelected(bool val) { mixin(MSBPS(24, 0x2)); }
			bool bIsCollapsed() { mixin(MGBPS(24, 0x1)); }
			bool bIsCollapsed(bool val) { mixin(MSBPS(24, 0x1)); }
		}
	}
	struct SupportedSubTrackInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.InterpTrack.SupportedSubTrackInfo")); }
		@property final auto ref
		{
			int GroupIndex() { mixin(MGPS("int", 16)); }
			ScriptString SubTrackName() { mixin(MGPS("ScriptString", 4)); }
			ScriptClass SupportedClass() { mixin(MGPS("ScriptClass", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(InterpTrack) SubTracks() { mixin(MGPC("ScriptArray!(InterpTrack)", 68)); }
			ScriptArray!(InterpTrack.SubTrackGroup) SubTrackGroups() { mixin(MGPC("ScriptArray!(InterpTrack.SubTrackGroup)", 80)); }
			ScriptArray!(InterpTrack.SupportedSubTrackInfo) SupportedSubTracks() { mixin(MGPC("ScriptArray!(InterpTrack.SupportedSubTrackInfo)", 92)); }
			ScriptString TrackTitle() { mixin(MGPC("ScriptString", 112)); }
			InterpTrack.ETrackActiveCondition ActiveCondition() { mixin(MGPC("InterpTrack.ETrackActiveCondition", 108)); }
			ScriptClass TrackInstClass() { mixin(MGPC("ScriptClass", 104)); }
			Pointer CurveEdVTable() { mixin(MGPC("Pointer", 64)); }
			Pointer VfTable_FInterpEdInputInterface() { mixin(MGPC("Pointer", 60)); }
		}
		bool bIsCollapsed() { mixin(MGBPC(124, 0x100)); }
		bool bIsCollapsed(bool val) { mixin(MSBPC(124, 0x100)); }
		bool bIsRecording() { mixin(MGBPC(124, 0x80)); }
		bool bIsRecording(bool val) { mixin(MSBPC(124, 0x80)); }
		bool bIsSelected() { mixin(MGBPC(124, 0x40)); }
		bool bIsSelected(bool val) { mixin(MSBPC(124, 0x40)); }
		bool bVisible() { mixin(MGBPC(124, 0x20)); }
		bool bVisible(bool val) { mixin(MSBPC(124, 0x20)); }
		bool bSubTrackOnly() { mixin(MGBPC(124, 0x10)); }
		bool bSubTrackOnly(bool val) { mixin(MSBPC(124, 0x10)); }
		bool bIsAnimControlTrack() { mixin(MGBPC(124, 0x8)); }
		bool bIsAnimControlTrack(bool val) { mixin(MSBPC(124, 0x8)); }
		bool bDisableTrack() { mixin(MGBPC(124, 0x4)); }
		bool bDisableTrack(bool val) { mixin(MSBPC(124, 0x4)); }
		bool bDirGroupOnly() { mixin(MGBPC(124, 0x2)); }
		bool bDirGroupOnly(bool val) { mixin(MSBPC(124, 0x2)); }
		bool bOnePerGroup() { mixin(MGBPC(124, 0x1)); }
		bool bOnePerGroup(bool val) { mixin(MSBPC(124, 0x1)); }
	}
}
