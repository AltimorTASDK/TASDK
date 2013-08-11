module UnrealScript.TribesGame.TrCaHStats;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrCaHCapturePoint;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrCaHStats : UObject
{
	struct CapturePointInfo
	{
		public @property final auto ref float RemainingHeldTime() { return *cast(float*)(cast(size_t)&this + 24); }
		private ubyte __RemainingHeldTime[4];
		public @property final auto ref int PctHeld() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __PctHeld[4];
		public @property final auto ref int PointOwnershipType() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __PointOwnershipType[4];
		public @property final auto ref ScriptString LabelString() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __LabelString[12];
		public @property final auto ref TrObject.CaHCapturePointLabel PointLabel() { return *cast(TrObject.CaHCapturePointLabel*)(cast(size_t)&this + 0); }
		private ubyte __PointLabel[1];
	}
	public @property final auto ref ScriptArray!(TrCaHStats.CapturePointInfo) m_CapturePointData() { return *cast(ScriptArray!(TrCaHStats.CapturePointInfo)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptArray!(TrCaHCapturePoint) m_CapturePoints() { return *cast(ScriptArray!(TrCaHCapturePoint)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref GfxTrHud m_MoviePlayer() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref int RoundNum() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref int NumCapturePointsHeld() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref int RoundScore() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref int TeamScore() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	public @property final bool bForceUpdateNextTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
	public @property final bool bForceUpdateNextTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
	public @property final bool bForcingUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
	public @property final bool bForcingUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
	public @property final bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
	public @property final bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	public @property final auto ref int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int MyTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	final void ReadyToPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73908], cast(void*)0, cast(void*)0);
	}
	final void Initialize(TrPlayerController PC, GfxTrHud MP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(GfxTrHud*)&params[4] = MP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73911], params.ptr, cast(void*)0);
	}
	final void Show()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73914], cast(void*)0, cast(void*)0);
	}
	final void Hide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73915], cast(void*)0, cast(void*)0);
	}
	final void Tick()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73916], cast(void*)0, cast(void*)0);
	}
	final void UpdateTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73918], cast(void*)0, cast(void*)0);
	}
	final void UpdateCapturePointData(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73919], params.ptr, cast(void*)0);
	}
	final void UpdateTeamScore(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73926], params.ptr, cast(void*)0);
	}
	final ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73933], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	final void ForceUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73939], cast(void*)0, cast(void*)0);
	}
}
