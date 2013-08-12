module UnrealScript.Engine.NxCylindricalForceFieldCapsule;

import ScriptClasses;
import UnrealScript.Engine.NxCylindricalForceField;

extern(C++) interface NxCylindricalForceFieldCapsule : NxCylindricalForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxCylindricalForceFieldCapsule")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoInitRBPhys;
		public @property static final ScriptFunction DoInitRBPhys() { return mDoInitRBPhys ? mDoInitRBPhys : (mDoInitRBPhys = ScriptObject.Find!(ScriptFunction)("Function Engine.NxCylindricalForceFieldCapsule.DoInitRBPhys")); }
	}
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
}
