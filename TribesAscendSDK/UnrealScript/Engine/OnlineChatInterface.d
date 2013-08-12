module UnrealScript.Engine.OnlineChatInterface;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineChatInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineChatInterface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnChatMessage;
			ScriptFunction mAddChatMessageDelegate;
			ScriptFunction mClearChatMessageDelegate;
			ScriptFunction mSendChatMessage;
			ScriptFunction mSendPrivateChatMessage;
			ScriptFunction mNotifyTeamChange;
		}
		public @property static final
		{
			ScriptFunction OnChatMessage() { return mOnChatMessage ? mOnChatMessage : (mOnChatMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineChatInterface.OnChatMessage")); }
			ScriptFunction AddChatMessageDelegate() { return mAddChatMessageDelegate ? mAddChatMessageDelegate : (mAddChatMessageDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineChatInterface.AddChatMessageDelegate")); }
			ScriptFunction ClearChatMessageDelegate() { return mClearChatMessageDelegate ? mClearChatMessageDelegate : (mClearChatMessageDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineChatInterface.ClearChatMessageDelegate")); }
			ScriptFunction SendChatMessage() { return mSendChatMessage ? mSendChatMessage : (mSendChatMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineChatInterface.SendChatMessage")); }
			ScriptFunction SendPrivateChatMessage() { return mSendPrivateChatMessage ? mSendPrivateChatMessage : (mSendPrivateChatMessage = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineChatInterface.SendPrivateChatMessage")); }
			ScriptFunction NotifyTeamChange() { return mNotifyTeamChange ? mNotifyTeamChange : (mNotifyTeamChange = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineChatInterface.NotifyTeamChange")); }
		}
	}
final:
	void OnChatMessage(int pChannel, ScriptString Sender, ScriptString Message)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = pChannel;
		*cast(ScriptString*)&params[4] = Sender;
		*cast(ScriptString*)&params[16] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnChatMessage, params.ptr, cast(void*)0);
	}
	void AddChatMessageDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ChatDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ChatDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddChatMessageDelegate, params.ptr, cast(void*)0);
	}
	void ClearChatMessageDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ChatDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ChatDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearChatMessageDelegate, params.ptr, cast(void*)0);
	}
	void SendChatMessage(int pChannel, ScriptString Message)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = pChannel;
		*cast(ScriptString*)&params[4] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendChatMessage, params.ptr, cast(void*)0);
	}
	void SendPrivateChatMessage(ScriptString PlayerName, ScriptString Message)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(Functions.SendPrivateChatMessage, params.ptr, cast(void*)0);
	}
	void NotifyTeamChange(QWord PlayerUid, ubyte TeamID)
	{
		ubyte params[9];
		params[] = 0;
		*cast(QWord*)params.ptr = PlayerUid;
		params[8] = TeamID;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyTeamChange, params.ptr, cast(void*)0);
	}
}
