module UnrealScript.UTGame.GFxUDKFrontEnd_InfoDialog;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;

extern(C++) interface GFxUDKFrontEnd_InfoDialog : GFxUDKFrontEnd_Dialog
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_InfoDialog")); }
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
			ScriptFunction OnViewClosed() { return mOnViewClosed ? mOnViewClosed : (mOnViewClosed = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_InfoDialog.OnViewClosed")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_InfoDialog.OnTopMostView")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_InfoDialog.DisableSubComponents")); }
			ScriptFunction SetTitle() { return mSetTitle ? mSetTitle : (mSetTitle = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_InfoDialog.SetTitle")); }
			ScriptFunction SetInfo() { return mSetInfo ? mSetInfo : (mSetInfo = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_InfoDialog.SetInfo")); }
			ScriptFunction SetAcceptButtonLabel() { return mSetAcceptButtonLabel ? mSetAcceptButtonLabel : (mSetAcceptButtonLabel = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_InfoDialog.SetAcceptButtonLabel")); }
			ScriptFunction SetBackButtonLabel() { return mSetBackButtonLabel ? mSetBackButtonLabel : (mSetBackButtonLabel = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_InfoDialog.SetBackButtonLabel")); }
			ScriptFunction SetAcceptButton_OnPress() { return mSetAcceptButton_OnPress ? mSetAcceptButton_OnPress : (mSetAcceptButton_OnPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_InfoDialog.SetAcceptButton_OnPress")); }
		}
	}
final:
	void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewClosed, cast(void*)0, cast(void*)0);
	}
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
