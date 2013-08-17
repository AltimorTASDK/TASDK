module UnrealScript.Engine.OnlineSuppliedUIInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.OnlineGameSearch;
import UnrealScript.Engine.OnlineStatsRead;
import UnrealScript.Core.UInterface;

extern(C++) interface OnlineSuppliedUIInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineSuppliedUIInterface")()); }
	private static __gshared OnlineSuppliedUIInterface mDefaultProperties;
	@property final static OnlineSuppliedUIInterface DefaultProperties() { mixin(MGDPC!(OnlineSuppliedUIInterface, "OnlineSuppliedUIInterface Engine.Default__OnlineSuppliedUIInterface")()); }
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
			ScriptFunction OnShowOnlineStatsUIComplete() { mixin(MGF!("mOnShowOnlineStatsUIComplete", "Function Engine.OnlineSuppliedUIInterface.OnShowOnlineStatsUIComplete")()); }
			ScriptFunction ShowOnlineStatsUI() { mixin(MGF!("mShowOnlineStatsUI", "Function Engine.OnlineSuppliedUIInterface.ShowOnlineStatsUI")()); }
			ScriptFunction AddShowOnlineStatsUICompleteDelegate() { mixin(MGF!("mAddShowOnlineStatsUICompleteDelegate", "Function Engine.OnlineSuppliedUIInterface.AddShowOnlineStatsUICompleteDelegate")()); }
			ScriptFunction ClearShowOnlineStatsUICompleteDelegate() { mixin(MGF!("mClearShowOnlineStatsUICompleteDelegate", "Function Engine.OnlineSuppliedUIInterface.ClearShowOnlineStatsUICompleteDelegate")()); }
			ScriptFunction ShowMatchmakingUI() { mixin(MGF!("mShowMatchmakingUI", "Function Engine.OnlineSuppliedUIInterface.ShowMatchmakingUI")()); }
		}
	}
	// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnShowOnlineStatsUIComplete__Delegate'!
final:
	void OnShowOnlineStatsUIComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnShowOnlineStatsUIComplete, cast(void*)0, cast(void*)0);
	}
	bool ShowOnlineStatsUI(ref const ScriptArray!(OnlineSubsystem.UniqueNetId) Players, OnlineStatsRead StatsRead)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)params.ptr = Players;
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
