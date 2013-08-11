module UnrealScript.UTGame.GFxUDKFrontEnd_MapSelect;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.UTGame.UTUIDataProvider_MapInfo;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_MapSelect : GFxUDKFrontEnd_Screen
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(UTUIDataProvider_MapInfo) MapList() { return *cast(ScriptArray!(UTUIDataProvider_MapInfo)*)(cast(size_t)cast(void*)this + 236); }
		int LastSelectedItem() { return *cast(int*)(cast(size_t)cast(void*)this + 248); }
		GFxObject MenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 232); }
		GFxClikWidget ImgScrollerMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 228); }
		GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 224); }
		GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 220); }
	}
final:
	ScriptString GetImageMarkupByMapName(ScriptString InMapName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InMapName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38166], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38638], cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38639], params.ptr, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38641], params.ptr, cast(void*)0);
	}
	void OnMapList_ValueChanged(ScriptString InMapSelected, ScriptString InMapImageSelected)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InMapSelected;
		*cast(ScriptString*)&params[12] = InMapImageSelected;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38643], params.ptr, cast(void*)0);
	}
	void SetList(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38646], params.ptr, cast(void*)0);
	}
	void OnListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38648], params.ptr, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38653], cast(void*)0, cast(void*)0);
	}
	ScriptString GetMapFriendlyName(ScriptString Map)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Map;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38664], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void SetImgScroller(GFxClikWidget InImgScroller)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxClikWidget*)params.ptr = InImgScroller;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38665], params.ptr, cast(void*)0);
	}
	ScriptName GetCurrentGameMode()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38674], params.ptr, cast(void*)0);
		return *cast(ScriptName*)params.ptr;
	}
	void SetupMapCycle(ScriptString SelectedMap)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SelectedMap;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38780], params.ptr, cast(void*)0);
	}
	ScriptString GetSelectedMap()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38785], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38797], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
}
