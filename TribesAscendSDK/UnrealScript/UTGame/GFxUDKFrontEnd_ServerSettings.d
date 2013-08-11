module UnrealScript.UTGame.GFxUDKFrontEnd_ServerSettings;

import ScriptClasses;
import UnrealScript.UTGame.GFxUDKFrontEnd_SettingsBase;
import UnrealScript.GFxUI.GFxClikWidget;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxUDKFrontEnd_ServerSettings : GFxUDKFrontEnd_SettingsBase
{
public extern(D):
	@property final
	{
		bool bDataChangedByReqs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
		bool bDataChangedByReqs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
	}
final:
	void SetSelectedOptionSet()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39027], cast(void*)0, cast(void*)0);
	}
	void OnOptionChanged(GFxClikWidget.EventData ev)
	{
		ubyte params[36];
		params[] = 0;
		*cast(GFxClikWidget.EventData*)params.ptr = ev;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39028], params.ptr, cast(void*)0);
	}
	void SaveState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39033], cast(void*)0, cast(void*)0);
	}
	void UpdateListDataProvider()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39043], cast(void*)0, cast(void*)0);
	}
	void PopulateOptionDataProviderForIndex(int Index, GFxObject* OutDataProvider, ScriptString* OutDefaultValue, int* OutDefaultIndex)
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
	ScriptString FindControlByUTClassName(ubyte UTUIControlClass)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = UTUIControlClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[39061], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
