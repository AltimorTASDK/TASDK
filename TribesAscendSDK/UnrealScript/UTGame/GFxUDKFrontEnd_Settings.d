module UnrealScript.UTGame.GFxUDKFrontEnd_Settings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.GFxUDKFrontEnd_SettingsBase;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_Settings : GFxUDKFrontEnd_SettingsBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.GFxUDKFrontEnd_Settings")()); }
	private static __gshared GFxUDKFrontEnd_Settings mDefaultProperties;
	@property final static GFxUDKFrontEnd_Settings DefaultProperties() { mixin(MGDPC!(GFxUDKFrontEnd_Settings, "GFxUDKFrontEnd_Settings UTGame.Default__GFxUDKFrontEnd_Settings")()); }
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
			ScriptFunction SetSelectedOptionSet() { mixin(MGF!("mSetSelectedOptionSet", "Function UTGame.GFxUDKFrontEnd_Settings.SetSelectedOptionSet")()); }
			ScriptFunction UpdateListDataProvider() { mixin(MGF!("mUpdateListDataProvider", "Function UTGame.GFxUDKFrontEnd_Settings.UpdateListDataProvider")()); }
			ScriptFunction PopulateOptionDataProviderForIndex() { mixin(MGF!("mPopulateOptionDataProviderForIndex", "Function UTGame.GFxUDKFrontEnd_Settings.PopulateOptionDataProviderForIndex")()); }
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
	void PopulateOptionDataProviderForIndex(in int Index, ref GFxObject OutDataProvider, ref ScriptString OutDefaultValue, ref int OutDefaultIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = cast(int)Index;
		*cast(GFxObject*)&params[4] = OutDataProvider;
		*cast(ScriptString*)&params[8] = OutDefaultValue;
		*cast(int*)&params[20] = OutDefaultIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopulateOptionDataProviderForIndex, params.ptr, cast(void*)0);
		OutDataProvider = *cast(GFxObject*)&params[4];
		OutDefaultValue = *cast(ScriptString*)&params[8];
		OutDefaultIndex = *cast(int*)&params[20];
	}
}
