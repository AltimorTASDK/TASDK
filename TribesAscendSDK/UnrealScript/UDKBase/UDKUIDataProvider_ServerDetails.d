module UnrealScript.UDKBase.UDKUIDataProvider_ServerDetails;

import ScriptClasses;
import UnrealScript.UDKBase.UDKUIDataProvider_SimpleElementProvider;
import UnrealScript.Engine.UIDataProvider_Settings;

extern(C++) interface UDKUIDataProvider_ServerDetails : UDKUIDataProvider_SimpleElementProvider
{
public extern(D):
	@property final auto ref int SearchResultsRow() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
final:
	UIDataProvider_Settings GetSearchResultsProvider()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35588], params.ptr, cast(void*)0);
		return *cast(UIDataProvider_Settings*)params.ptr;
	}
	int GetElementCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35590], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
