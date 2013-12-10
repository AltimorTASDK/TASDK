module UnrealScript.Engine.NxForceFieldTornado;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface NxForceFieldTornado : NxForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxForceFieldTornado")); }
	private static __gshared NxForceFieldTornado mDefaultProperties;
	@property final static NxForceFieldTornado DefaultProperties() { mixin(MGDPC("NxForceFieldTornado", "NxForceFieldTornado Engine.Default__NxForceFieldTornado")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoInitRBPhys;
		public @property static final ScriptFunction DoInitRBPhys() { mixin(MGF("mDoInitRBPhys", "Function Engine.NxForceFieldTornado.DoInitRBPhys")); }
	}
	@property final
	{
		auto ref
		{
			Pointer Kernel() { mixin(MGPC("Pointer", 592)); }
			float SelfRotationStrength() { mixin(MGPC("float", 588)); }
			float HeightOffset() { mixin(MGPC("float", 580)); }
			float ForceHeight() { mixin(MGPC("float", 576)); }
			float EscapeVelocity() { mixin(MGPC("float", 572)); }
			float LiftFalloffHeight() { mixin(MGPC("float", 568)); }
			float ForceTopRadius() { mixin(MGPC("float", 564)); }
			float ForceRadius() { mixin(MGPC("float", 560)); }
			float LiftStrength() { mixin(MGPC("float", 556)); }
			float RotationalStrength() { mixin(MGPC("float", 552)); }
			float RadialStrength() { mixin(MGPC("float", 548)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DrawComponent'!
			ForceFieldShape Shape() { mixin(MGPC("ForceFieldShape", 540)); }
		}
		bool BSpecialRadialForceMode() { mixin(MGBPC(584, 0x1)); }
		bool BSpecialRadialForceMode(bool val) { mixin(MSBPC(584, 0x1)); }
	}
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
}
