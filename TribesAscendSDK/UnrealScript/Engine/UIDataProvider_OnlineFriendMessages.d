module UnrealScript.Engine.UIDataProvider_OnlineFriendMessages;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

extern(C++) interface UIDataProvider_OnlineFriendMessages : UIDataProvider_OnlinePlayerDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataProvider_OnlineFriendMessages")); }
	private static __gshared UIDataProvider_OnlineFriendMessages mDefaultProperties;
	@property final static UIDataProvider_OnlineFriendMessages DefaultProperties() { mixin(MGDPC("UIDataProvider_OnlineFriendMessages", "UIDataProvider_OnlineFriendMessages Engine.Default__UIDataProvider_OnlineFriendMessages")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnRegister;
			ScriptFunction mOnUnregister;
			ScriptFunction mReadMessages;
			ScriptFunction mOnFriendInviteReceived;
			ScriptFunction mOnFriendMessageReceived;
			ScriptFunction mOnLoginChange;
			ScriptFunction mOnGameInviteReceived;
		}
		public @property static final
		{
			ScriptFunction OnRegister() { mixin(MGF("mOnRegister", "Function Engine.UIDataProvider_OnlineFriendMessages.OnRegister")); }
			ScriptFunction OnUnregister() { mixin(MGF("mOnUnregister", "Function Engine.UIDataProvider_OnlineFriendMessages.OnUnregister")); }
			ScriptFunction ReadMessages() { mixin(MGF("mReadMessages", "Function Engine.UIDataProvider_OnlineFriendMessages.ReadMessages")); }
			ScriptFunction OnFriendInviteReceived() { mixin(MGF("mOnFriendInviteReceived", "Function Engine.UIDataProvider_OnlineFriendMessages.OnFriendInviteReceived")); }
			ScriptFunction OnFriendMessageReceived() { mixin(MGF("mOnFriendMessageReceived", "Function Engine.UIDataProvider_OnlineFriendMessages.OnFriendMessageReceived")); }
			ScriptFunction OnLoginChange() { mixin(MGF("mOnLoginChange", "Function Engine.UIDataProvider_OnlineFriendMessages.OnLoginChange")); }
			ScriptFunction OnGameInviteReceived() { mixin(MGF("mOnGameInviteReceived", "Function Engine.UIDataProvider_OnlineFriendMessages.OnGameInviteReceived")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.OnlineFriendMessage) Messages() { mixin(MGPC("ScriptArray!(OnlineSubsystem.OnlineFriendMessage)", 96)); }
		ScriptString LastInviteFrom() { mixin(MGPC("ScriptString", 168)); }
		ScriptString MessageCol() { mixin(MGPC("ScriptString", 156)); }
		ScriptString bWasDeniedCol() { mixin(MGPC("ScriptString", 144)); }
		ScriptString bWasAcceptedCol() { mixin(MGPC("ScriptString", 132)); }
		ScriptString bIsFriendInviteCol() { mixin(MGPC("ScriptString", 120)); }
		ScriptString SendingPlayerNameCol() { mixin(MGPC("ScriptString", 108)); }
		Pointer VfTable_IUIListElementCellProvider() { mixin(MGPC("Pointer", 92)); }
	}
final:
	void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRegister, params.ptr, cast(void*)0);
	}
	void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUnregister, cast(void*)0, cast(void*)0);
	}
	void ReadMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadMessages, cast(void*)0, cast(void*)0);
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
	void OnLoginChange(ubyte LocalUserNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = LocalUserNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnLoginChange, params.ptr, cast(void*)0);
	}
	void OnGameInviteReceived(ubyte LocalUserNum, ScriptString InviterName)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(ScriptString*)&params[4] = InviterName;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameInviteReceived, params.ptr, cast(void*)0);
	}
}
