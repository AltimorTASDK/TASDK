module UnrealScript.UTGame.GFxUDKFrontEnd_JoinDialog;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_JoinDialog : GFxUDKFrontEnd_Dialog
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_JoinDialog")()); }
	private static __gshared GFxUDKFrontEnd_JoinDialog mDefaultProperties;
	@property final static GFxUDKFrontEnd_JoinDialog DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_JoinDialog, "GFxUDKFrontEnd_JoinDialog UTGame.Default__GFxUDKFrontEnd_JoinDialog")()); }
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
			ScriptFunction OnTopMostView() { mixin(MGF!("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_JoinDialog.OnTopMostView")()); }
			ScriptFunction DisableSubComponents() { mixin(MGF!("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_JoinDialog.DisableSubComponents")()); }
			ScriptFunction PopulateServerInfo() { mixin(MGF!("mPopulateServerInfo", "Function UTGame.GFxUDKFrontEnd_JoinDialog.PopulateServerInfo")()); }
			ScriptFunction SetJoinButtonPress() { mixin(MGF!("mSetJoinButtonPress", "Function UTGame.GFxUDKFrontEnd_JoinDialog.SetJoinButtonPress")()); }
			ScriptFunction SetSpectateButtonPress() { mixin(MGF!("mSetSpectateButtonPress", "Function UTGame.GFxUDKFrontEnd_JoinDialog.SetSpectateButtonPress")()); }
			ScriptFunction WidgetInitialized() { mixin(MGF!("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_JoinDialog.WidgetInitialized")()); }
		}
	}
	@property final auto ref
	{
		GFxClikWidget SpectateBtn() { mixin(MGPC!("GFxClikWidget", 180)()); }
		GFxClikWidget JoinBtn() { mixin(MGPC!("GFxClikWidget", 176)()); }
		GFxClikWidget MutatorListMC() { mixin(MGPC!("GFxClikWidget", 172)()); }
		GFxClikWidget ServerInfoListMC() { mixin(MGPC!("GFxClikWidget", 168)()); }
	}
final:
	void OnTopMostView(bool* bPlayOpenAnimation = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bPlayOpenAnimation !is null)
			*cast(bool*)params.ptr = *bPlayOpenAnimation;
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
