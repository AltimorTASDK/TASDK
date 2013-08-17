module UnrealScript.Engine.NxForceFieldRadial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface NxForceFieldRadial : NxForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxForceFieldRadial")); }
	private static __gshared NxForceFieldRadial mDefaultProperties;
	@property final static NxForceFieldRadial DefaultProperties() { mixin(MGDPC("NxForceFieldRadial", "NxForceFieldRadial Engine.Default__NxForceFieldRadial")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoInitRBPhys;
		public @property static final ScriptFunction DoInitRBPhys() { mixin(MGF("mDoInitRBPhys", "Function Engine.NxForceFieldRadial.DoInitRBPhys")); }
	}
	@property final auto ref
	{
		UObject.Pointer Kernel() { mixin(MGPC("UObject.Pointer", 564)); }
		PrimitiveComponent.ERadialImpulseFalloff ForceFalloff() { mixin(MGPC("PrimitiveComponent.ERadialImpulseFalloff", 560)); }
		float SelfRotationStrength() { mixin(MGPC("float", 556)); }
		float ForceRadius() { mixin(MGPC("float", 552)); }
		float ForceStrength() { mixin(MGPC("float", 548)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DrawComponent'!
		ForceFieldShape Shape() { mixin(MGPC("ForceFieldShape", 540)); }
	}
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
}
