module UnrealScript.Engine.NxGenericForceFieldBox;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxGenericForceField;

extern(C++) interface NxGenericForceFieldBox : NxGenericForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NxGenericForceFieldBox")()); }
	private static __gshared NxGenericForceFieldBox mDefaultProperties;
	@property final static NxGenericForceFieldBox DefaultProperties() { mixin(MGDPC!(NxGenericForceFieldBox, "NxGenericForceFieldBox Engine.Default__NxGenericForceFieldBox")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoInitRBPhys;
		public @property static final ScriptFunction DoInitRBPhys() { mixin(MGF!("mDoInitRBPhys", "Function Engine.NxGenericForceFieldBox.DoInitRBPhys")()); }
	}
	@property final auto ref
	{
		Vector BoxExtent() { mixin(MGPC!(Vector, 700)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RenderComponent'!
	}
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
}
