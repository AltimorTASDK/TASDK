module UnrealScript.Engine.NxGenericForceFieldBox;

import ScriptClasses;
import UnrealScript.Engine.NxGenericForceField;

extern(C++) interface NxGenericForceFieldBox : NxGenericForceField
{
	public @property final auto ref Vector BoxExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 700); }
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21283], cast(void*)0, cast(void*)0);
	}
}
