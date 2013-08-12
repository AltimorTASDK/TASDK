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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_LaunchGame")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetGameModeFriendlyString;
			ScriptFunction mOnViewLoaded;
			ScriptFunction mOnViewActivated;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mOnTopMostView;
			ScriptFunction mUpdateGameSettingsPanel;
			ScriptFunction mPlayOpenAnimation;
			ScriptFunction mPlayCloseAnimation;
			ScriptFunction mOnStartGame_Confirm;
			ScriptFunction mOnListItemPress;
			ScriptFunction mOnListChange;
			ScriptFunction mUpdateDescription;
			ScriptFunction mUpdateListDataProvider;
			ScriptFunction mWidgetInitialized;
			ScriptFunction mGetStringFromMarkup;
		}
		public @property static final
		{
			ScriptFunction GetGameModeFriendlyString() { return mGetGameModeFriendlyString ? mGetGameModeFriendlyString : (mGetGameModeFriendlyString = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.GetGameModeFriendlyString")); }
			ScriptFunction OnViewLoaded() { return mOnViewLoaded ? mOnViewLoaded : (mOnViewLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.OnViewLoaded")); }
			ScriptFunction OnViewActivated() { return mOnViewActivated ? mOnViewActivated : (mOnViewActivated = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.OnViewActivated")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.DisableSubComponents")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.OnTopMostView")); }
			ScriptFunction UpdateGameSettingsPanel() { return mUpdateGameSettingsPanel ? mUpdateGameSettingsPanel : (mUpdateGameSettingsPanel = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.UpdateGameSettingsPanel")); }
			ScriptFunction PlayOpenAnimation() { return mPlayOpenAnimation ? mPlayOpenAnimation : (mPlayOpenAnimation = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.PlayOpenAnimation")); }
			ScriptFunction PlayCloseAnimation() { return mPlayCloseAnimation ? mPlayCloseAnimation : (mPlayCloseAnimation = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.PlayCloseAnimation")); }
			ScriptFunction OnStartGame_Confirm() { return mOnStartGame_Confirm ? mOnStartGame_Confirm : (mOnStartGame_Confirm = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.OnStartGame_Confirm")); }
			ScriptFunction OnListItemPress() { return mOnListItemPress ? mOnListItemPress : (mOnListItemPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.OnListItemPress")); }
			ScriptFunction OnListChange() { return mOnListChange ? mOnListChange : (mOnListChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.OnListChange")); }
			ScriptFunction UpdateDescription() { return mUpdateDescription ? mUpdateDescription : (mUpdateDescription = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.UpdateDescription")); }
			ScriptFunction UpdateListDataProvider() { return mUpdateListDataProvider ? mUpdateListDataProvider : (mUpdateListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.UpdateListDataProvider")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.WidgetInitialized")); }
			ScriptFunction GetStringFromMarkup() { return mGetStringFromMarkup ? mGetStringFromMarkup : (mGetStringFromMarkup = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_LaunchGame.GetStringFromMarkup")); }
		}
	}
	static struct Constants
	{
		enum MarkupForNoMapImage = "UDKFrontEnd.gm_map_none";
	}
	struct Option
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.GFxUDKFrontEnd_LaunchGame.Option")); }
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
	static ScriptString GetGameModeFriendlyString(ScriptString InGameMode)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InGameMode;
		StaticClass.ProcessEvent(Functions.GetGameModeFriendlyString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewLoaded, cast(void*)0, cast(void*)0);
	}
	void OnViewActivated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewActivated, cast(void*)0, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableSubComponents, params.ptr, cast(void*)0);
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTopMostView, params.ptr, cast(void*)0);
	}
	void UpdateGameSettingsPanel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGameSettingsPanel, cast(void*)0, cast(void*)0);
	}
	void PlayOpenAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayOpenAnimation, cast(void*)0, cast(void*)0);
	}
	void PlayCloseAnimation()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCloseAnimation, cast(void*)0, cast(void*)0);
	}
	void OnStartGame_Confirm()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnStartGame_Confirm, cast(void*)0, cast(void*)0);
	}
	void OnListItemPress(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnListItemPress, params.ptr, cast(void*)0);
	}
	void OnListChange(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnListChange, params.ptr, cast(void*)0);
	}
	void UpdateDescription()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDescription, cast(void*)0, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateListDataProvider, cast(void*)0, cast(void*)0);
	}
	bool WidgetInitialized(ScriptName WidgetName, ScriptName WidgetPath, GFxObject Widget)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptName*)params.ptr = WidgetName;
		*cast(ScriptName*)&params[8] = WidgetPath;
		*cast(GFxObject*)&params[16] = Widget;
		(cast(ScriptObject)this).ProcessEvent(Functions.WidgetInitialized, params.ptr, cast(void*)0);
		return *cast(bool*)&params[20];
	}
	static ScriptString GetStringFromMarkup(ScriptString MarkupString)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MarkupString;
		StaticClass.ProcessEvent(Functions.GetStringFromMarkup, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
}
