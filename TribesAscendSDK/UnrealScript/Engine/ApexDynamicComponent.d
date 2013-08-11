module UnrealScript.Engine.ApexDynamicComponent;

import UnrealScript.Engine.ApexComponentBase;
import UnrealScript.Core.UObject;

extern(C++) interface ApexDynamicComponent : ApexComponentBase
{
	public @property final auto ref UObject.Pointer ComponentDynamicResources() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 520); }
}
