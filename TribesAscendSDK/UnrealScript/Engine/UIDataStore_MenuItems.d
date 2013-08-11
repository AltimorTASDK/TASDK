module UnrealScript.Engine.UIDataStore_MenuItems;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore_GameResource;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_MenuItem;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataStore_MenuItems : UIDataStore_GameResource
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(UIDataProvider_MenuItem) DynamicProviders() { return *cast(ScriptArray!(UIDataProvider_MenuItem)*)(cast(size_t)cast(void*)this + 264); }
		UObject.MultiMap_Mirror OptionProviders() { return *cast(UObject.MultiMap_Mirror*)(cast(size_t)cast(void*)this + 204); }
		ScriptName CurrentGameSettingsTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 196); }
	}
final:
	void ClearSet(ScriptName SetName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28607], params.ptr, cast(void*)0);
	}
	void AppendToSet(ScriptName SetName, int NumOptions)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		*cast(int*)&params[8] = NumOptions;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28609], params.ptr, cast(void*)0);
	}
	void GetSet(ScriptName SetName, ScriptArray!(UIDataProvider_MenuItem)* OutProviders)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		*cast(ScriptArray!(UIDataProvider_MenuItem)*)&params[8] = *OutProviders;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28612], params.ptr, cast(void*)0);
		*OutProviders = *cast(ScriptArray!(UIDataProvider_MenuItem)*)&params[8];
	}
	void OnGameSettingsChanged(UIDataProvider SourceProvider, ScriptName PropTag)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataProvider*)params.ptr = SourceProvider;
		*cast(ScriptName*)&params[4] = PropTag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28616], params.ptr, cast(void*)0);
	}
	void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28620], params.ptr, cast(void*)0);
	}
	void Unregistered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28623], params.ptr, cast(void*)0);
	}
}
