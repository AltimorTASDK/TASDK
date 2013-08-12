module UnrealScript.Engine.OnlineSuppliedUIInterface;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.Engine.OnlineStatsRead;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineSuppliedUIInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineSuppliedUIInterface")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnShowOnlineStatsUIComplete;
			ScriptFunction mShowOnlineStatsUI;
			ScriptFunction mAddShowOnlineStatsUICompleteDelegate;
			ScriptFunction mClearShowOnlineStatsUICompleteDelegate;
			ScriptFunction mShowMatchmakingUI;
		}
		public @property static final
		{
			ScriptFunction OnShowOnlineStatsUIComplete() { return mOnShowOnlineStatsUIComplete ? mOnShowOnlineStatsUIComplete : (mOnShowOnlineStatsUIComplete = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineSuppliedUIInterface.OnShowOnlineStatsUIComplete")); }
			ScriptFunction ShowOnlineStatsUI() { return mShowOnlineStatsUI ? mShowOnlineStatsUI : (mShowOnlineStatsUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineSuppliedUIInterface.ShowOnlineStatsUI")); }
			ScriptFunction AddShowOnlineStatsUICompleteDelegate() { return mAddShowOnlineStatsUICompleteDelegate ? mAddShowOnlineStatsUICompleteDelegate : (mAddShowOnlineStatsUICompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineSuppliedUIInterface.AddShowOnlineStatsUICompleteDelegate")); }
			ScriptFunction ClearShowOnlineStatsUICompleteDelegate() { return mClearShowOnlineStatsUICompleteDelegate ? mClearShowOnlineStatsUICompleteDelegate : (mClearShowOnlineStatsUICompleteDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineSuppliedUIInterface.ClearShowOnlineStatsUICompleteDelegate")); }
			ScriptFunction ShowMatchmakingUI() { return mShowMatchmakingUI ? mShowMatchmakingUI : (mShowMatchmakingUI = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineSuppliedUIInterface.ShowMatchmakingUI")); }
		}
	}
final:
	void OnShowOnlineStatsUIComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnShowOnlineStatsUIComplete, cast(void*)0, cast(void*)0);
	}
	bool ShowOnlineStatsUI(ScriptArray!(OnlineSubsystem.UniqueNetId)* Players, OnlineStatsRead StatsRead)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = *Players;
		*cast(OnlineStatsRead*)&params[12] = StatsRead;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowOnlineStatsUI, params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr;
		return *cast(bool*)&params[16];
	}
	void AddShowOnlineStatsUICompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ShowOnlineStatsUICompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ShowOnlineStatsUICompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddShowOnlineStatsUICompleteDelegate, params.ptr, cast(void*)0);
	}
	void ClearShowOnlineStatsUICompleteDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* ShowOnlineStatsUICompleteDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = ShowOnlineStatsUICompleteDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearShowOnlineStatsUICompleteDelegate, params.ptr, cast(void*)0);
	}
	bool ShowMatchmakingUI(ubyte SearchingPlayerNum, OnlineGameSearch SearchSettings, OnlineGameSettings GameSettings)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = SearchingPlayerNum;
		*cast(OnlineGameSearch*)&params[4] = SearchSettings;
		*cast(OnlineGameSettings*)&params[8] = GameSettings;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowMatchmakingUI, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
