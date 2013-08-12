module UnrealScript.UTGame.GFxUDKFrontEnd_HostGame;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_LaunchGame;

extern(C++) interface GFxUDKFrontEnd_HostGame : GFxUDKFrontEnd_LaunchGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_HostGame")); }
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
			ScriptFunction OnViewActivated() { return mOnViewActivated ? mOnViewActivated : (mOnViewActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_HostGame.OnViewActivated")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_HostGame.OnTopMostView")); }
			ScriptFunction StripInvalidPasswordCharacters() { return mStripInvalidPasswordCharacters ? mStripInvalidPasswordCharacters : (mStripInvalidPasswordCharacters = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_HostGame.StripInvalidPasswordCharacters")); }
			ScriptFunction ValidateServerType() { return mValidateServerType ? mValidateServerType : (mValidateServerType = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_HostGame.ValidateServerType")); }
			ScriptFunction GenerateMutatorURLString() { return mGenerateMutatorURLString ? mGenerateMutatorURLString : (mGenerateMutatorURLString = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_HostGame.GenerateMutatorURLString")); }
			ScriptFunction SetupGameSettings() { return mSetupGameSettings ? mSetupGameSettings : (mSetupGameSettings = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_HostGame.SetupGameSettings")); }
			ScriptFunction CreateOnlineGame() { return mCreateOnlineGame ? mCreateOnlineGame : (mCreateOnlineGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_HostGame.CreateOnlineGame")); }
			ScriptFunction OnGameCreated() { return mOnGameCreated ? mOnGameCreated : (mOnGameCreated = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_HostGame.OnGameCreated")); }
			ScriptFunction FinishStartDedicated() { return mFinishStartDedicated ? mFinishStartDedicated : (mFinishStartDedicated = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_HostGame.FinishStartDedicated")); }
			ScriptFunction OnStartGame_Confirm() { return mOnStartGame_Confirm ? mOnStartGame_Confirm : (mOnStartGame_Confirm = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_HostGame.OnStartGame_Confirm")); }
		}
	}
	enum
	{
		SERVERTYPE_LAN = 0,
		SERVERTYPE_UNRANKED = 1,
		SERVERTYPE_RANKED = 2,
		MAXIMUM_PLAYER_COUNT = 24,
	}
final:
	void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewActivated, cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTopMostView, params.ptr, cast(void*)0);
	}
	static ScriptString StripInvalidPasswordCharacters(ScriptString PasswordString, ScriptString InvalidChars)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PasswordString;
		*cast(ScriptString*)&params[12] = InvalidChars;
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
