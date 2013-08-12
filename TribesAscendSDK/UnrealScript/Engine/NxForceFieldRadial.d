module UnrealScript.Engine.NxForceFieldRadial;

import ScriptClasses;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface NxForceFieldRadial : NxForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxForceFieldRadial")); }
	private static __gshared NxForceFieldRadial mDefaultProperties;
	@property final static NxForceFieldRadial DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NxForceFieldRadial)("NxForceFieldRadial Engine.Default__NxForceFieldRadial")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoInitRBPhys;
		public @property static final ScriptFunction DoInitRBPhys() { return mDoInitRBPhys ? mDoInitRBPhys : (mDoInitRBPhys = ScriptObject.Find!(ScriptFunction)("Function Engine.NxForceFieldRadial.DoInitRBPhys")); }
	}
	@property final auto ref
	{
		UObject.Pointer Kernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 564); }
		PrimitiveComponent.ERadialImpulseFalloff ForceFalloff() { return *cast(PrimitiveComponent.ERadialImpulseFalloff*)(cast(size_t)cast(void*)this + 560); }
		float SelfRotationStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
		float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
		float ForceStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
		ForceFieldShape Shape() { return *cast(ForceFieldShape*)(cast(size_t)cast(void*)this + 540); }
	}
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
}
