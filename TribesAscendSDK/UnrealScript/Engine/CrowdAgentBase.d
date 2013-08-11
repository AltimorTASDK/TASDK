module UnrealScript.Engine.CrowdAgentBase;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface CrowdAgentBase : Actor
{
public extern(D):
	@property final auto ref UObject.Pointer VfTable_IInterface_NavigationHandle() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 476); }
	final void NotifyPathChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13599], cast(void*)0, cast(void*)0);
	}
}
