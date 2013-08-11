module UnrealScript.UTGame.GFxUDKFrontEnd_ErrorDialog;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;

extern(C++) interface GFxUDKFrontEnd_ErrorDialog : GFxUDKFrontEnd_Dialog
{
	final void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38043], params.ptr, cast(void*)0);
	}
	final void SetTitle(ScriptString Title)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Title;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38045], params.ptr, cast(void*)0);
	}
	final void SetInfo(ScriptString Info)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Info;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38047], params.ptr, cast(void*)0);
	}
	final void SetButtonLabel(ScriptString ButtonLabel)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ButtonLabel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38049], params.ptr, cast(void*)0);
	}
	final void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38051], cast(void*)0, cast(void*)0);
	}
	final void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38052], params.ptr, cast(void*)0);
	}
}
