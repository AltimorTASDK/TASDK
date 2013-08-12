module UnrealScript.Engine.NxRadialForceField;

import ScriptClasses;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NxRadialForceField : NxForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NxRadialForceField")); }
	private static __gshared NxRadialForceField mDefaultProperties;
	@property final static NxRadialForceField DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NxRadialForceField)("NxRadialForceField Engine.Default__NxRadialForceField")); }
	@property final auto ref
	{
		UObject.Pointer LinearKernel() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 556); }
		PrimitiveComponent.ERadialImpulseFalloff ForceFalloff() { return *cast(PrimitiveComponent.ERadialImpulseFalloff*)(cast(size_t)cast(void*)this + 552); }
		float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
		float ForceStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
	}
}
