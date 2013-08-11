module UnrealScript.UTGame.GFxUDKFrontEnd_MainMenu;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_MainMenu : GFxUDKFrontEnd_Screen
{
	extern(D) struct Option
	{
		public @property final auto ref ScriptString OptionDesc() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
		private ubyte __OptionDesc[12];
		public @property final auto ref ScriptString OptionLabel() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __OptionLabel[12];
		public @property final auto ref ScriptString OptionName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __OptionName[12];
	}
	public @property final auto ref GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref ScriptArray!(GFxUDKFrontEnd_MainMenu.Option) ListOptions() { return *cast(ScriptArray!(GFxUDKFrontEnd_MainMenu.Option)*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref ubyte LastSelectedIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref GFxObject UserNameTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref GFxObject UserLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 236); }
	final void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38595], cast(void*)0, cast(void*)0);
	}
	final void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38596], params.ptr, cast(void*)0);
	}
	final void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38598], params.ptr, cast(void*)0);
	}
	final void Select_InstantAction()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38600], cast(void*)0, cast(void*)0);
	}
	final void Select_Multiplayer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38601], cast(void*)0, cast(void*)0);
	}
	final void Select_ExitGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38602], cast(void*)0, cast(void*)0);
	}
	final void ExitDialog_SelectOK(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38604], params.ptr, cast(void*)0);
	}
	final void ExitDialog_SelectBack(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38606], params.ptr, cast(void*)0);
	}
	final void OnListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38608], params.ptr, cast(void*)0);
	}
	final void OnListChange(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38612], params.ptr, cast(void*)0);
	}
	final void UpdateDescription()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38614], cast(void*)0, cast(void*)0);
	}
	final void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38617], cast(void*)0, cast(void*)0);
	}
	final void SetList(GFxObject InList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = InList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38621], params.ptr, cast(void*)0);
	}
	final void OnEscapeKeyPress()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38623], cast(void*)0, cast(void*)0);
	}
	final bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38624], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
