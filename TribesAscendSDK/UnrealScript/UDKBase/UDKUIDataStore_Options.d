module UnrealScript.UDKBase.UDKUIDataStore_Options;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_GameResource;
import UnrealScript.UDKBase.UDKUIResourceDataProvider;
import UnrealScript.Core.UObject;

extern(C++) interface UDKUIDataStore_Options : UIDataStore_GameResource
{
	public @property final auto ref ScriptArray!(UDKUIResourceDataProvider) DynamicProviders() { return *cast(ScriptArray!(UDKUIResourceDataProvider)*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref UObject.MultiMap_Mirror OptionProviders() { return *cast(UObject.MultiMap_Mirror*)(cast(size_t)cast(void*)this + 196); }
	final void ClearSet(ScriptName SetName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35645], params.ptr, cast(void*)0);
	}
	final void AppendToSet(ScriptName SetName, int NumOptions)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		*cast(int*)&params[8] = NumOptions;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35647], params.ptr, cast(void*)0);
	}
	final void GetSet(ScriptName SetName, ScriptArray!(UDKUIResourceDataProvider)* OutProviders)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		*cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[8] = *OutProviders;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35650], params.ptr, cast(void*)0);
		*OutProviders = *cast(ScriptArray!(UDKUIResourceDataProvider)*)&params[8];
	}
}
