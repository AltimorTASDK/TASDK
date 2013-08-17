module UnrealScript.IpDrv.OnlineNewsInterfaceMcp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.MCPBase;

extern(C++) interface OnlineNewsInterfaceMcp : MCPBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.OnlineNewsInterfaceMcp")()); }
	private static __gshared OnlineNewsInterfaceMcp mDefaultProperties;
	@property final static OnlineNewsInterfaceMcp DefaultProperties() { mixin(MGDPC!(OnlineNewsInterfaceMcp, "OnlineNewsInterfaceMcp IpDrv.Default__OnlineNewsInterfaceMcp")()); }
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
			ScriptFunction OnReadNewsCompleted() { mixin(MGF!("mOnReadNewsCompleted", "Function IpDrv.OnlineNewsInterfaceMcp.OnReadNewsCompleted")()); }
			ScriptFunction ReadNews() { mixin(MGF!("mReadNews", "Function IpDrv.OnlineNewsInterfaceMcp.ReadNews")()); }
			ScriptFunction AddReadNewsCompletedDelegate() { mixin(MGF!("mAddReadNewsCompletedDelegate", "Function IpDrv.OnlineNewsInterfaceMcp.AddReadNewsCompletedDelegate")()); }
			ScriptFunction ClearReadNewsCompletedDelegate() { mixin(MGF!("mClearReadNewsCompletedDelegate", "Function IpDrv.OnlineNewsInterfaceMcp.ClearReadNewsCompletedDelegate")()); }
			ScriptFunction GetNews() { mixin(MGF!("mGetNews", "Function IpDrv.OnlineNewsInterfaceMcp.GetNews")()); }
		}
	}
	struct NewsCacheEntry
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct IpDrv.OnlineNewsInterfaceMcp.NewsCacheEntry")()); }
		@property final
		{
			auto ref
			{
				UObject.Pointer HttpDownloader() { mixin(MGPS!(UObject.Pointer, 36)()); }
				float TimeOut() { mixin(MGPS!(float, 28)()); }
				ScriptString NewsItem() { mixin(MGPS!(ScriptString, 16)()); }
				OnlineSubsystem.EOnlineNewsType NewsType() { mixin(MGPS!(OnlineSubsystem.EOnlineNewsType, 13)()); }
				OnlineSubsystem.EOnlineEnumerationReadState ReadState() { mixin(MGPS!(OnlineSubsystem.EOnlineEnumerationReadState, 12)()); }
				ScriptString NewsUrl() { mixin(MGPS!(ScriptString, 0)()); }
			}
			bool bIsUnicode() { mixin(MGBPS!(32, 0x1)()); }
			bool bIsUnicode(bool val) { mixin(MSBPS!(32, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(OnlineNewsInterfaceMcp.NewsCacheEntry) NewsItems() { mixin(MGPC!(ScriptArray!(OnlineNewsInterfaceMcp.NewsCacheEntry), 64)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ReadNewsDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 76)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReadNewsCompleted__Delegate'!
		}
		bool bNeedsTicking() { mixin(MGBPC!(88, 0x1)()); }
		bool bNeedsTicking(bool val) { mixin(MSBPC!(88, 0x1)()); }
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
