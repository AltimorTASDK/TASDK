module UnrealScript.UTGame.GFxUDKFrontEnd_Multiplayer;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.GFxUI.GFxObject;
import UnrealScript.GFxUI.GFxClikWidget;

extern(C++) interface GFxUDKFrontEnd_Multiplayer : GFxUDKFrontEnd_Screen
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_Multiplayer")); }
	private static __gshared GFxUDKFrontEnd_Multiplayer mDefaultProperties;
	@property final static GFxUDKFrontEnd_Multiplayer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxUDKFrontEnd_Multiplayer)("GFxUDKFrontEnd_Multiplayer UTGame.Default__GFxUDKFrontEnd_Multiplayer")); }
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
			ScriptFunction OnViewLoaded() { return mOnViewLoaded ? mOnViewLoaded : (mOnViewLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Multiplayer.OnViewLoaded")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Multiplayer.OnTopMostView")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Multiplayer.DisableSubComponents")); }
			ScriptFunction Select_JoinGame() { return mSelect_JoinGame ? mSelect_JoinGame : (mSelect_JoinGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Multiplayer.Select_JoinGame")); }
			ScriptFunction Select_HostGame() { return mSelect_HostGame ? mSelect_HostGame : (mSelect_HostGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Multiplayer.Select_HostGame")); }
			ScriptFunction OnListItemPress() { return mOnListItemPress ? mOnListItemPress : (mOnListItemPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Multiplayer.OnListItemPress")); }
			ScriptFunction OnListChange() { return mOnListChange ? mOnListChange : (mOnListChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Multiplayer.OnListChange")); }
			ScriptFunction UpdateDescription() { return mUpdateDescription ? mUpdateDescription : (mUpdateDescription = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Multiplayer.UpdateDescription")); }
			ScriptFunction UpdateListDataProvider() { return mUpdateListDataProvider ? mUpdateListDataProvider : (mUpdateListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Multiplayer.UpdateListDataProvider")); }
			ScriptFunction SetList() { return mSetList ? mSetList : (mSetList = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Multiplayer.SetList")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Multiplayer.WidgetInitialized")); }
		}
	}
	struct Option
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.GFxUDKFrontEnd_Multiplayer.Option")); }
		@property final auto ref
		{
			ScriptString OptionDesc() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
			ScriptString OptionLabel() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString OptionName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(GFxUDKFrontEnd_Multiplayer.Option) ListOptions() { return *cast(ScriptArray!(GFxUDKFrontEnd_Multiplayer.Option)*)(cast(size_t)cast(void*)this + 220); }
		GFxObject MenuMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 240); }
		GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 236); }
		GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 232); }
	}
final:
	void OnViewLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnViewLoaded, cast(void*)0, cast(void*)0);
	}
	void OnTopMostView(bool bPlayOpenAnimation)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPlayOpenAnimation;
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
