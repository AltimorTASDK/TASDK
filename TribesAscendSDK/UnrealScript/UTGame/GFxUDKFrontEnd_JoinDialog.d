module UnrealScript.UTGame.GFxUDKFrontEnd_JoinDialog;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_JoinDialog : GFxUDKFrontEnd_Dialog
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_JoinDialog")); }
	private static __gshared GFxUDKFrontEnd_JoinDialog mDefaultProperties;
	@property final static GFxUDKFrontEnd_JoinDialog DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxUDKFrontEnd_JoinDialog)("GFxUDKFrontEnd_JoinDialog UTGame.Default__GFxUDKFrontEnd_JoinDialog")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnTopMostView;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mPopulateServerInfo;
			ScriptFunction mSetJoinButtonPress;
			ScriptFunction mSetSpectateButtonPress;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinDialog.OnTopMostView")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinDialog.DisableSubComponents")); }
			ScriptFunction PopulateServerInfo() { return mPopulateServerInfo ? mPopulateServerInfo : (mPopulateServerInfo = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinDialog.PopulateServerInfo")); }
			ScriptFunction SetJoinButtonPress() { return mSetJoinButtonPress ? mSetJoinButtonPress : (mSetJoinButtonPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinDialog.SetJoinButtonPress")); }
			ScriptFunction SetSpectateButtonPress() { return mSetSpectateButtonPress ? mSetSpectateButtonPress : (mSetSpectateButtonPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinDialog.SetSpectateButtonPress")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_JoinDialog.WidgetInitialized")); }
		}
	}
	@property final auto ref
	{
		GFxClikWidget SpectateBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 180); }
		GFxClikWidget JoinBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 176); }
		GFxClikWidget MutatorListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 172); }
		GFxClikWidget ServerInfoListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 168); }
	}
final:
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTopMostView, params.ptr, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableSubComponents, params.ptr, cast(void*)0);
	}
	void PopulateServerInfo(OnlineGameSettings GameSettings)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineGameSettings*)params.ptr = GameSettings;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopulateServerInfo, params.ptr, cast(void*)0);
	}
	void SetJoinButtonPress(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* JoinButtonListener)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = JoinButtonListener;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetJoinButtonPress, params.ptr, cast(void*)0);
	}
	void SetSpectateButtonPress(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* SpectateButtonListener)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = SpectateButtonListener;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpectateButtonPress, params.ptr, cast(void*)0);
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(Functions.WidgetInitialized, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
