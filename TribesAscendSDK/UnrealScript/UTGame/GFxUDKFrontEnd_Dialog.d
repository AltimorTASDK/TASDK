module UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_View;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_Dialog : GFxUDKFrontEnd_View
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_Dialog")()); }
	private static __gshared GFxUDKFrontEnd_Dialog mDefaultProperties;
	@property final static GFxUDKFrontEnd_Dialog DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_Dialog, "GFxUDKFrontEnd_Dialog UTGame.Default__GFxUDKFrontEnd_Dialog")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAcceptDelegate;
			ScriptFunction mOnViewClosed;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mOnTopMostView;
			ScriptFunction mPlayOpenAnimation;
			ScriptFunction mPlayCloseAnimation;
			ScriptFunction mSetBackButton;
			ScriptFunction mSetBackButton_OnPress;
			ScriptFunction mSelect_Back;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction AcceptDelegate() { mixin(MGF!("mAcceptDelegate", "Function UTGame.GFxUDKFrontEnd_Dialog.AcceptDelegate")()); }
			ScriptFunction OnViewClosed() { mixin(MGF!("mOnViewClosed", "Function UTGame.GFxUDKFrontEnd_Dialog.OnViewClosed")()); }
			ScriptFunction DisableSubComponents() { mixin(MGF!("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_Dialog.DisableSubComponents")()); }
			ScriptFunction OnTopMostView() { mixin(MGF!("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_Dialog.OnTopMostView")()); }
			ScriptFunction PlayOpenAnimation() { mixin(MGF!("mPlayOpenAnimation", "Function UTGame.GFxUDKFrontEnd_Dialog.PlayOpenAnimation")()); }
			ScriptFunction PlayCloseAnimation() { mixin(MGF!("mPlayCloseAnimation", "Function UTGame.GFxUDKFrontEnd_Dialog.PlayCloseAnimation")()); }
			ScriptFunction SetBackButton() { mixin(MGF!("mSetBackButton", "Function UTGame.GFxUDKFrontEnd_Dialog.SetBackButton")()); }
			ScriptFunction SetBackButton_OnPress() { mixin(MGF!("mSetBackButton_OnPress", "Function UTGame.GFxUDKFrontEnd_Dialog.SetBackButton_OnPress")()); }
			ScriptFunction Select_Back() { mixin(MGF!("mSelect_Back", "Function UTGame.GFxUDKFrontEnd_Dialog.Select_Back")()); }
			ScriptFunction WidgetInitialized() { mixin(MGF!("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_Dialog.WidgetInitialized")()); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__AcceptDelegate__Delegate'!
		GFxClikWidget AcceptBtn() { mixin(MGPC!("GFxClikWidget", 152)()); }
		GFxClikWidget BackBtn() { mixin(MGPC!("GFxClikWidget", 148)()); }
		GFxObject InfoTxt() { mixin(MGPC!("GFxObject", 144)()); }
		GFxObject TitleTxt() { mixin(MGPC!("GFxObject", 140)()); }
		GFxObject DialogMC() { mixin(MGPC!("GFxObject", 136)()); }
	}
final:
	void AcceptDelegate(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.AcceptDelegate, params.ptr, cast(void*)0);
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
	void OnTopMostView(bool* bPlayOpenAnimation = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bPlayOpenAnimation !is null)
			*cast(bool*)params.ptr = *bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTopMostView, params.ptr, cast(void*)0);
	}
	void PlayOpenAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayOpenAnimation, cast(void*)0, cast(void*)0);
	}
	void PlayCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCloseAnimation, cast(void*)0, cast(void*)0);
	}
	void SetBackButton(GFxObject InBackButton)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = InBackButton;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBackButton, params.ptr, cast(void*)0);
	}
	void SetBackButton_OnPress(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* EventListener)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = EventListener;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBackButton_OnPress, params.ptr, cast(void*)0);
	}
	void Select_Back(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_Back, params.ptr, cast(void*)0);
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
