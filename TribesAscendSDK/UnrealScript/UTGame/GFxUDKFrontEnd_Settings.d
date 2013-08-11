module UnrealScript.UTGame.GFxUDKFrontEnd_Settings;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_SettingsBase;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_Settings : GFxUDKFrontEnd_SettingsBase
{
	final void SetSelectedOptionSet()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39065], cast(void*)0, cast(void*)0);
	}
	final void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39066], cast(void*)0, cast(void*)0);
	}
	final void PopulateOptionDataProviderForIndex(int Index, GFxObject* OutDataProvider, ScriptString* OutDefaultValue, int* OutDefaultIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject*)&params[4] = *OutDataProvider;
		*cast(ScriptString*)&params[8] = *OutDefaultValue;
		*cast(int*)&params[20] = *OutDefaultIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39073], params.ptr, cast(void*)0);
		*OutDataProvider = *cast(GFxObject*)&params[4];
		*OutDefaultValue = *cast(ScriptString*)&params[8];
		*OutDefaultIndex = *cast(int*)&params[20];
	}
}
