module UnrealScript.Engine.NxGenericForceFieldBox;

import ScriptClasses;
import UnrealScript.Engine.NxGenericForceField;

extern(C++) interface NxGenericForceFieldBox : NxGenericForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxGenericForceFieldBox")); }
	private static __gshared NxGenericForceFieldBox mDefaultProperties;
	@property final static NxGenericForceFieldBox DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NxGenericForceFieldBox)("NxGenericForceFieldBox Engine.Default__NxGenericForceFieldBox")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoInitRBPhys;
		public @property static final ScriptFunction DoInitRBPhys() { return mDoInitRBPhys ? mDoInitRBPhys : (mDoInitRBPhys = ScriptObject.Find!(ScriptFunction)("Function Engine.NxGenericForceFieldBox.DoInitRBPhys")); }
	}
	@property final auto ref Vector BoxExtent() { return *cast(Vector*)(cast(size_t)cast(void*)this + 700); }
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
}
