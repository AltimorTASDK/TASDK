module UnrealScript.UTGame.GFxUDKFrontEnd_Dialog;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_View;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_Dialog : GFxUDKFrontEnd_View
{
	public @property final auto ref GFxClikWidget AcceptBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref GFxClikWidget BackBtn() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref GFxObject InfoTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref GFxObject TitleTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref GFxObject DialogMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 136); }
	final void AcceptDelegate(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38016], params.ptr, cast(void*)0);
	}
	final void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38023], cast(void*)0, cast(void*)0);
	}
	final void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38024], params.ptr, cast(void*)0);
	}
	final void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38026], params.ptr, cast(void*)0);
	}
	final void PlayOpenAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38028], cast(void*)0, cast(void*)0);
	}
	final void PlayCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38029], cast(void*)0, cast(void*)0);
	}
	final void SetBackButton(GFxObject InBackButton)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = InBackButton;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38030], params.ptr, cast(void*)0);
	}
	final void SetBackButton_OnPress(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void* EventListener)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'~
void**)params.ptr = EventListener;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38032], params.ptr, cast(void*)0);
	}
	final void Select_Back(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38034], params.ptr, cast(void*)0);
	}
	final bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38036], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
