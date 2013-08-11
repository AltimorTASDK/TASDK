module UnrealScript.UTGame.GFxUDKFrontEnd_ServerSettings;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_SettingsBase;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_ServerSettings : GFxUDKFrontEnd_SettingsBase
{
	public @property final bool bDataChangedByReqs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
	public @property final bool bDataChangedByReqs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
	final void SetSelectedOptionSet()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39027], cast(void*)0, cast(void*)0);
	}
	final void OnOptionChanged(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39028], params.ptr, cast(void*)0);
	}
	final void SaveState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39033], cast(void*)0, cast(void*)0);
	}
	final void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39043], cast(void*)0, cast(void*)0);
	}
	final void PopulateOptionDataProviderForIndex(int Index, GFxObject* OutDataProvider, ScriptString* OutDefaultValue, int* OutDefaultIndex)
	{
		ubyte params[24];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(GFxObject*)&params[4] = *OutDataProvider;
		*cast(ScriptString*)&params[8] = *OutDefaultValue;
		*cast(int*)&params[20] = *OutDefaultIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39051], params.ptr, cast(void*)0);
		*OutDataProvider = *cast(GFxObject*)&params[4];
		*OutDefaultValue = *cast(ScriptString*)&params[8];
		*OutDefaultIndex = *cast(int*)&params[20];
	}
	final ScriptString FindControlByUTClassName(ubyte UTUIControlClass)
	{
		ubyte params[13];
		params[] = 0;
		params[0] = UTUIControlClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39061], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
