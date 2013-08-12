module UnrealScript.UTGame.GFxUDKFrontEnd_ErrorDialog;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;

extern(C++) interface GFxUDKFrontEnd_ErrorDialog : GFxUDKFrontEnd_Dialog
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_ErrorDialog")); }
	private static __gshared GFxUDKFrontEnd_ErrorDialog mDefaultProperties;
	@property final static GFxUDKFrontEnd_ErrorDialog DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxUDKFrontEnd_ErrorDialog)("GFxUDKFrontEnd_ErrorDialog UTGame.Default__GFxUDKFrontEnd_ErrorDialog")); }
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
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ErrorDialog.OnTopMostView")); }
			ScriptFunction SetTitle() { return mSetTitle ? mSetTitle : (mSetTitle = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ErrorDialog.SetTitle")); }
			ScriptFunction SetInfo() { return mSetInfo ? mSetInfo : (mSetInfo = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ErrorDialog.SetInfo")); }
			ScriptFunction SetButtonLabel() { return mSetButtonLabel ? mSetButtonLabel : (mSetButtonLabel = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ErrorDialog.SetButtonLabel")); }
			ScriptFunction OnViewClosed() { return mOnViewClosed ? mOnViewClosed : (mOnViewClosed = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ErrorDialog.OnViewClosed")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ErrorDialog.DisableSubComponents")); }
		}
	}
final:
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
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
