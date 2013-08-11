module UnrealScript.TribesGame.TrScoreboard;

import ScriptClasses;
import UnrealScript.TribesGame.TrPlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.TribesGame.TrGameReplicationInfo;

extern(C++) interface TrScoreboard : UObject
{
public extern(D):
	struct TrScoreboardState
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			int DiamondSwordScore() { return *cast(int*)(cast(size_t)&this + 8); }
			int BloodEagleScore() { return *cast(int*)(cast(size_t)&this + 4); }
			int RemainingTime() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct TrScoreSlot
	{
		private ubyte __buffer__[48];
	public extern(D):
		@property final auto ref
		{
			int RankIcon() { return *cast(int*)(cast(size_t)&this + 44); }
			int Rank() { return *cast(int*)(cast(size_t)&this + 40); }
			int Ping() { return *cast(int*)(cast(size_t)&this + 36); }
			int Score() { return *cast(int*)(cast(size_t)&this + 32); }
			int Assists() { return *cast(int*)(cast(size_t)&this + 28); }
			int Kills() { return *cast(int*)(cast(size_t)&this + 24); }
			ScriptString ClassAbb() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			GfxTrHud m_MoviePlayer() { return *cast(GfxTrHud*)(cast(size_t)cast(void*)this + 100); }
			TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 1652); }
			TrScoreboard.TrScoreboardState PreviousState() { return *cast(TrScoreboard.TrScoreboardState*)(cast(size_t)cast(void*)this + 1640); }
			TrScoreboard.TrScoreSlot ScoreboardSlots() { return *cast(TrScoreboard.TrScoreSlot*)(cast(size_t)cast(void*)this + 104); }
			int DSIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
			int BEIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
			int DSOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
			int PrevActiveSlot() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
			int PrevDSSLots() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
			int PrevBESlots() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
			int DSSlots() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			int BESlots() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int MAX_PLAYER_INDEX() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x8) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x8; } return val; }
		bool bCheckPing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x10) != 0; }
		bool bCheckPing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x10; } return val; }
		bool bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x4) != 0; }
		bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x4; } return val; }
		bool bUpdated() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
		bool bUpdated(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
		bool bTeamGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bTeamGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	}
final:
	int CreditsSort(TrPlayerReplicationInfo A, TrPlayerReplicationInfo B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = A;
		*cast(TrPlayerReplicationInfo*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110681], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int AssistsSort(TrPlayerReplicationInfo A, TrPlayerReplicationInfo B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = A;
		*cast(TrPlayerReplicationInfo*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110683], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int KillsSort(TrPlayerReplicationInfo A, TrPlayerReplicationInfo B)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = A;
		*cast(TrPlayerReplicationInfo*)&params[4] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110685], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void Initialize(TrPlayerController PC, GfxTrHud MP)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = PC;
		*cast(GfxTrHud*)&params[4] = MP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110715], params.ptr, cast(void*)0);
	}
	void Show(bool bIsTeamGame)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsTeamGame;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110718], params.ptr, cast(void*)0);
	}
	void Hide()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110720], cast(void*)0, cast(void*)0);
	}
	void ConfigScoreboard()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110721], cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110723], params.ptr, cast(void*)0);
	}
	void UpdatePRILists(TrGameReplicationInfo TrGRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = TrGRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110726], params.ptr, cast(void*)0);
	}
	ScriptArray!(PlayerReplicationInfo) GetBestSortArray(ScriptArray!(PlayerReplicationInfo) PRIArray)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(PlayerReplicationInfo)*)params.ptr = PRIArray;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110734], params.ptr, cast(void*)0);
		return *cast(ScriptArray!(PlayerReplicationInfo)*)&params[12];
	}
	int GetRank(ScriptArray!(PlayerReplicationInfo) PRIArray)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(PlayerReplicationInfo)*)params.ptr = PRIArray;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110745], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	bool ClearSlot(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110759], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool UpdateSlot(int Index, TrPlayerReplicationInfo PRI)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(TrPlayerReplicationInfo*)&params[4] = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110762], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	ScriptString FormatTime(int Seconds)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Seconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110766], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void UpdateHeaders(TrGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110772], params.ptr, cast(void*)0);
	}
	bool IsValidScoreboardPlayer(TrPlayerReplicationInfo PRI)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110776], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
