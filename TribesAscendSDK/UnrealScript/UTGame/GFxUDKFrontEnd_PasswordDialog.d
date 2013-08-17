module UnrealScript.UTGame.GFxUDKFrontEnd_PasswordDialog;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_PasswordDialog : GFxUDKFrontEnd_Dialog
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_PasswordDialog")()); }
	private static __gshared GFxUDKFrontEnd_PasswordDialog mDefaultProperties;
	@property final static GFxUDKFrontEnd_PasswordDialog DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_PasswordDialog, "GFxUDKFrontEnd_PasswordDialog UTGame.Default__GFxUDKFrontEnd_PasswordDialog")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetPassword;
			ScriptFunction mOnTopMostView;
			ScriptFunction mClearPasswordRenderer;
			ScriptFunction mOnViewClosed;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mSetBackButtonListener;
			ScriptFunction mSetOKButtonListener;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction GetPassword() { mixin(MGF!("mGetPassword", "Function UTGame.GFxUDKFrontEnd_PasswordDialog.GetPassword")()); }
			ScriptFunction OnTopMostView() { mixin(MGF!("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_PasswordDialog.OnTopMostView")()); }
			ScriptFunction ClearPasswordRenderer() { mixin(MGF!("mClearPasswordRenderer", "Function UTGame.GFxUDKFrontEnd_PasswordDialog.ClearPasswordRenderer")()); }
			ScriptFunction OnViewClosed() { mixin(MGF!("mOnViewClosed", "Function UTGame.GFxUDKFrontEnd_PasswordDialog.OnViewClosed")()); }
			ScriptFunction DisableSubComponents() { mixin(MGF!("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_PasswordDialog.DisableSubComponents")()); }
			ScriptFunction SetBackButtonListener() { mixin(MGF!("mSetBackButtonListener", "Function UTGame.GFxUDKFrontEnd_PasswordDialog.SetBackButtonListener")()); }
			ScriptFunction SetOKButtonListener() { mixin(MGF!("mSetOKButtonListener", "Function UTGame.GFxUDKFrontEnd_PasswordDialog.SetOKButtonListener")()); }
			ScriptFunction WidgetInitialized() { mixin(MGF!("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_PasswordDialog.WidgetInitialized")()); }
		}
	}
	@property final auto ref
	{
		GFxClikWidget JoinBtn() { mixin(MGPC!(GFxClikWidget, 176)()); }
		GFxObject PasswordTextField() { mixin(MGPC!(GFxObject, 172)()); }
		GFxClikWidget PasswordRendererMC() { mixin(MGPC!(GFxClikWidget, 168)()); }
	}
final:
	ScriptString GetPassword()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPassword, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTopMostView, params.ptr, cast(void*)0);
	}
	void ClearPasswordRenderer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPasswordRenderer, cast(void*)0, cast(void*)0);
	}
	void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewClosed, cast(void*)0, cast(void*)0);
	}
	void DisableSubComponents(bool bEnableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableComponents;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableSubComponents, params.ptr, cast(void*)0);
	}
	void SetBackButtonListener(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* DelegateListener)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = DelegateListener;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBackButtonListener, params.ptr, cast(void*)0);
	}
	void SetOKButtonListener(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* DelegateListener)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = DelegateListener;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOKButtonListener, params.ptr, cast(void*)0);
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
