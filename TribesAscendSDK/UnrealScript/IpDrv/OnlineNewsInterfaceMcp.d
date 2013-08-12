module UnrealScript.IpDrv.OnlineNewsInterfaceMcp;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.MCPBase;

extern(C++) interface OnlineNewsInterfaceMcp : MCPBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.OnlineNewsInterfaceMcp")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnReadNewsCompleted;
			ScriptFunction mReadNews;
			ScriptFunction mAddReadNewsCompletedDelegate;
			ScriptFunction mClearReadNewsCompletedDelegate;
			ScriptFunction mGetNews;
		}
		public @property static final
		{
			ScriptFunction OnReadNewsCompleted() { return mOnReadNewsCompleted ? mOnReadNewsCompleted : (mOnReadNewsCompleted = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineNewsInterfaceMcp.OnReadNewsCompleted")); }
			ScriptFunction ReadNews() { return mReadNews ? mReadNews : (mReadNews = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineNewsInterfaceMcp.ReadNews")); }
			ScriptFunction AddReadNewsCompletedDelegate() { return mAddReadNewsCompletedDelegate ? mAddReadNewsCompletedDelegate : (mAddReadNewsCompletedDelegate = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineNewsInterfaceMcp.AddReadNewsCompletedDelegate")); }
			ScriptFunction ClearReadNewsCompletedDelegate() { return mClearReadNewsCompletedDelegate ? mClearReadNewsCompletedDelegate : (mClearReadNewsCompletedDelegate = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineNewsInterfaceMcp.ClearReadNewsCompletedDelegate")); }
			ScriptFunction GetNews() { return mGetNews ? mGetNews : (mGetNews = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineNewsInterfaceMcp.GetNews")); }
		}
	}
	struct NewsCacheEntry
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct IpDrv.OnlineNewsInterfaceMcp.NewsCacheEntry")); }
		@property final
		{
			auto ref
			{
				UObject.Pointer HttpDownloader() { return *cast(UObject.Pointer*)(cast(size_t)&this + 36); }
				float TimeOut() { return *cast(float*)(cast(size_t)&this + 28); }
				ScriptString NewsItem() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
				OnlineSubsystem.EOnlineNewsType NewsType() { return *cast(OnlineSubsystem.EOnlineNewsType*)(cast(size_t)&this + 13); }
				OnlineSubsystem.EOnlineEnumerationReadState ReadState() { return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)(cast(size_t)&this + 12); }
				ScriptString NewsUrl() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			}
			bool bIsUnicode() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
			bool bIsUnicode(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(OnlineNewsInterfaceMcp.NewsCacheEntry) NewsItems() { return *cast(ScriptArray!(OnlineNewsInterfaceMcp.NewsCacheEntry)*)(cast(size_t)cast(void*)this + 64); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ReadNewsDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bNeedsTicking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bNeedsTicking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	}
final:
	void OnReadNewsCompleted(bool bWasSuccessful, OnlineSubsystem.EOnlineNewsType NewsType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.EOnlineNewsType*)&params[4] = NewsType;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadNewsCompleted, params.ptr, cast(void*)0);
	}
	bool ReadNews(ubyte LocalUserNum, OnlineSubsystem.EOnlineNewsType NewsType)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineNewsType*)&params[1] = NewsType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadNews, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void AddReadNewsCompletedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadNewsDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadNewsDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddReadNewsCompletedDelegate, params.ptr, cast(void*)0);
	}
	void ClearReadNewsCompletedDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ReadGameNewsDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadGameNewsDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearReadNewsCompletedDelegate, params.ptr, cast(void*)0);
	}
	ScriptString GetNews(ubyte LocalUserNum, OnlineSubsystem.EOnlineNewsType NewsType)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineNewsType*)&params[1] = NewsType;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNews, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
