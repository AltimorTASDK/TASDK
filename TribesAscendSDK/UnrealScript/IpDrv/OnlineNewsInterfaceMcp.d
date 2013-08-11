module UnrealScript.IpDrv.OnlineNewsInterfaceMcp;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.MCPBase;

extern(C++) interface OnlineNewsInterfaceMcp : MCPBase
{
	struct NewsCacheEntry
	{
		public @property final auto ref UObject.Pointer HttpDownloader() { return *cast(UObject.Pointer*)(cast(size_t)&this + 36); }
		private ubyte __HttpDownloader[4];
		public @property final bool bIsUnicode() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
		public @property final bool bIsUnicode(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		private ubyte __bIsUnicode[4];
		public @property final auto ref float TimeOut() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __TimeOut[4];
		public @property final auto ref ScriptString NewsItem() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
		private ubyte __NewsItem[12];
		public @property final auto ref OnlineSubsystem.EOnlineNewsType NewsType() { return *cast(OnlineSubsystem.EOnlineNewsType*)(cast(size_t)&this + 13); }
		private ubyte __NewsType[1];
		public @property final auto ref OnlineSubsystem.EOnlineEnumerationReadState ReadState() { return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)(cast(size_t)&this + 12); }
		private ubyte __ReadState[1];
		public @property final auto ref ScriptString NewsUrl() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __NewsUrl[12];
	}
	public @property final auto ref ScriptArray!(OnlineNewsInterfaceMcp.NewsCacheEntry) NewsItems() { return *cast(ScriptArray!(OnlineNewsInterfaceMcp.NewsCacheEntry)*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*) ReadNewsDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void*)*)(cast(size_t)cast(void*)this + 76); }
	public @property final bool bNeedsTicking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bNeedsTicking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	final void OnReadNewsCompleted(bool bWasSuccessful, OnlineSubsystem.EOnlineNewsType NewsType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.EOnlineNewsType*)&params[4] = NewsType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33649], params.ptr, cast(void*)0);
	}
	final bool ReadNews(ubyte LocalUserNum, OnlineSubsystem.EOnlineNewsType NewsType)
	{
		ubyte params[6];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineNewsType*)&params[1] = NewsType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33659], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void AddReadNewsCompletedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadNewsDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ReadNewsDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33665], params.ptr, cast(void*)0);
	}
	final void ClearReadNewsCompletedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* ReadGameNewsDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = ReadGameNewsDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33667], params.ptr, cast(void*)0);
	}
	final ScriptString GetNews(ubyte LocalUserNum, OnlineSubsystem.EOnlineNewsType NewsType)
	{
		ubyte params[14];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineNewsType*)&params[1] = NewsType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[33670], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
