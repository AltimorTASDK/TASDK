module UnrealScript.UTGame.GFxUDKFrontEnd_Multiplayer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_Multiplayer : GFxUDKFrontEnd_Screen
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_Multiplayer")()); }
	private static __gshared GFxUDKFrontEnd_Multiplayer mDefaultProperties;
	@property final static GFxUDKFrontEnd_Multiplayer DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_Multiplayer, "GFxUDKFrontEnd_Multiplayer UTGame.Default__GFxUDKFrontEnd_Multiplayer")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnViewLoaded;
			ScriptFunction mOnTopMostView;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mSelect_JoinGame;
			ScriptFunction mSelect_HostGame;
			ScriptFunction mOnListItemPress;
			ScriptFunction mOnListChange;
			ScriptFunction mUpdateDescription;
			ScriptFunction mUpdateListDataProvider;
			ScriptFunction mSetList;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction OnViewLoaded() { mixin(MGF!("mOnViewLoaded", "Function UTGame.GFxUDKFrontEnd_Multiplayer.OnViewLoaded")()); }
			ScriptFunction OnTopMostView() { mixin(MGF!("mOnTopMostView", "Function UTGame.GFxUDKFrontEnd_Multiplayer.OnTopMostView")()); }
			ScriptFunction DisableSubComponents() { mixin(MGF!("mDisableSubComponents", "Function UTGame.GFxUDKFrontEnd_Multiplayer.DisableSubComponents")()); }
			ScriptFunction Select_JoinGame() { mixin(MGF!("mSelect_JoinGame", "Function UTGame.GFxUDKFrontEnd_Multiplayer.Select_JoinGame")()); }
			ScriptFunction Select_HostGame() { mixin(MGF!("mSelect_HostGame", "Function UTGame.GFxUDKFrontEnd_Multiplayer.Select_HostGame")()); }
			ScriptFunction OnListItemPress() { mixin(MGF!("mOnListItemPress", "Function UTGame.GFxUDKFrontEnd_Multiplayer.OnListItemPress")()); }
			ScriptFunction OnListChange() { mixin(MGF!("mOnListChange", "Function UTGame.GFxUDKFrontEnd_Multiplayer.OnListChange")()); }
			ScriptFunction UpdateDescription() { mixin(MGF!("mUpdateDescription", "Function UTGame.GFxUDKFrontEnd_Multiplayer.UpdateDescription")()); }
			ScriptFunction UpdateListDataProvider() { mixin(MGF!("mUpdateListDataProvider", "Function UTGame.GFxUDKFrontEnd_Multiplayer.UpdateListDataProvider")()); }
			ScriptFunction SetList() { mixin(MGF!("mSetList", "Function UTGame.GFxUDKFrontEnd_Multiplayer.SetList")()); }
			ScriptFunction WidgetInitialized() { mixin(MGF!("mWidgetInitialized", "Function UTGame.GFxUDKFrontEnd_Multiplayer.WidgetInitialized")()); }
		}
	}
	struct Option
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.GFxUDKFrontEnd_Multiplayer.Option")()); }
		@property final auto ref
		{
			ScriptString OptionDesc() { mixin(MGPS!("ScriptString", 24)()); }
			ScriptString OptionLabel() { mixin(MGPS!("ScriptString", 12)()); }
			ScriptString OptionName() { mixin(MGPS!("ScriptString", 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(GFxUDKFrontEnd_Multiplayer.Option) ListOptions() { mixin(MGPC!("ScriptArray!(GFxUDKFrontEnd_Multiplayer.Option)", 220)()); }
		GFxObject MenuMC() { mixin(MGPC!("GFxObject", 240)()); }
		GFxObject ListDataProvider() { mixin(MGPC!("GFxObject", 236)()); }
		GFxClikWidget ListMC() { mixin(MGPC!("GFxClikWidget", 232)()); }
	}
final:
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewLoaded, cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool* bPlayOpenAnimation = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bPlayOpenAnimation !is null)
			*cast(bool*)params.ptr = *bPlayOpenAnimation;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTopMostView, params.ptr, cast(void*)0);
	}
	void DisableSubComponents(bool bDisableComponents)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bDisableComponents;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableSubComponents, params.ptr, cast(void*)0);
	}
	void Select_JoinGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_JoinGame, cast(void*)0, cast(void*)0);
	}
	void Select_HostGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_HostGame, cast(void*)0, cast(void*)0);
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
	void SetList(GFxObject InList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = InList;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetList, params.ptr, cast(void*)0);
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
}
