module UnrealScript.UTGame.GFxUDKFrontEnd_ServerSettings;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_SettingsBase;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_ServerSettings : GFxUDKFrontEnd_SettingsBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.GFxUDKFrontEnd_ServerSettings")); }
	private static __gshared GFxUDKFrontEnd_ServerSettings mDefaultProperties;
	@property final static GFxUDKFrontEnd_ServerSettings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxUDKFrontEnd_ServerSettings)("GFxUDKFrontEnd_ServerSettings UTGame.Default__GFxUDKFrontEnd_ServerSettings")); }
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
			ScriptFunction SetSelectedOptionSet() { return mSetSelectedOptionSet ? mSetSelectedOptionSet : (mSetSelectedOptionSet = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ServerSettings.SetSelectedOptionSet")); }
			ScriptFunction OnOptionChanged() { return mOnOptionChanged ? mOnOptionChanged : (mOnOptionChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ServerSettings.OnOptionChanged")); }
			ScriptFunction SaveState() { return mSaveState ? mSaveState : (mSaveState = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ServerSettings.SaveState")); }
			ScriptFunction UpdateListDataProvider() { return mUpdateListDataProvider ? mUpdateListDataProvider : (mUpdateListDataProvider = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ServerSettings.UpdateListDataProvider")); }
			ScriptFunction PopulateOptionDataProviderForIndex() { return mPopulateOptionDataProviderForIndex ? mPopulateOptionDataProviderForIndex : (mPopulateOptionDataProviderForIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ServerSettings.PopulateOptionDataProviderForIndex")); }
			ScriptFunction FindControlByUTClassName() { return mFindControlByUTClassName ? mFindControlByUTClassName : (mFindControlByUTClassName = ScriptObject.Find!(ScriptFunction)("Function UTGame.GFxUDKFrontEnd_ServerSettings.FindControlByUTClassName")); }
		}
	}
	@property final
	{
		bool bDataChangedByReqs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
		bool bDataChangedByReqs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
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
	ScriptString FindControlByUTClassName(ubyte UTUIControlClass)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = UTUIControlClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindControlByUTClassName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
