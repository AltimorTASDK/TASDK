module UnrealScript.Engine.NxCylindricalForceFieldCapsule;

import ScriptClasses;
import UnrealScript.Engine.NxCylindricalForceField;

extern(C++) interface NxCylindricalForceFieldCapsule : NxCylindricalForceField
{
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[21147], cast(void*)0, cast(void*)0);
	}
}
