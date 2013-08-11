module UnrealScript.UTGame.GFxUDKFrontEnd_View;

import ScriptClasses;
import UnrealScript.UTGame.GFxUIView;
import UnrealScript.UTGame.GFxUDKFrontEnd;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_View : GFxUIView
{
	public static immutable auto FakePlayerIndex = 0;
	public @property final auto ref ScriptName ViewName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref GFxUDKFrontEnd MenuManager() { return *cast(GFxUDKFrontEnd*)(cast(size_t)cast(void*)this + 124); }
	final void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37996], cast(void*)0, cast(void*)0);
	}
	final void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37997], params.ptr, cast(void*)0);
	}
	final void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37999], cast(void*)0, cast(void*)0);
	}
	final void OnViewClosed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38000], cast(void*)0, cast(void*)0);
	}
	final void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38001], params.ptr, cast(void*)0);
	}
	final void PlayOpenAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38003], cast(void*)0, cast(void*)0);
	}
	final void PlayCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38004], cast(void*)0, cast(void*)0);
	}
	final void Select_Back(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38005], params.ptr, cast(void*)0);
	}
	final void MoveBackImpl()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38007], cast(void*)0, cast(void*)0);
	}
	final void OnEscapeKeyPress()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38008], cast(void*)0, cast(void*)0);
	}
	final bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38009], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
