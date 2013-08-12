module UnrealScript.Engine.OnlineNewsInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineNewsInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineNewsInterface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReadNews;
			ScriptFunction mOnReadNewsCompleted;
			ScriptFunction mAddReadNewsCompletedDelegate;
			ScriptFunction mClearReadNewsCompletedDelegate;
			ScriptFunction mGetNews;
		}
		public @property static final
		{
			ScriptFunction ReadNews() { return mReadNews ? mReadNews : (mReadNews = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineNewsInterface.ReadNews")); }
			ScriptFunction OnReadNewsCompleted() { return mOnReadNewsCompleted ? mOnReadNewsCompleted : (mOnReadNewsCompleted = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineNewsInterface.OnReadNewsCompleted")); }
			ScriptFunction AddReadNewsCompletedDelegate() { return mAddReadNewsCompletedDelegate ? mAddReadNewsCompletedDelegate : (mAddReadNewsCompletedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineNewsInterface.AddReadNewsCompletedDelegate")); }
			ScriptFunction ClearReadNewsCompletedDelegate() { return mClearReadNewsCompletedDelegate ? mClearReadNewsCompletedDelegate : (mClearReadNewsCompletedDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineNewsInterface.ClearReadNewsCompletedDelegate")); }
			ScriptFunction GetNews() { return mGetNews ? mGetNews : (mGetNews = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineNewsInterface.GetNews")); }
		}
	}
final:
	bool ReadNews(ubyte LocalUserNum, OnlineSubsystem.EOnlineNewsType NewsType)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = LocalUserNum;
		*cast(OnlineSubsystem.EOnlineNewsType*)&params[1] = NewsType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReadNews, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OnReadNewsCompleted(bool bWasSuccessful, OnlineSubsystem.EOnlineNewsType NewsType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		*cast(OnlineSubsystem.EOnlineNewsType*)&params[4] = NewsType;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReadNewsCompleted, params.ptr, cast(void*)0);
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
void* ReadNewsDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ReadNewsDelegate;
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
