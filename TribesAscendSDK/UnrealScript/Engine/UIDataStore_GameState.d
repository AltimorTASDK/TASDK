module UnrealScript.Engine.UIDataStore_GameState;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_GameState : UIDataStore
{
	final void OnRefreshDataFieldValue()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28557], cast(void*)0, cast(void*)0);
	}
	final bool NotifyGameSessionEnded()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28559], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
