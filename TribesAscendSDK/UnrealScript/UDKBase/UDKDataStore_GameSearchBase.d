module UnrealScript.UDKBase.UDKDataStore_GameSearchBase;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_OnlineGameSearch;
import UnrealScript.UDKBase.UDKUIDataProvider_ServerDetails;

extern(C++) interface UDKDataStore_GameSearchBase : UIDataStore_OnlineGameSearch
{
	public @property final auto ref UDKUIDataProvider_ServerDetails ServerDetailsProvider() { return *cast(UDKUIDataProvider_ServerDetails*)(cast(size_t)cast(void*)this + 168); }
	final bool GetEnabledMutators(ScriptArray!(int)* MutatorIndices)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptArray!(int)*)params.ptr = *MutatorIndices;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34756], params.ptr, cast(void*)0);
		*MutatorIndices = *cast(ScriptArray!(int)*)params.ptr;
		return *cast(bool*)&params[12];
	}
	final void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34760], cast(void*)0, cast(void*)0);
	}
	final bool SubmitGameSearch(ubyte ControllerIndex, bool bInvalidateExistingSearchResults)
	{
		ubyte params[9];
		params[] = 0;
		params[0] = ControllerIndex;
		*cast(bool*)&params[4] = bInvalidateExistingSearchResults;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34761], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void OnSearchComplete(bool bWasSuccessful)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bWasSuccessful;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34766], params.ptr, cast(void*)0);
	}
	final bool HasOutstandingQueries(bool bRestrictCheckToSelf)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bRestrictCheckToSelf;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34768], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool HasExistingSearchResults()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34773], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
