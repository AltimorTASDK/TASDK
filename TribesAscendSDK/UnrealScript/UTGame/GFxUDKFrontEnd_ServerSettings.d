module UnrealScript.UTGame.GFxUDKFrontEnd_ServerSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_SettingsBase;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_ServerSettings : GFxUDKFrontEnd_SettingsBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_ServerSettings")()); }
	private static __gshared GFxUDKFrontEnd_ServerSettings mDefaultProperties;
	@property final static GFxUDKFrontEnd_ServerSettings DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_ServerSettings, "GFxUDKFrontEnd_ServerSettings UTGame.Default__GFxUDKFrontEnd_ServerSettings")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetSelectedOptionSet;
			ScriptFunction mOnOptionChanged;
			ScriptFunction mSaveState;
			ScriptFunction mUpdateListDataProvider;
			ScriptFunction mPopulateOptionDataProviderForIndex;
			ScriptFunction mFindControlByUTClassName;
		}
		public @property static final
		{
			ScriptFunction SetSelectedOptionSet() { mixin(MGF!("mSetSelectedOptionSet", "Function UTGame.GFxUDKFrontEnd_ServerSettings.SetSelectedOptionSet")()); }
			ScriptFunction OnOptionChanged() { mixin(MGF!("mOnOptionChanged", "Function UTGame.GFxUDKFrontEnd_ServerSettings.OnOptionChanged")()); }
			ScriptFunction SaveState() { mixin(MGF!("mSaveState", "Function UTGame.GFxUDKFrontEnd_ServerSettings.SaveState")()); }
			ScriptFunction UpdateListDataProvider() { mixin(MGF!("mUpdateListDataProvider", "Function UTGame.GFxUDKFrontEnd_ServerSettings.UpdateListDataProvider")()); }
			ScriptFunction PopulateOptionDataProviderForIndex() { mixin(MGF!("mPopulateOptionDataProviderForIndex", "Function UTGame.GFxUDKFrontEnd_ServerSettings.PopulateOptionDataProviderForIndex")()); }
			ScriptFunction FindControlByUTClassName() { mixin(MGF!("mFindControlByUTClassName", "Function UTGame.GFxUDKFrontEnd_ServerSettings.FindControlByUTClassName")()); }
		}
	}
	@property final
	{
		bool bDataChangedByReqs() { mixin(MGBPC!(260, 0x1)()); }
		bool bDataChangedByReqs(bool val) { mixin(MSBPC!(260, 0x1)()); }
	}
final:
	void SetSelectedOptionSet()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSelectedOptionSet, cast(void*)0, cast(void*)0);
	}
	void OnOptionChanged(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnOptionChanged, params.ptr, cast(void*)0);
	}
	void SaveState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SaveState, cast(void*)0, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateListDataProvider, cast(void*)0, cast(void*)0);
	}
	void PopulateOptionDataProviderForIndex(const int Index, ref GFxObject OutDataProvider, ref ScriptString OutDefaultValue, ref int OutDefaultIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject*)&params[4] = OutDataProvider;
		*cast(ScriptString*)&params[8] = OutDefaultValue;
		*cast(int*)&params[20] = OutDefaultIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopulateOptionDataProviderForIndex, params.ptr, cast(void*)0);
		*OutDataProvider = *cast(GFxObject*)&params[4];
		*OutDefaultValue = *cast(ScriptString*)&params[8];
		*OutDefaultIndex = *cast(int*)&params[20];
	}
	ScriptString FindControlByUTClassName(ubyte UTUIControlClass)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = UTUIControlClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindControlByUTClassName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
