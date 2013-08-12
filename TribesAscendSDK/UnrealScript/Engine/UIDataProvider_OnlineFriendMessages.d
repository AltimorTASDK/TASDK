module UnrealScript.Engine.UIDataProvider_OnlineFriendMessages;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

extern(C++) interface UIDataProvider_OnlineFriendMessages : UIDataProvider_OnlinePlayerDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataProvider_OnlineFriendMessages")); }
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
			ScriptFunction OnRegister() { return mOnRegister ? mOnRegister : (mOnRegister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlineFriendMessages.OnRegister")); }
			ScriptFunction OnUnregister() { return mOnUnregister ? mOnUnregister : (mOnUnregister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlineFriendMessages.OnUnregister")); }
			ScriptFunction ReadMessages() { return mReadMessages ? mReadMessages : (mReadMessages = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlineFriendMessages.ReadMessages")); }
			ScriptFunction OnFriendInviteReceived() { return mOnFriendInviteReceived ? mOnFriendInviteReceived : (mOnFriendInviteReceived = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlineFriendMessages.OnFriendInviteReceived")); }
			ScriptFunction OnFriendMessageReceived() { return mOnFriendMessageReceived ? mOnFriendMessageReceived : (mOnFriendMessageReceived = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlineFriendMessages.OnFriendMessageReceived")); }
			ScriptFunction OnLoginChange() { return mOnLoginChange ? mOnLoginChange : (mOnLoginChange = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlineFriendMessages.OnLoginChange")); }
			ScriptFunction OnGameInviteReceived() { return mOnGameInviteReceived ? mOnGameInviteReceived : (mOnGameInviteReceived = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlineFriendMessages.OnGameInviteReceived")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(OnlineSubsystem.OnlineFriendMessage) Messages() { return *cast(ScriptArray!(OnlineSubsystem.OnlineFriendMessage)*)(cast(size_t)cast(void*)this + 96); }
		ScriptString LastInviteFrom() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
		ScriptString MessageCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
		ScriptString bWasDeniedCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString bWasAcceptedCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		ScriptString bIsFriendInviteCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
		ScriptString SendingPlayerNameCol() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
		UObject.Pointer VfTable_IUIListElementCellProvider() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 92); }
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
