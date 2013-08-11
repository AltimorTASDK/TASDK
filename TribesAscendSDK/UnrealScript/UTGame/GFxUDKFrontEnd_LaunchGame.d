module UnrealScript.UTGame.GFxUDKFrontEnd_LaunchGame;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_OnlineGameSettings;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.UTGame.UTUIDataStore_MenuItems;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.UTGame.UTUIDataStore_StringList;

extern(C++) interface GFxUDKFrontEnd_LaunchGame : GFxUDKFrontEnd_Screen
{
public extern(D):
	enum MarkupForNoMapImage = "UDKFrontEnd.gm_map_none";
	struct Option
	{
		private ubyte __buffer__[36];
	public extern(D):
		@property final auto ref
		{
			ScriptString OptionDesc() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
			ScriptString OptionLabel() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString OptionName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(GFxUDKFrontEnd_LaunchGame.Option) ListOptions() { return *cast(ScriptArray!(GFxUDKFrontEnd_LaunchGame.Option)*)(cast(size_t)cast(void*)this + 292); }
		GFxObject MutatorsLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 380); }
		GFxObject RespawnLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 376); }
		GFxObject TimeLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 372); }
		GFxObject ScoreLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 368); }
		GFxObject OpponentsLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 364); }
		GFxObject BotLvlLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 360); }
		GFxObject MapLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 356); }
		GFxObject MutatorsTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 352); }
		GFxObject RespawnTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 348); }
		GFxObject MapTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 344); }
		GFxObject TimeTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 340); }
		GFxObject ScoreTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 336); }
		GFxObject OpponentsTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 332); }
		GFxObject BotLvlTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 328); }
		GFxObject GameTitleTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 324); }
		GFxObject MapNameTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 320); }
		GFxObject MapImageMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 316); }
		GFxObject MenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 312); }
		GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 308); }
		GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 304); }
		ScriptString DefaultGameModePrefixes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 280); }
		ScriptString DefaultMapImage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 268); }
		ScriptString DefaultGameModeSettings() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
		ScriptString DefaultGameMode() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 244); }
		ScriptString DefaultMapName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
		UTUIDataStore_MenuItems MenuDataStore() { return *cast(UTUIDataStore_MenuItems*)(cast(size_t)cast(void*)this + 228); }
		UTUIDataStore_StringList StringListDataStore() { return *cast(UTUIDataStore_StringList*)(cast(size_t)cast(void*)this + 224); }
		UIDataStore_OnlineGameSettings SettingsDataStore() { return *cast(UIDataStore_OnlineGameSettings*)(cast(size_t)cast(void*)this + 220); }
	}
final:
	ScriptString GetGameModeFriendlyString(ScriptString InGameMode)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InGameMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38192], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38240], cast(void*)0, cast(void*)0);
	}
	void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38242], cast(void*)0, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38248], params.ptr, cast(void*)0);
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38250], params.ptr, cast(void*)0);
	}
	void UpdateGameSettingsPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38252], cast(void*)0, cast(void*)0);
	}
	void PlayOpenAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38253], cast(void*)0, cast(void*)0);
	}
	void PlayCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38254], cast(void*)0, cast(void*)0);
	}
	void OnStartGame_Confirm()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38255], cast(void*)0, cast(void*)0);
	}
	void OnListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38263], params.ptr, cast(void*)0);
	}
	void OnListChange(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38267], params.ptr, cast(void*)0);
	}
	void UpdateDescription()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38269], cast(void*)0, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38272], cast(void*)0, cast(void*)0);
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38278], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	ScriptString GetStringFromMarkup(ScriptString MarkupString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MarkupString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38284], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
