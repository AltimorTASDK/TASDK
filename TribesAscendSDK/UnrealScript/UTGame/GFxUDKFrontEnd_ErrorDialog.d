module UnrealScript.UTGame.GFxUDKFrontEnd_ErrorDialog;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;

extern(C++) interface GFxUDKFrontEnd_ErrorDialog : GFxUDKFrontEnd_Dialog
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.GFxUDKFrontEnd_ErrorDialog")); }
	private static __gshared GFxUDKFrontEnd_ErrorDialog mDefaultProperties;
	@property final static GFxUDKFrontEnd_ErrorDialog DefaultProperties() { mixin(MGDPC("GFxUDKFrontEnd_ErrorDialog", "GFxUDKFrontEnd_ErrorDialog UTGame.Default__GFxUDKFrontEnd_ErrorDialog")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnTopMostView;
			ScriptFunction mSetTitle;
			ScriptFunction mSetInfo;
			ScriptFunction mSetButtonLabel;
			ScriptFunction mOnViewClosed;
			ScriptFunction mDisableSubComponents;
		}
		public @property static final
		{
			ScriptFunction OnTopMostView() { mixin(MGF("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_ErrorDialog.OnTopMostView")); }
			ScriptFunction SetTitle() { mixin(MGF("mSetTitle", "Function UTGame.GFxUDKFrontEnd_ErrorDialog.SetTitle")); }
			ScriptFunction SetInfo() { mixin(MGF("mSetInfo", "Function UTGame.GFxUDKFrontEnd_ErrorDialog.SetInfo")); }
			ScriptFunction SetButtonLabel() { mixin(MGF("mSetButtonLabel", "Function UTGame.GFxUDKFrontEnd_ErrorDialog.SetButtonLabel")); }
			ScriptFunction OnViewClosed() { mixin(MGF("mOnViewClosed", "Function UTGame.GFxUDKFrontEnd_ErrorDialog.OnViewClosed")); }
			ScriptFunction DisableSubComponents() { mixin(MGF("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_ErrorDialog.DisableSubComponents")); }
		}
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
	void SetButtonLabel(ScriptString ButtonLabel)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ButtonLabel;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetButtonLabel, params.ptr, cast(void*)0);
	}
	void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewClosed, cast(void*)0, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableSubComponents, params.ptr, cast(void*)0);
	}
}
