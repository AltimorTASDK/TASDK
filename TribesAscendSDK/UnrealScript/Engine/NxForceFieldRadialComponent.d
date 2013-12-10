module UnrealScript.Engine.NxForceFieldRadialComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxForceFieldComponent;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NxForceFieldRadialComponent : NxForceFieldComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxForceFieldRadialComponent")); }
	private static __gshared NxForceFieldRadialComponent mDefaultProperties;
	@property final static NxForceFieldRadialComponent DefaultProperties() { mixin(MGDPC("NxForceFieldRadialComponent", "NxForceFieldRadialComponent Engine.Default__NxForceFieldRadialComponent")); }
	@property final auto ref
	{
		Pointer Kernel() { mixin(MGPC("Pointer", 584)); }
		PrimitiveComponent.ERadialImpulseFalloff ForceFalloff() { mixin(MGPC("PrimitiveComponent.ERadialImpulseFalloff", 580)); }
		float SelfRotationStrength() { mixin(MGPC("float", 576)); }
		float ForceRadius() { mixin(MGPC("float", 572)); }
		float ForceStrength() { mixin(MGPC("float", 568)); }
	}
}
