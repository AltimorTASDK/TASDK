module UnrealScript.UTGame.UTEntryPlayerController;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.PostProcessChain;

extern(C++) interface UTEntryPlayerController : UTPlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTEntryPlayerController")()); }
	private static __gshared UTEntryPlayerController mDefaultProperties;
	@property final static UTEntryPlayerController DefaultProperties() { mixin(MGDPC!(UTEntryPlayerController, "UTEntryPlayerController UTGame.Default__UTEntryPlayerController")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitInputSystem;
			ScriptFunction mRestorePostProcessing;
			ScriptFunction mDestroyed;
			ScriptFunction mOnControllerChanged;
			ScriptFunction mOnGameInviteReceived;
			ScriptFunction mOnFriendInviteReceived;
			ScriptFunction mOnFriendMessageReceived;
			ScriptFunction mOnConnectionStatusChange;
			ScriptFunction mOnLinkStatusChanged;
			ScriptFunction mQuitToMainMenu;
			ScriptFunction mSetPawnConstructionScene;
			ScriptFunction mShowMidGameMenu;
			ScriptFunction mShowScoreboard;
		}
		public @property static final
		{
			ScriptFunction InitInputSystem() { mixin(MGF!("mInitInputSystem", "Function UTGame.UTEntryPlayerController.InitInputSystem")()); }
			ScriptFunction RestorePostProcessing() { mixin(MGF!("mRestorePostProcessing", "Function UTGame.UTEntryPlayerController.RestorePostProcessing")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UTGame.UTEntryPlayerController.Destroyed")()); }
			ScriptFunction OnControllerChanged() { mixin(MGF!("mOnControllerChanged", "Function UTGame.UTEntryPlayerController.OnControllerChanged")()); }
			ScriptFunction OnGameInviteReceived() { mixin(MGF!("mOnGameInviteReceived", "Function UTGame.UTEntryPlayerController.OnGameInviteReceived")()); }
			ScriptFunction OnFriendInviteReceived() { mixin(MGF!("mOnFriendInviteReceived", "Function UTGame.UTEntryPlayerController.OnFriendInviteReceived")()); }
			ScriptFunction OnFriendMessageReceived() { mixin(MGF!("mOnFriendMessageReceived", "Function UTGame.UTEntryPlayerController.OnFriendMessageReceived")()); }
			ScriptFunction OnConnectionStatusChange() { mixin(MGF!("mOnConnectionStatusChange", "Function UTGame.UTEntryPlayerController.OnConnectionStatusChange")()); }
			ScriptFunction OnLinkStatusChanged() { mixin(MGF!("mOnLinkStatusChanged", "Function UTGame.UTEntryPlayerController.OnLinkStatusChanged")()); }
			ScriptFunction QuitToMainMenu() { mixin(MGF!("mQuitToMainMenu", "Function UTGame.UTEntryPlayerController.QuitToMainMenu")()); }
			ScriptFunction SetPawnConstructionScene() { mixin(MGF!("mSetPawnConstructionScene", "Function UTGame.UTEntryPlayerController.SetPawnConstructionScene")()); }
			ScriptFunction ShowMidGameMenu() { mixin(MGF!("mShowMidGameMenu", "Function UTGame.UTEntryPlayerController.ShowMidGameMenu")()); }
			ScriptFunction ShowScoreboard() { mixin(MGF!("mShowScoreboard", "Function UTGame.UTEntryPlayerController.ShowScoreboard")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(PostProcessChain) OldPostProcessChain() { mixin(MGPC!(ScriptArray!(PostProcessChain), 2180)()); }
		LocalPlayer OldPlayer() { mixin(MGPC!(LocalPlayer, 2192)()); }
		PostProcessChain EntryPostProcessChain() { mixin(MGPC!(PostProcessChain, 2176)()); }
	}
final:
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitInputSystem, cast(void*)0, cast(void*)0);
	}
	void RestorePostProcessing()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RestorePostProcessing, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void OnControllerChanged(int ControllerId, bool bIsConnected)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(bool*)&params[4] = bIsConnected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnControllerChanged, params.ptr, cast(void*)0);
	}
	void OnGameInviteReceived(ubyte LocalUserNum, ScriptString RequestingNick)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = RequestingNick;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameInviteReceived, params.ptr, cast(void*)0);
	}
	void OnFriendInviteReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId RequestingPlayer, ScriptString RequestingNick, ScriptString Message)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = RequestingPlayer;
		*cast(ScriptString*)&params[12] = RequestingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFriendInviteReceived, params.ptr, cast(void*)0);
	}
	void OnFriendMessageReceived(ubyte LocalUserNum, OnlineSubsystem.UniqueNetId SendingPlayer, ScriptString SendingNick, ScriptString Message)
	{
		ubyte params[36];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.UniqueNetId*)&params[4] = SendingPlayer;
		*cast(ScriptString*)&params[12] = SendingNick;
		*cast(ScriptString*)&params[24] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFriendMessageReceived, params.ptr, cast(void*)0);
	}
	void OnConnectionStatusChange(OnlineSubsystem.EOnlineServerConnectionStatus ConnectionStatus)
	{
		ubyte params[1];
		params[] = 0;
		*cast(OnlineSubsystem.EOnlineServerConnectionStatus*)params.ptr = ConnectionStatus;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnConnectionStatusChange, params.ptr, cast(void*)0);
	}
	void OnLinkStatusChanged(bool bConnected)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bConnected;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLinkStatusChanged, params.ptr, cast(void*)0);
	}
	void QuitToMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.QuitToMainMenu, cast(void*)0, cast(void*)0);
	}
	void SetPawnConstructionScene(bool bShow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShow;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPawnConstructionScene, params.ptr, cast(void*)0);
	}
	void ShowMidGameMenu(ScriptName TabTag, bool bEnableInput)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = TabTag;
		*cast(bool*)&params[8] = bEnableInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMidGameMenu, params.ptr, cast(void*)0);
	}
	void ShowScoreboard()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowScoreboard, cast(void*)0, cast(void*)0);
	}
}
