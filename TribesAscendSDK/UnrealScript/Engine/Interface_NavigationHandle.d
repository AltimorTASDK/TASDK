module UnrealScript.Engine.Interface_NavigationHandle;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface Interface_NavigationHandle : UInterface
{
	final void NotifyPathChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18349], cast(void*)0, cast(void*)0);
	}
}
