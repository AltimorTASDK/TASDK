module UnrealScript.UTGame.GFxUDKFrontEnd_InfoDialog;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;

extern(C++) interface GFxUDKFrontEnd_InfoDialog : GFxUDKFrontEnd_Dialog
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_InfoDialog")()); }
	private static __gshared GFxUDKFrontEnd_InfoDialog mDefaultProperties;
	@property final static GFxUDKFrontEnd_InfoDialog DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_InfoDialog, "GFxUDKFrontEnd_InfoDialog UTGame.Default__GFxUDKFrontEnd_InfoDialog")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnViewClosed;
			ScriptFunction mOnTopMostView;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mSetTitle;
			ScriptFunction mSetInfo;
			ScriptFunction mSetAcceptButtonLabel;
			ScriptFunction mSetBackButtonLabel;
			ScriptFunction mSetAcceptButton_OnPress;
		}
		public @property static final
		{
			ScriptFunction OnViewClosed() { mixin(MGF!("mOnViewClosed", "Function UTGame.GFxUDKFrontEnd_InfoDialog.OnViewClosed")()); }
			ScriptFunction OnTopMostView() { mixin(MGF!("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_InfoDialog.OnTopMostView")()); }
			ScriptFunction DisableSubComponents() { mixin(MGF!("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_InfoDialog.DisableSubComponents")()); }
			ScriptFunction SetTitle() { mixin(MGF!("mSetTitle", "Function UTGame.GFxUDKFrontEnd_InfoDialog.SetTitle")()); }
			ScriptFunction SetInfo() { mixin(MGF!("mSetInfo", "Function UTGame.GFxUDKFrontEnd_InfoDialog.SetInfo")()); }
			ScriptFunction SetAcceptButtonLabel() { mixin(MGF!("mSetAcceptButtonLabel", "Function UTGame.GFxUDKFrontEnd_InfoDialog.SetAcceptButtonLabel")()); }
			ScriptFunction SetBackButtonLabel() { mixin(MGF!("mSetBackButtonLabel", "Function UTGame.GFxUDKFrontEnd_InfoDialog.SetBackButtonLabel")()); }
			ScriptFunction SetAcceptButton_OnPress() { mixin(MGF!("mSetAcceptButton_OnPress", "Function UTGame.GFxUDKFrontEnd_InfoDialog.SetAcceptButton_OnPress")()); }
		}
	}
final:
	void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewClosed, cast(void*)0, cast(void*)0);
	}
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
	void SetTitle(ScriptString Title)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTitle, params.ptr, cast(void*)0);
	}
	void SetInfo(ScriptString pInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetInfo, params.ptr, cast(void*)0);
	}
	void SetAcceptButtonLabel(ScriptString Label)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Label;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAcceptButtonLabel, params.ptr, cast(void*)0);
	}
	void SetBackButtonLabel(ScriptString Label)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Label;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBackButtonLabel, params.ptr, cast(void*)0);
	}
	void SetAcceptButton_OnPress(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* EventListener)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = EventListener;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAcceptButton_OnPress, params.ptr, cast(void*)0);
	}
}
