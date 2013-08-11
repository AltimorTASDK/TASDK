module UnrealScript.Engine.OnlineChatInterface;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineChatInterface : UInterface
{
public extern(D):
final:
	void OnChatMessage(int pChannel, ScriptString Sender, ScriptString Message)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = pChannel;
		*cast(ScriptString*)&params[4] = Sender;
		*cast(ScriptString*)&params[16] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21389], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21394], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21396], params.ptr, cast(void*)0);
	}
	void SendChatMessage(int pChannel, ScriptString Message)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = pChannel;
		*cast(ScriptString*)&params[4] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21398], params.ptr, cast(void*)0);
	}
	void SendPrivateChatMessage(ScriptString PlayerName, ScriptString Message)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PlayerName;
		*cast(ScriptString*)&params[12] = Message;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21401], params.ptr, cast(void*)0);
	}
	void NotifyTeamChange(QWord PlayerUid, ubyte TeamID)
	{
		ubyte params[9];
		params[] = 0;
		*cast(QWord*)params.ptr = PlayerUid;
		params[8] = TeamID;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21404], params.ptr, cast(void*)0);
	}
}
