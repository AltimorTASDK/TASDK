module UnrealScript.TribesGame.GFxTrUI_TeamSelectionMenu;

import ScriptClasses;
import UnrealScript.Engine.GameReplicationInfo;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrUI_TeamSelectionMenu : GFxMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrUI_TeamSelectionMenu")); }
	private static __gshared GFxTrUI_TeamSelectionMenu mDefaultProperties;
	@property final static GFxTrUI_TeamSelectionMenu DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrUI_TeamSelectionMenu)("GFxTrUI_TeamSelectionMenu TribesGame.Default__GFxTrUI_TeamSelectionMenu")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mStart;
			ScriptFunction mSetFontIndex;
			ScriptFunction mShow;
			ScriptFunction mSetLabels;
			ScriptFunction mTick;
			ScriptFunction mEnableBloodEagle;
			ScriptFunction mAsTeamChooseEnableButton;
			ScriptFunction mEnableDiamondSword;
			ScriptFunction mEnableSpectate;
			ScriptFunction mchoseTeamBE;
			ScriptFunction mchoseTeamDS;
			ScriptFunction mchoseTeamSpectate;
			ScriptFunction mCompleteMovie;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.Initialize")); }
			ScriptFunction Start() { return mStart ? mStart : (mStart = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.Start")); }
			ScriptFunction SetFontIndex() { return mSetFontIndex ? mSetFontIndex : (mSetFontIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.SetFontIndex")); }
			ScriptFunction Show() { return mShow ? mShow : (mShow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.Show")); }
			ScriptFunction SetLabels() { return mSetLabels ? mSetLabels : (mSetLabels = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.SetLabels")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.Tick")); }
			ScriptFunction EnableBloodEagle() { return mEnableBloodEagle ? mEnableBloodEagle : (mEnableBloodEagle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.EnableBloodEagle")); }
			ScriptFunction AsTeamChooseEnableButton() { return mAsTeamChooseEnableButton ? mAsTeamChooseEnableButton : (mAsTeamChooseEnableButton = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.AsTeamChooseEnableButton")); }
			ScriptFunction EnableDiamondSword() { return mEnableDiamondSword ? mEnableDiamondSword : (mEnableDiamondSword = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.EnableDiamondSword")); }
			ScriptFunction EnableSpectate() { return mEnableSpectate ? mEnableSpectate : (mEnableSpectate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.EnableSpectate")); }
			ScriptFunction choseTeamBE() { return mchoseTeamBE ? mchoseTeamBE : (mchoseTeamBE = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.choseTeamBE")); }
			ScriptFunction choseTeamDS() { return mchoseTeamDS ? mchoseTeamDS : (mchoseTeamDS = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.choseTeamDS")); }
			ScriptFunction choseTeamSpectate() { return mchoseTeamSpectate ? mchoseTeamSpectate : (mchoseTeamSpectate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.choseTeamSpectate")); }
			ScriptFunction CompleteMovie() { return mCompleteMovie ? mCompleteMovie : (mCompleteMovie = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrUI_TeamSelectionMenu.CompleteMovie")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	bool Start(bool StartPaused)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = StartPaused;
		(cast(ScriptObject)this).ProcessEvent(Functions.Start, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SetFontIndex(int FontIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = FontIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFontIndex, params.ptr, cast(void*)0);
	}
	void Show()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Show, cast(void*)0, cast(void*)0);
	}
	void SetLabels(ScriptString Title, ScriptString Spectate)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		*cast(ScriptString*)&params[12] = Spectate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLabels, params.ptr, cast(void*)0);
	}
	void Tick(GameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void EnableBloodEagle(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableBloodEagle, params.ptr, cast(void*)0);
	}
	void AsTeamChooseEnableButton(int TeamID, ScriptString bEnable)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = TeamID;
		*cast(ScriptString*)&params[4] = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.AsTeamChooseEnableButton, params.ptr, cast(void*)0);
	}
	void EnableDiamondSword(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableDiamondSword, params.ptr, cast(void*)0);
	}
	void EnableSpectate(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableSpectate, params.ptr, cast(void*)0);
	}
	void choseTeamBE()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.choseTeamBE, cast(void*)0, cast(void*)0);
	}
	void choseTeamDS()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.choseTeamDS, cast(void*)0, cast(void*)0);
	}
	void choseTeamSpectate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.choseTeamSpectate, cast(void*)0, cast(void*)0);
	}
	void CompleteMovie(bool bHaveTeam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHaveTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.CompleteMovie, params.ptr, cast(void*)0);
	}
}
