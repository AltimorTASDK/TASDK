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
public extern(D):
	struct CapturePointInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final auto ref
		{
			float RemainingHeldTime() { return *cast(float*)(cast(size_t)&this + 24); }
			int PctHeld() { return *cast(int*)(cast(size_t)&this + 20); }
			int PointOwnershipType() { return *cast(int*)(cast(size_t)&this + 16); }
			ScriptString LabelString() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			TrObject.CaHCapturePointLabel PointLabel() { return *cast(TrObject.CaHCapturePointLabel*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrCaHStats.CapturePointInfo) m_CapturePointData() { return *cast(ScriptArray!(TrCaHStats.CapturePointInfo)*)(cast(size_t)cast(void*)this + 108); }
			ScriptArray!(TrCaHCapturePoint) m_CapturePoints() { return *cast(ScriptArray!(TrCaHCapturePoint)*)(cast(size_t)cast(void*)this + 120); }
			TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 104); }
			GfxTrHud m_MoviePlayer() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 100); }
			int RoundNum() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
			int NumCapturePointsHeld() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
			int RoundScore() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			int TeamScore() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			int RemainingTime() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int MyTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bForceUpdateNextTick() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x4) != 0; }
		bool bForceUpdateNextTick(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x4; } return val; }
		bool bForcingUpdate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
		bool bForcingUpdate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	}
final:
	void ReadyToPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73908], cast(void*)0, cast(void*)0);
	}
	void Initialize(TrPlayerController PC, GfxTrHud MP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(GfxTrHud*)&params[4] = MP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73911], params.ptr, cast(void*)0);
	}
	void Show()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73914], cast(void*)0, cast(void*)0);
	}
	void Hide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73915], cast(void*)0, cast(void*)0);
	}
	void Tick()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73916], cast(void*)0, cast(void*)0);
	}
	void UpdateTeam()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73918], cast(void*)0, cast(void*)0);
	}
	void UpdateCapturePointData(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73919], params.ptr, cast(void*)0);
	}
	void UpdateTeamScore(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73926], params.ptr, cast(void*)0);
	}
	ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73933], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void ForceUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73939], cast(void*)0, cast(void*)0);
	}
}
