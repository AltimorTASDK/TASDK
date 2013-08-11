module UnrealScript.UTGame.GFxUDKFrontEnd_InfoDialog;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;

extern(C++) interface GFxUDKFrontEnd_InfoDialog : GFxUDKFrontEnd_Dialog
{
public extern(D):
final:
	void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38349], cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38350], params.ptr, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38352], params.ptr, cast(void*)0);
	}
	void SetTitle(ScriptString Title)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38354], params.ptr, cast(void*)0);
	}
	void SetInfo(ScriptString pInfo)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pInfo;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38356], params.ptr, cast(void*)0);
	}
	void SetAcceptButtonLabel(ScriptString Label)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Label;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38358], params.ptr, cast(void*)0);
	}
	void SetBackButtonLabel(ScriptString Label)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Label;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38360], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38362], params.ptr, cast(void*)0);
	}
}
