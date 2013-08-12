module UnrealScript.UTGame.GFxUDKFrontEnd_MainMenu;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_Screen;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_MainMenu : GFxUDKFrontEnd_Screen
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_MainMenu")); }
	private static __gshared GFxUDKFrontEnd_MainMenu mDefaultProperties;
	@property final static GFxUDKFrontEnd_MainMenu DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxUDKFrontEnd_MainMenu)("GFxUDKFrontEnd_MainMenu UTGame.Default__GFxUDKFrontEnd_MainMenu")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnViewLoaded;
			ScriptFunction mOnTopMostView;
			ScriptFunction mDisableSubComponents;
			ScriptFunction mSelect_InstantAction;
			ScriptFunction mSelect_Multiplayer;
			ScriptFunction mSelect_ExitGame;
			ScriptFunction mExitDialog_SelectOK;
			ScriptFunction mExitDialog_SelectBack;
			ScriptFunction mOnListItemPress;
			ScriptFunction mOnListChange;
			ScriptFunction mUpdateDescription;
			ScriptFunction mUpdateListDataProvider;
			ScriptFunction mSetList;
			ScriptFunction mOnEscapeKeyPress;
			ScriptFunction mWidgetInitialized;
		}
		public @property static final
		{
			ScriptFunction OnViewLoaded() { return mOnViewLoaded ? mOnViewLoaded : (mOnViewLoaded = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.OnViewLoaded")); }
			ScriptFunction OnTopMostView() { return mOnTopMostView ? mOnTopMostView : (mOnTopMostView = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.OnTopMostView")); }
			ScriptFunction DisableSubComponents() { return mDisableSubComponents ? mDisableSubComponents : (mDisableSubComponents = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.DisableSubComponents")); }
			ScriptFunction Select_InstantAction() { return mSelect_InstantAction ? mSelect_InstantAction : (mSelect_InstantAction = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.Select_InstantAction")); }
			ScriptFunction Select_Multiplayer() { return mSelect_Multiplayer ? mSelect_Multiplayer : (mSelect_Multiplayer = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.Select_Multiplayer")); }
			ScriptFunction Select_ExitGame() { return mSelect_ExitGame ? mSelect_ExitGame : (mSelect_ExitGame = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.Select_ExitGame")); }
			ScriptFunction ExitDialog_SelectOK() { return mExitDialog_SelectOK ? mExitDialog_SelectOK : (mExitDialog_SelectOK = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.ExitDialog_SelectOK")); }
			ScriptFunction ExitDialog_SelectBack() { return mExitDialog_SelectBack ? mExitDialog_SelectBack : (mExitDialog_SelectBack = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.ExitDialog_SelectBack")); }
			ScriptFunction OnListItemPress() { return mOnListItemPress ? mOnListItemPress : (mOnListItemPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.OnListItemPress")); }
			ScriptFunction OnListChange() { return mOnListChange ? mOnListChange : (mOnListChange = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.OnListChange")); }
			ScriptFunction UpdateDescription() { return mUpdateDescription ? mUpdateDescription : (mUpdateDescription = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.UpdateDescription")); }
			ScriptFunction UpdateListDataProvider() { return mUpdateListDataProvider ? mUpdateListDataProvider : (mUpdateListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.UpdateListDataProvider")); }
			ScriptFunction SetList() { return mSetList ? mSetList : (mSetList = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.SetList")); }
			ScriptFunction OnEscapeKeyPress() { return mOnEscapeKeyPress ? mOnEscapeKeyPress : (mOnEscapeKeyPress = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.OnEscapeKeyPress")); }
			ScriptFunction WidgetInitialized() { return mWidgetInitialized ? mWidgetInitialized : (mWidgetInitialized = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_MainMenu.WidgetInitialized")); }
		}
	}
	struct Option
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct UTGame.GFxUDKFrontEnd_MainMenu.Option")); }
		@property final auto ref
		{
			ScriptString OptionDesc() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
			ScriptString OptionLabel() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			ScriptString OptionName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		GFxClikWidget ListMC() { return *cast(GFxClikWidget*)(cast(size_t)cast(void*)this + 232); }
		ScriptArray!(GFxUDKFrontEnd_MainMenu.Option) ListOptions() { return *cast(ScriptArray!(GFxUDKFrontEnd_MainMenu.Option)*)(cast(size_t)cast(void*)this + 220); }
		ubyte LastSelectedIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 248); }
		GFxObject UserNameTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 244); }
		GFxObject UserLabelTxt() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 240); }
		GFxObject ListDataProvider() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 236); }
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
	void Select_InstantAction()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_InstantAction, cast(void*)0, cast(void*)0);
	}
	void Select_Multiplayer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_Multiplayer, cast(void*)0, cast(void*)0);
	}
	void Select_ExitGame()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Select_ExitGame, cast(void*)0, cast(void*)0);
	}
	void ExitDialog_SelectOK(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitDialog_SelectOK, params.ptr, cast(void*)0);
	}
	void ExitDialog_SelectBack(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.ExitDialog_SelectBack, params.ptr, cast(void*)0);
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
	void OnEscapeKeyPress()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEscapeKeyPress, cast(void*)0, cast(void*)0);
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
