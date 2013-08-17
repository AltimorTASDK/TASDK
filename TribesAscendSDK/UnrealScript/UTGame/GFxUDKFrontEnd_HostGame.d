module UnrealScript.UTGame.GFxUDKFrontEnd_HostGame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_LaunchGame;

extern(C++) interface GFxUDKFrontEnd_HostGame : GFxUDKFrontEnd_LaunchGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.GFxUDKFrontEnd_HostGame")); }
	private static __gshared GFxUDKFrontEnd_HostGame mDefaultProperties;
	@property final static GFxUDKFrontEnd_HostGame DefaultProperties() { mixin(MGDPC("GFxUDKFrontEnd_HostGame", "GFxUDKFrontEnd_HostGame UTGame.Default__GFxUDKFrontEnd_HostGame")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnViewActivated;
			ScriptFunction mOnTopMostView;
			ScriptFunction mStripInvalidPasswordCharacters;
			ScriptFunction mValidateServerType;
			ScriptFunction mGenerateMutatorURLString;
			ScriptFunction mSetupGameSettings;
			ScriptFunction mCreateOnlineGame;
			ScriptFunction mOnGameCreated;
			ScriptFunction mFinishStartDedicated;
			ScriptFunction mOnStartGame_Confirm;
		}
		public @property static final
		{
			ScriptFunction OnViewActivated() { mixin(MGF("mOnViewActivated", "Function UTGame.GFxUDKFrontEnd_HostGame.OnViewActivated")); }
			ScriptFunction OnTopMostView() { mixin(MGF("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_HostGame.OnTopMostView")); }
			ScriptFunction StripInvalidPasswordCharacters() { mixin(MGF("mStripInvalidPasswordCharacters", "Function UTGame.GFxUDKFrontEnd_HostGame.StripInvalidPasswordCharacters")); }
			ScriptFunction ValidateServerType() { mixin(MGF("mValidateServerType", "Function UTGame.GFxUDKFrontEnd_HostGame.ValidateServerType")); }
			ScriptFunction GenerateMutatorURLString() { mixin(MGF("mGenerateMutatorURLString", "Function UTGame.GFxUDKFrontEnd_HostGame.GenerateMutatorURLString")); }
			ScriptFunction SetupGameSettings() { mixin(MGF("mSetupGameSettings", "Function UTGame.GFxUDKFrontEnd_HostGame.SetupGameSettings")); }
			ScriptFunction CreateOnlineGame() { mixin(MGF("mCreateOnlineGame", "Function UTGame.GFxUDKFrontEnd_HostGame.CreateOnlineGame")); }
			ScriptFunction OnGameCreated() { mixin(MGF("mOnGameCreated", "Function UTGame.GFxUDKFrontEnd_HostGame.OnGameCreated")); }
			ScriptFunction FinishStartDedicated() { mixin(MGF("mFinishStartDedicated", "Function UTGame.GFxUDKFrontEnd_HostGame.FinishStartDedicated")); }
			ScriptFunction OnStartGame_Confirm() { mixin(MGF("mOnStartGame_Confirm", "Function UTGame.GFxUDKFrontEnd_HostGame.OnStartGame_Confirm")); }
		}
	}
	static struct Constants
	{
		enum
		{
			SERVERTYPE_LAN = 0,
			SERVERTYPE_UNRANKED = 1,
			SERVERTYPE_RANKED = 2,
			MAXIMUM_PLAYER_COUNT = 24,
		}
	}
final:
	void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewActivated, cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool* bPlayOpenAnimation = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bPlayOpenAnimation !is null)
			*cast(bool*)params.ptr = *bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTopMostView, params.ptr, cast(void*)0);
	}
	static ScriptString StripInvalidPasswordCharacters(ScriptString PasswordString, ScriptString* InvalidChars = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PasswordString;
		if (InvalidChars !is null)
			*cast(ScriptString*)&params[12] = *InvalidChars;
		StaticClass.ProcessEvent(Functions.StripInvalidPasswordCharacters, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
	void ValidateServerType()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidateServerType, cast(void*)0, cast(void*)0);
	}
	ScriptString GenerateMutatorURLString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GenerateMutatorURLString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void SetupGameSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetupGameSettings, cast(void*)0, cast(void*)0);
	}
	void CreateOnlineGame(int PlayerIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateOnlineGame, params.ptr, cast(void*)0);
	}
	void OnGameCreated(ScriptName SessionName, bool bWasSuccessful)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(bool*)&params[8] = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameCreated, params.ptr, cast(void*)0);
	}
	void FinishStartDedicated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FinishStartDedicated, cast(void*)0, cast(void*)0);
	}
	void OnStartGame_Confirm()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStartGame_Confirm, cast(void*)0, cast(void*)0);
	}
}
