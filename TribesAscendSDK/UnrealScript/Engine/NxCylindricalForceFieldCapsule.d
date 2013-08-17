module UnrealScript.Engine.NxCylindricalForceFieldCapsule;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxCylindricalForceField;

extern(C++) interface NxCylindricalForceFieldCapsule : NxCylindricalForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NxCylindricalForceFieldCapsule")()); }
	private static __gshared NxCylindricalForceFieldCapsule mDefaultProperties;
	@property final static NxCylindricalForceFieldCapsule DefaultProperties() { mixin(MGDPC!(NxCylindricalForceFieldCapsule, "NxCylindricalForceFieldCapsule Engine.Default__NxCylindricalForceFieldCapsule")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoInitRBPhys;
		public @property static final ScriptFunction DoInitRBPhys() { mixin(MGF!("mDoInitRBPhys", "Function Engine.NxCylindricalForceFieldCapsule.DoInitRBPhys")()); }
	}
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RenderComponent'!
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
}
