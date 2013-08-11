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
	public static immutable auto MarkupForNoMapImage = "UDKFrontEnd.gm_map_none";
	extern(D) struct Option
	{
		public @property final auto ref ScriptString OptionDesc() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
		private ubyte __OptionDesc[12];
		public @property final auto ref ScriptString OptionLabel() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __OptionLabel[12];
		public @property final auto ref ScriptString OptionName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __OptionName[12];
	}
	public @property final auto ref ScriptArray!(GFxUDKFrontEnd_LaunchGame.Option) ListOptions() { return *cast(ScriptArray!(GFxUDKFrontEnd_LaunchGame.Option)*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref GFxObject MutatorsLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref GFxObject RespawnLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref GFxObject TimeLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref GFxObject ScoreLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref GFxObject OpponentsLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref GFxObject BotLvlLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref GFxObject MapLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref GFxObject MutatorsTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref GFxObject RespawnTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref GFxObject MapTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref GFxObject TimeTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref GFxObject ScoreTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref GFxObject OpponentsTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref GFxObject BotLvlTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref GFxObject GameTitleTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref GFxObject MapNameTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref GFxObject MapImageMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref GFxObject MenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref ScriptString DefaultGameModePrefixes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref ScriptString DefaultMapImage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref ScriptString DefaultGameModeSettings() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref ScriptString DefaultGameMode() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptString DefaultMapName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref UTUIDataStore_MenuItems MenuDataStore() { return *cast(UTUIDataStore_MenuItems*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref UTUIDataStore_StringList StringListDataStore() { return *cast(UTUIDataStore_StringList*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref UIDataStore_OnlineGameSettings SettingsDataStore() { return *cast(UIDataStore_OnlineGameSettings*)(cast(size_t)cast(void*)this + 220); }
	final ScriptString GetGameModeFriendlyString(ScriptString InGameMode)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InGameMode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38192], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	final void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38240], cast(void*)0, cast(void*)0);
	}
	final void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38242], cast(void*)0, cast(void*)0);
	}
	final void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38248], params.ptr, cast(void*)0);
	}
	final void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38250], params.ptr, cast(void*)0);
	}
	final void UpdateGameSettingsPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38252], cast(void*)0, cast(void*)0);
	}
	final void PlayOpenAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38253], cast(void*)0, cast(void*)0);
	}
	final void PlayCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38254], cast(void*)0, cast(void*)0);
	}
	final void OnStartGame_Confirm()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38255], cast(void*)0, cast(void*)0);
	}
	final void OnListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38263], params.ptr, cast(void*)0);
	}
	final void OnListChange(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38267], params.ptr, cast(void*)0);
	}
	final void UpdateDescription()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38269], cast(void*)0, cast(void*)0);
	}
	final void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38272], cast(void*)0, cast(void*)0);
	}
	final bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38278], params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	final ScriptString GetStringFromMarkup(ScriptString MarkupString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MarkupString;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[38284], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
