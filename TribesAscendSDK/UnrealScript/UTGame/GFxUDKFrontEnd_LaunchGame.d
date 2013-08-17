module UnrealScript.UTGame.GFxUDKFrontEnd_LaunchGame;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_LaunchGame")()); }
	private static __gshared GFxUDKFrontEnd_LaunchGame mDefaultProperties;
	@property final static GFxUDKFrontEnd_LaunchGame DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_LaunchGame, "GFxUDKFrontEnd_LaunchGame UTGame.Default__GFxUDKFrontEnd_LaunchGame")()); }
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
			ScriptFunction GetGameModeFriendlyString() { mixin(MGF!("mGetGameModeFriendlyString", "Function UTGame.GFxUDKFrontEnd_LaunchGame.GetGameModeFriendlyString")()); }
			ScriptFunction OnViewLoaded() { mixin(MGF!("mOnViewLoaded", "Function UTGame.GFxUDKFrontEnd_LaunchGame.OnViewLoaded")()); }
			ScriptFunction OnViewActivated() { mixin(MGF!("mOnViewActivated", "Function UTGame.GFxUDKFrontEnd_LaunchGame.OnViewActivated")()); }
			ScriptFunction DisableSubComponents() { mixin(MGF!("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_LaunchGame.DisableSubComponents")()); }
			ScriptFunction OnTopMostView() { mixin(MGF!("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_LaunchGame.OnTopMostView")()); }
			ScriptFunction UpdateGameSettingsPanel() { mixin(MGF!("mUpdateGameSettingsPanel", "Function UTGame.GFxUDKFrontEnd_LaunchGame.UpdateGameSettingsPanel")()); }
			ScriptFunction PlayOpenAnimation() { mixin(MGF!("mPlayOpenAnimation", "Function UTGame.GFxUDKFrontEnd_LaunchGame.PlayOpenAnimation")()); }
			ScriptFunction PlayCloseAnimation() { mixin(MGF!("mPlayCloseAnimation", "Function UTGame.GFxUDKFrontEnd_LaunchGame.PlayCloseAnimation")()); }
			ScriptFunction OnStartGame_Confirm() { mixin(MGF!("mOnStartGame_Confirm", "Function UTGame.GFxUDKFrontEnd_LaunchGame.OnStartGame_Confirm")()); }
			ScriptFunction OnListItemPress() { mixin(MGF!("mOnListItemPress", "Function UTGame.GFxUDKFrontEnd_LaunchGame.OnListItemPress")()); }
			ScriptFunction OnListChange() { mixin(MGF!("mOnListChange", "Function UTGame.GFxUDKFrontEnd_LaunchGame.OnListChange")()); }
			ScriptFunction UpdateDescription() { mixin(MGF!("mUpdateDescription", "Function UTGame.GFxUDKFrontEnd_LaunchGame.UpdateDescription")()); }
			ScriptFunction UpdateListDataProvider() { mixin(MGF!("mUpdateListDataProvider", "Function UTGame.GFxUDKFrontEnd_LaunchGame.UpdateListDataProvider")()); }
			ScriptFunction WidgetInitialized() { mixin(MGF!("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_LaunchGame.WidgetInitialized")()); }
			ScriptFunction GetStringFromMarkup() { mixin(MGF!("mGetStringFromMarkup", "Function UTGame.GFxUDKFrontEnd_LaunchGame.GetStringFromMarkup")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.GFxUDKFrontEnd_LaunchGame.Option")()); }
		@property final auto ref
		{
			ScriptString OptionDesc() { mixin(MGPS!(ScriptString, 24)()); }
			ScriptString OptionLabel() { mixin(MGPS!(ScriptString, 12)()); }
			ScriptString OptionName() { mixin(MGPS!(ScriptString, 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(GFxUDKFrontEnd_LaunchGame.Option) ListOptions() { mixin(MGPC!(ScriptArray!(GFxUDKFrontEnd_LaunchGame.Option), 292)()); }
		GFxObject MutatorsLabelTxt() { mixin(MGPC!(GFxObject, 380)()); }
		GFxObject RespawnLabelTxt() { mixin(MGPC!(GFxObject, 376)()); }
		GFxObject TimeLabelTxt() { mixin(MGPC!(GFxObject, 372)()); }
		GFxObject ScoreLabelTxt() { mixin(MGPC!(GFxObject, 368)()); }
		GFxObject OpponentsLabelTxt() { mixin(MGPC!(GFxObject, 364)()); }
		GFxObject BotLvlLabelTxt() { mixin(MGPC!(GFxObject, 360)()); }
		GFxObject MapLabelTxt() { mixin(MGPC!(GFxObject, 356)()); }
		GFxObject MutatorsTxt() { mixin(MGPC!(GFxObject, 352)()); }
		GFxObject RespawnTxt() { mixin(MGPC!(GFxObject, 348)()); }
		GFxObject MapTxt() { mixin(MGPC!(GFxObject, 344)()); }
		GFxObject TimeTxt() { mixin(MGPC!(GFxObject, 340)()); }
		GFxObject ScoreTxt() { mixin(MGPC!(GFxObject, 336)()); }
		GFxObject OpponentsTxt() { mixin(MGPC!(GFxObject, 332)()); }
		GFxObject BotLvlTxt() { mixin(MGPC!(GFxObject, 328)()); }
		GFxObject GameTitleTxt() { mixin(MGPC!(GFxObject, 324)()); }
		GFxObject MapNameTxt() { mixin(MGPC!(GFxObject, 320)()); }
		GFxObject MapImageMC() { mixin(MGPC!(GFxObject, 316)()); }
		GFxObject MenuMC() { mixin(MGPC!(GFxObject, 312)()); }
		GFxObject ListDataProvider() { mixin(MGPC!(GFxObject, 308)()); }
		GFxClikWidget ListMC() { mixin(MGPC!(GFxClikWidget, 304)()); }
		ScriptString DefaultGameModePrefixes() { mixin(MGPC!(ScriptString, 280)()); }
		ScriptString DefaultMapImage() { mixin(MGPC!(ScriptString, 268)()); }
		ScriptString DefaultGameModeSettings() { mixin(MGPC!(ScriptString, 256)()); }
		ScriptString DefaultGameMode() { mixin(MGPC!(ScriptString, 244)()); }
		ScriptString DefaultMapName() { mixin(MGPC!(ScriptString, 232)()); }
		UTUIDataStore_MenuItems MenuDataStore() { mixin(MGPC!(UTUIDataStore_MenuItems, 228)()); }
		UTUIDataStore_StringList StringListDataStore() { mixin(MGPC!(UTUIDataStore_StringList, 224)()); }
		UIDataStore_OnlineGameSettings SettingsDataStore() { mixin(MGPC!(UIDataStore_OnlineGameSettings, 220)()); }
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
