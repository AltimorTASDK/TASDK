module UnrealScript.Engine.InGameAdManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface InGameAdManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InGameAdManager")); }
	private static __gshared InGameAdManager mDefaultProperties;
	@property final static InGameAdManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InGameAdManager)("InGameAdManager Engine.Default__InGameAdManager")); }
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
			ScriptFunction OnUserClickedBanner() { return mOnUserClickedBanner ? mOnUserClickedBanner : (mOnUserClickedBanner = ScriptObject.Find!(ScriptFunction)("Function Engine.InGameAdManager.OnUserClickedBanner")); }
			ScriptFunction OnUserClosedAdvertisement() { return mOnUserClosedAdvertisement ? mOnUserClosedAdvertisement : (mOnUserClosedAdvertisement = ScriptObject.Find!(ScriptFunction)("Function Engine.InGameAdManager.OnUserClosedAdvertisement")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function Engine.InGameAdManager.Init")); }
			ScriptFunction ShowBanner() { return mShowBanner ? mShowBanner : (mShowBanner = ScriptObject.Find!(ScriptFunction)("Function Engine.InGameAdManager.ShowBanner")); }
			ScriptFunction HideBanner() { return mHideBanner ? mHideBanner : (mHideBanner = ScriptObject.Find!(ScriptFunction)("Function Engine.InGameAdManager.HideBanner")); }
			ScriptFunction ForceCloseAd() { return mForceCloseAd ? mForceCloseAd : (mForceCloseAd = ScriptObject.Find!(ScriptFunction)("Function Engine.InGameAdManager.ForceCloseAd")); }
			ScriptFunction SetPauseWhileAdOpen() { return mSetPauseWhileAdOpen ? mSetPauseWhileAdOpen : (mSetPauseWhileAdOpen = ScriptObject.Find!(ScriptFunction)("Function Engine.InGameAdManager.SetPauseWhileAdOpen")); }
			ScriptFunction AddClickedBannerDelegate() { return mAddClickedBannerDelegate ? mAddClickedBannerDelegate : (mAddClickedBannerDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.InGameAdManager.AddClickedBannerDelegate")); }
			ScriptFunction ClearClickedBannerDelegate() { return mClearClickedBannerDelegate ? mClearClickedBannerDelegate : (mClearClickedBannerDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.InGameAdManager.ClearClickedBannerDelegate")); }
			ScriptFunction AddClosedAdDelegate() { return mAddClosedAdDelegate ? mAddClosedAdDelegate : (mAddClosedAdDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.InGameAdManager.AddClosedAdDelegate")); }
			ScriptFunction ClearClosedAdDelegate() { return mClearClosedAdDelegate ? mClearClosedAdDelegate : (mClearClosedAdDelegate = ScriptObject.Find!(ScriptFunction)("Function Engine.InGameAdManager.ClearClosedAdDelegate")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ClickedBannerDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 64); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ClosedAdDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bShouldPauseWhileAdOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bShouldPauseWhileAdOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
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
