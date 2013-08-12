module UnrealScript.UTGame.GFxUDKFrontEnd_Settings;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_SettingsBase;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_Settings : GFxUDKFrontEnd_SettingsBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_Settings")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetSelectedOptionSet;
			ScriptFunction mUpdateListDataProvider;
			ScriptFunction mPopulateOptionDataProviderForIndex;
		}
		public @property static final
		{
			ScriptFunction SetSelectedOptionSet() { return mSetSelectedOptionSet ? mSetSelectedOptionSet : (mSetSelectedOptionSet = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Settings.SetSelectedOptionSet")); }
			ScriptFunction UpdateListDataProvider() { return mUpdateListDataProvider ? mUpdateListDataProvider : (mUpdateListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Settings.UpdateListDataProvider")); }
			ScriptFunction PopulateOptionDataProviderForIndex() { return mPopulateOptionDataProviderForIndex ? mPopulateOptionDataProviderForIndex : (mPopulateOptionDataProviderForIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_Settings.PopulateOptionDataProviderForIndex")); }
		}
	}
final:
	void SetSelectedOptionSet()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSelectedOptionSet, cast(void*)0, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateListDataProvider, cast(void*)0, cast(void*)0);
	}
	void PopulateOptionDataProviderForIndex(int Index, GFxObject* OutDataProvider, ScriptString* OutDefaultValue, int* OutDefaultIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject*)&params[4] = *OutDataProvider;
		*cast(ScriptString*)&params[8] = *OutDefaultValue;
		*cast(int*)&params[20] = *OutDefaultIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopulateOptionDataProviderForIndex, params.ptr, cast(void*)0);
		*OutDataProvider = *cast(GFxObject*)&params[4];
		*OutDefaultValue = *cast(ScriptString*)&params[8];
		*OutDefaultIndex = *cast(int*)&params[20];
	}
}
