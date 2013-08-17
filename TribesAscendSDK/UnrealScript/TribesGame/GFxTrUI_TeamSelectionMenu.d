module UnrealScript.TribesGame.GFxTrUI_TeamSelectionMenu;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.GameReplicationInfo;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrUI_TeamSelectionMenu : GFxMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrUI_TeamSelectionMenu")); }
	private static __gshared GFxTrUI_TeamSelectionMenu mDefaultProperties;
	@property final static GFxTrUI_TeamSelectionMenu DefaultProperties() { mixin(MGDPC("GFxTrUI_TeamSelectionMenu", "GFxTrUI_TeamSelectionMenu TribesGame.Default__GFxTrUI_TeamSelectionMenu")); }
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
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrUI_TeamSelectionMenu.Initialize")); }
			ScriptFunction Start() { mixin(MGF("mStart", "Function TribesGame.GFxTrUI_TeamSelectionMenu.Start")); }
			ScriptFunction SetFontIndex() { mixin(MGF("mSetFontIndex", "Function TribesGame.GFxTrUI_TeamSelectionMenu.SetFontIndex")); }
			ScriptFunction Show() { mixin(MGF("mShow", "Function TribesGame.GFxTrUI_TeamSelectionMenu.Show")); }
			ScriptFunction SetLabels() { mixin(MGF("mSetLabels", "Function TribesGame.GFxTrUI_TeamSelectionMenu.SetLabels")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.GFxTrUI_TeamSelectionMenu.Tick")); }
			ScriptFunction EnableBloodEagle() { mixin(MGF("mEnableBloodEagle", "Function TribesGame.GFxTrUI_TeamSelectionMenu.EnableBloodEagle")); }
			ScriptFunction AsTeamChooseEnableButton() { mixin(MGF("mAsTeamChooseEnableButton", "Function TribesGame.GFxTrUI_TeamSelectionMenu.AsTeamChooseEnableButton")); }
			ScriptFunction EnableDiamondSword() { mixin(MGF("mEnableDiamondSword", "Function TribesGame.GFxTrUI_TeamSelectionMenu.EnableDiamondSword")); }
			ScriptFunction EnableSpectate() { mixin(MGF("mEnableSpectate", "Function TribesGame.GFxTrUI_TeamSelectionMenu.EnableSpectate")); }
			ScriptFunction choseTeamBE() { mixin(MGF("mchoseTeamBE", "Function TribesGame.GFxTrUI_TeamSelectionMenu.choseTeamBE")); }
			ScriptFunction choseTeamDS() { mixin(MGF("mchoseTeamDS", "Function TribesGame.GFxTrUI_TeamSelectionMenu.choseTeamDS")); }
			ScriptFunction choseTeamSpectate() { mixin(MGF("mchoseTeamSpectate", "Function TribesGame.GFxTrUI_TeamSelectionMenu.choseTeamSpectate")); }
			ScriptFunction CompleteMovie() { mixin(MGF("mCompleteMovie", "Function TribesGame.GFxTrUI_TeamSelectionMenu.CompleteMovie")); }
		}
	}
	@property final
	{
		auto ref
		{
			GFxObject MovieClip() { mixin(MGPC("GFxObject", 404)); }
			GFxObject DiamondSwordCountTF() { mixin(MGPC("GFxObject", 420)); }
			GFxObject BloodEagleCountTF() { mixin(MGPC("GFxObject", 416)); }
			GFxObject DiamondSwordButton() { mixin(MGPC("GFxObject", 412)); }
			GFxObject BloodEagleButton() { mixin(MGPC("GFxObject", 408)); }
			TrPlayerController TrPC() { mixin(MGPC("TrPlayerController", 400)); }
			int PrevDiamondSwordCount() { mixin(MGPC("int", 392)); }
			int PrevBloodEagleCount() { mixin(MGPC("int", 388)); }
			int AllowedTeamDiscrepancyOnTeam() { mixin(MGPC("int", 384)); }
			int AllowedTeamDiscrepancyNoTeam() { mixin(MGPC("int", 380)); }
		}
		bool bCompleted() { mixin(MGBPC(396, 0x4)); }
		bool bCompleted(bool val) { mixin(MSBPC(396, 0x4)); }
		bool JoinDiamondSwordAllowed() { mixin(MGBPC(396, 0x10)); }
		bool JoinDiamondSwordAllowed(bool val) { mixin(MSBPC(396, 0x10)); }
		bool JoinBloodEagleAllowed() { mixin(MGBPC(396, 0x8)); }
		bool JoinBloodEagleAllowed(bool val) { mixin(MSBPC(396, 0x8)); }
		bool bJustJoined() { mixin(MGBPC(396, 0x2)); }
		bool bJustJoined(bool val) { mixin(MSBPC(396, 0x2)); }
		bool bInitialized() { mixin(MGBPC(396, 0x1)); }
		bool bInitialized(bool val) { mixin(MSBPC(396, 0x1)); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	bool Start(bool* StartPaused = null)
	{
		ubyte params[8];
		params[] = 0;
		if (StartPaused !is null)
			*cast(bool*)params.ptr = *StartPaused;
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
	void CompleteMovie(bool* bHaveTeam = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bHaveTeam !is null)
			*cast(bool*)params.ptr = *bHaveTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.CompleteMovie, params.ptr, cast(void*)0);
	}
}
