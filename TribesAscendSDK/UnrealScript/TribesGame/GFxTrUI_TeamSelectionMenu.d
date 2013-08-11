module UnrealScript.TribesGame.GFxTrUI_TeamSelectionMenu;

import ScriptClasses;
import UnrealScript.Engine.GameReplicationInfo;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrUI_TeamSelectionMenu : GFxMoviePlayer
{
public extern(D):
	@property final
	{
		auto ref
		{
			GFxObject MovieClip() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 404); }
			GFxObject DiamondSwordCountTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 420); }
			GFxObject BloodEagleCountTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 416); }
			GFxObject DiamondSwordButton() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 412); }
			GFxObject BloodEagleButton() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 408); }
			TrPlayerController TrPC() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 400); }
			int PrevDiamondSwordCount() { return *cast(int*)(cast(size_t)cast(void*)this + 392); }
			int PrevBloodEagleCount() { return *cast(int*)(cast(size_t)cast(void*)this + 388); }
			int AllowedTeamDiscrepancyOnTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 384); }
			int AllowedTeamDiscrepancyNoTeam() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
		}
		bool bCompleted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 396) & 0x4) != 0; }
		bool bCompleted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 396) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 396) &= ~0x4; } return val; }
		bool JoinDiamondSwordAllowed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 396) & 0x10) != 0; }
		bool JoinDiamondSwordAllowed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 396) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 396) &= ~0x10; } return val; }
		bool JoinBloodEagleAllowed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 396) & 0x8) != 0; }
		bool JoinBloodEagleAllowed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 396) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 396) &= ~0x8; } return val; }
		bool bJustJoined() { return (*cast(uint*)(cast(size_t)cast(void*)this + 396) & 0x2) != 0; }
		bool bJustJoined(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 396) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 396) &= ~0x2; } return val; }
		bool bInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 396) & 0x1) != 0; }
		bool bInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 396) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 396) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65175], cast(void*)0, cast(void*)0);
	}
	bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65176], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetFontIndex(int FontIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FontIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65179], params.ptr, cast(void*)0);
	}
	void Show()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65181], cast(void*)0, cast(void*)0);
	}
	void SetLabels(ScriptString Title, ScriptString Spectate)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		*cast(ScriptString*)&params[12] = Spectate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65182], params.ptr, cast(void*)0);
	}
	void Tick(GameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65186], params.ptr, cast(void*)0);
	}
	void EnableBloodEagle(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65196], params.ptr, cast(void*)0);
	}
	void AsTeamChooseEnableButton(int TeamID, ScriptString bEnable)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TeamID;
		*cast(ScriptString*)&params[4] = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65198], params.ptr, cast(void*)0);
	}
	void EnableDiamondSword(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65199], params.ptr, cast(void*)0);
	}
	void EnableSpectate(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65201], params.ptr, cast(void*)0);
	}
	void choseTeamBE()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65203], cast(void*)0, cast(void*)0);
	}
	void choseTeamDS()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65208], cast(void*)0, cast(void*)0);
	}
	void choseTeamSpectate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65211], cast(void*)0, cast(void*)0);
	}
	void CompleteMovie(bool bHaveTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHaveTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[65212], params.ptr, cast(void*)0);
	}
}
