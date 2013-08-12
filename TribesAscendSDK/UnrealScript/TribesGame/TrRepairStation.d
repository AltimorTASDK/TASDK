module UnrealScript.TribesGame.TrRepairStation;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.TribesGame.TrStation;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrRepairStation : TrStation
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRepairStation")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRepairStation.PostBeginPlay")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRepairStation.PostInitAnimTree")); }
			ScriptFunction OnAnimEnd() { return mOnAnimEnd ? mOnAnimEnd : (mOnAnimEnd = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRepairStation.OnAnimEnd")); }
			ScriptFunction PlayStationEnteredEffects() { return mPlayStationEnteredEffects ? mPlayStationEnteredEffects : (mPlayStationEnteredEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRepairStation.PlayStationEnteredEffects")); }
			ScriptFunction PlayStationLeftEffects() { return mPlayStationLeftEffects ? mPlayStationLeftEffects : (mPlayStationLeftEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRepairStation.PlayStationLeftEffects")); }
			ScriptFunction PawnGrabbedRepairTool() { return mPawnGrabbedRepairTool ? mPawnGrabbedRepairTool : (mPawnGrabbedRepairTool = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRepairStation.PawnGrabbedRepairTool")); }
			ScriptFunction CloseStation() { return mCloseStation ? mCloseStation : (mCloseStation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRepairStation.CloseStation")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRepairStation.GetMarker")); }
		}
	}
	@property final
	{
		auto ref
		{
			SkelControlSingleBone m_RepairGunControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 1408); }
			TrAnimNodeBlendList m_RepairStationBlendList() { return *cast(TrAnimNodeBlendList*)(cast(size_t)cast(void*)this + 1404); }
			float m_fStationOpenDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 1400); }
		}
		bool m_bIsStationOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1396) & 0x1) != 0; }
		bool m_bIsStationOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1396) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1396) &= ~0x1; } return val; }
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
