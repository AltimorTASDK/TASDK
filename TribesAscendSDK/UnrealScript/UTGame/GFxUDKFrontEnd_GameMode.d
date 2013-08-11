module UnrealScript.UTGame.GFxUDKFrontEnd_GameMode;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_OnlineGameSettings;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.UTGame.UTUIDataProvider_GameModeInfo;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.UTGame.UTUIDataStore_StringList;

extern(C++) interface GFxUDKFrontEnd_GameMode : GFxUDKFrontEnd_Screen
{
	public @property final auto ref ScriptArray!(UTUIDataProvider_GameModeInfo) GameModeList() { return *cast(ScriptArray!(UTUIDataProvider_GameModeInfo)*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref GFxClikWidget ImgScrollerMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref GFxObject MenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref ScriptString GameMode() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref UTUIDataStore_StringList StringListDataStore() { return *cast(UTUIDataStore_StringList*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref UIDataStore_OnlineGameSettings SettingsDataStore() { return *cast(UIDataStore_OnlineGameSettings*)(cast(size_t)cast(void*)this + 220); }
	final void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38152], cast(void*)0, cast(void*)0);
	}
	final void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38157], params.ptr, cast(void*)0);
	}
	final void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38159], params.ptr, cast(void*)0);
	}
	final void OnGameModeSelected(ScriptString InGameMode, ScriptString InDefaultMap, ScriptString InGameSettingsClass)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InGameMode;
		*cast(ScriptString*)&params[12] = InDefaultMap;
		*cast(ScriptString*)&params[24] = InGameSettingsClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38161], params.ptr, cast(void*)0);
	}
	final void OnGameModeChange(int SelectedIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SelectedIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38168], params.ptr, cast(void*)0);
	}
	final void OnListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38178], params.ptr, cast(void*)0);
	}
	final void OnListChange(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38181], params.ptr, cast(void*)0);
	}
	final void UpdateDescription()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38183], cast(void*)0, cast(void*)0);
	}
	final void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38187], cast(void*)0, cast(void*)0);
	}
	final void SetImgScroller(GFxClikWidget InImgScroller)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxClikWidget*)params.ptr = InImgScroller;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38195], params.ptr, cast(void*)0);
	}
	final void ASSetList(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38197], params.ptr, cast(void*)0);
	}
	final bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38199], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
