module UnrealScript.UTGame.GFxUDKFrontEnd_Multiplayer;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_Multiplayer : GFxUDKFrontEnd_Screen
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
	public @property final auto ref ScriptArray!(GFxUDKFrontEnd_Multiplayer.Option) ListOptions() { return *cast(ScriptArray!(GFxUDKFrontEnd_Multiplayer.Option)*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref GFxObject MenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 232); }
	final void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38813], cast(void*)0, cast(void*)0);
	}
	final void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38814], params.ptr, cast(void*)0);
	}
	final void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38816], params.ptr, cast(void*)0);
	}
	final void Select_JoinGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38818], cast(void*)0, cast(void*)0);
	}
	final void Select_HostGame()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38819], cast(void*)0, cast(void*)0);
	}
	final void OnListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38820], params.ptr, cast(void*)0);
	}
	final void OnListChange(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38824], params.ptr, cast(void*)0);
	}
	final void UpdateDescription()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38826], cast(void*)0, cast(void*)0);
	}
	final void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38829], cast(void*)0, cast(void*)0);
	}
	final void SetList(GFxObject InList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = InList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38833], params.ptr, cast(void*)0);
	}
	final bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38835], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
