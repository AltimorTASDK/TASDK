module UnrealScript.Engine.InGameAdManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface InGameAdManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InGameAdManager")()); }
	private static __gshared InGameAdManager mDefaultProperties;
	@property final static InGameAdManager DefaultProperties() { mixin(MGDPC!(InGameAdManager, "InGameAdManager Engine.Default__InGameAdManager")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnUserClickedBanner;
			ScriptFunction mOnUserClosedAdvertisement;
			ScriptFunction mInit;
			ScriptFunction mShowBanner;
			ScriptFunction mHideBanner;
			ScriptFunction mForceCloseAd;
			ScriptFunction mSetPauseWhileAdOpen;
			ScriptFunction mAddClickedBannerDelegate;
			ScriptFunction mClearClickedBannerDelegate;
			ScriptFunction mAddClosedAdDelegate;
			ScriptFunction mClearClosedAdDelegate;
		}
		public @property static final
		{
			ScriptFunction OnUserClickedBanner() { mixin(MGF!("mOnUserClickedBanner", "Function Engine.InGameAdManager.OnUserClickedBanner")()); }
			ScriptFunction OnUserClosedAdvertisement() { mixin(MGF!("mOnUserClosedAdvertisement", "Function Engine.InGameAdManager.OnUserClosedAdvertisement")()); }
			ScriptFunction Init() { mixin(MGF!("mInit", "Function Engine.InGameAdManager.Init")()); }
			ScriptFunction ShowBanner() { mixin(MGF!("mShowBanner", "Function Engine.InGameAdManager.ShowBanner")()); }
			ScriptFunction HideBanner() { mixin(MGF!("mHideBanner", "Function Engine.InGameAdManager.HideBanner")()); }
			ScriptFunction ForceCloseAd() { mixin(MGF!("mForceCloseAd", "Function Engine.InGameAdManager.ForceCloseAd")()); }
			ScriptFunction SetPauseWhileAdOpen() { mixin(MGF!("mSetPauseWhileAdOpen", "Function Engine.InGameAdManager.SetPauseWhileAdOpen")()); }
			ScriptFunction AddClickedBannerDelegate() { mixin(MGF!("mAddClickedBannerDelegate", "Function Engine.InGameAdManager.AddClickedBannerDelegate")()); }
			ScriptFunction ClearClickedBannerDelegate() { mixin(MGF!("mClearClickedBannerDelegate", "Function Engine.InGameAdManager.ClearClickedBannerDelegate")()); }
			ScriptFunction AddClosedAdDelegate() { mixin(MGF!("mAddClosedAdDelegate", "Function Engine.InGameAdManager.AddClosedAdDelegate")()); }
			ScriptFunction ClearClosedAdDelegate() { mixin(MGF!("mClearClosedAdDelegate", "Function Engine.InGameAdManager.ClearClosedAdDelegate")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ClickedBannerDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 64)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ClosedAdDelegates() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*), 76)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnUserClosedAdvertisement__Delegate'!
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnUserClickedBanner__Delegate'!
		}
		bool bShouldPauseWhileAdOpen() { mixin(MGBPC!(60, 0x1)()); }
		bool bShouldPauseWhileAdOpen(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
final:
	void OnUserClickedBanner()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUserClickedBanner, cast(void*)0, cast(void*)0);
	}
	void OnUserClosedAdvertisement()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUserClosedAdvertisement, cast(void*)0, cast(void*)0);
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	void ShowBanner(bool bShowBottomOfScreen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShowBottomOfScreen;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowBanner, params.ptr, cast(void*)0);
	}
	void HideBanner()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.HideBanner, cast(void*)0, cast(void*)0);
	}
	void ForceCloseAd()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceCloseAd, cast(void*)0, cast(void*)0);
	}
	void SetPauseWhileAdOpen(bool bShouldPause)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldPause;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPauseWhileAdOpen, params.ptr, cast(void*)0);
	}
	void AddClickedBannerDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddClickedBannerDelegate, params.ptr, cast(void*)0);
	}
	void ClearClickedBannerDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearClickedBannerDelegate, params.ptr, cast(void*)0);
	}
	void AddClosedAdDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddClosedAdDelegate, params.ptr, cast(void*)0);
	}
	void ClearClosedAdDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearClosedAdDelegate, params.ptr, cast(void*)0);
	}
}
