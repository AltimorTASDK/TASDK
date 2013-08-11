module UnrealScript.TribesGame.TrRepairStation;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.SkelControlSingleBone;
import UnrealScript.TribesGame.TrStation;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrRepairStation : TrStation
{
	public @property final auto ref SkelControlSingleBone m_RepairGunControl() { return *cast(SkelControlSingleBone*)(cast(size_t)cast(void*)this + 1408); }
	public @property final auto ref TrAnimNodeBlendList m_RepairStationBlendList() { return *cast(TrAnimNodeBlendList*)(cast(size_t)cast(void*)this + 1404); }
	public @property final auto ref float m_fStationOpenDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 1400); }
	public @property final bool m_bIsStationOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1396) & 0x1) != 0; }
	public @property final bool m_bIsStationOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1396) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1396) &= ~0x1; } return val; }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110525], cast(void*)0, cast(void*)0);
	}
	final void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110526], params.ptr, cast(void*)0);
	}
	final void OnAnimEnd(AnimNodeSequence SeqNode, float PlayedTime, float ExcessTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(AnimNodeSequence*)params.ptr = SeqNode;
		*cast(float*)&params[4] = PlayedTime;
		*cast(float*)&params[8] = ExcessTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110528], params.ptr, cast(void*)0);
	}
	final void PlayStationEnteredEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110532], cast(void*)0, cast(void*)0);
	}
	final void PlayStationLeftEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110533], cast(void*)0, cast(void*)0);
	}
	final void PawnGrabbedRepairTool()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110534], cast(void*)0, cast(void*)0);
	}
	final void CloseStation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110535], cast(void*)0, cast(void*)0);
	}
	final Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110536], params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
