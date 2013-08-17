module UnrealScript.TribesGame.TrRepairStation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.TribesGame.TrStation;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrRepairStation : TrStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrRepairStation")); }
	private static __gshared TrRepairStation mDefaultProperties;
	@property final static TrRepairStation DefaultProperties() { mixin(MGDPC("TrRepairStation", "TrRepairStation TribesGame.Default__TrRepairStation")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mOnAnimEnd;
			ScriptFunction mPlayStationEnteredEffects;
			ScriptFunction mPlayStationLeftEffects;
			ScriptFunction mPawnGrabbedRepairTool;
			ScriptFunction mCloseStation;
			ScriptFunction mGetMarker;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrRepairStation.PostBeginPlay")); }
			ScriptFunction PostInitAnimTree() { mixin(MGF("mPostInitAnimTree", "Function TribesGame.TrRepairStation.PostInitAnimTree")); }
			ScriptFunction OnAnimEnd() { mixin(MGF("mOnAnimEnd", "Function TribesGame.TrRepairStation.OnAnimEnd")); }
			ScriptFunction PlayStationEnteredEffects() { mixin(MGF("mPlayStationEnteredEffects", "Function TribesGame.TrRepairStation.PlayStationEnteredEffects")); }
			ScriptFunction PlayStationLeftEffects() { mixin(MGF("mPlayStationLeftEffects", "Function TribesGame.TrRepairStation.PlayStationLeftEffects")); }
			ScriptFunction PawnGrabbedRepairTool() { mixin(MGF("mPawnGrabbedRepairTool", "Function TribesGame.TrRepairStation.PawnGrabbedRepairTool")); }
			ScriptFunction CloseStation() { mixin(MGF("mCloseStation", "Function TribesGame.TrRepairStation.CloseStation")); }
			ScriptFunction GetMarker() { mixin(MGF("mGetMarker", "Function TribesGame.TrRepairStation.GetMarker")); }
		}
	}
	@property final
	{
		auto ref
		{
			SkelControlSingleBone m_RepairGunControl() { mixin(MGPC("SkelControlSingleBone", 1408)); }
			TrAnimNodeBlendList m_RepairStationBlendList() { mixin(MGPC("TrAnimNodeBlendList", 1404)); }
			float m_fStationOpenDelay() { mixin(MGPC("float", 1400)); }
		}
		bool m_bIsStationOpen() { mixin(MGBPC(1396, 0x1)); }
		bool m_bIsStationOpen(bool val) { mixin(MSBPC(1396, 0x1)); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnAnimEnd, params.ptr, cast(void*)0);
	}
	void PlayStationEnteredEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStationEnteredEffects, cast(void*)0, cast(void*)0);
	}
	void PlayStationLeftEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayStationLeftEffects, cast(void*)0, cast(void*)0);
	}
	void PawnGrabbedRepairTool()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnGrabbedRepairTool, cast(void*)0, cast(void*)0);
	}
	void CloseStation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseStation, cast(void*)0, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
