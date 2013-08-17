module UnrealScript.Engine.NxForceFieldGeneric;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ForceFieldShape;

extern(C++) interface NxForceFieldGeneric : NxForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxForceFieldGeneric")); }
	private static __gshared NxForceFieldGeneric mDefaultProperties;
	@property final static NxForceFieldGeneric DefaultProperties() { mixin(MGDPC("NxForceFieldGeneric", "NxForceFieldGeneric Engine.Default__NxForceFieldGeneric")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mDoInitRBPhys;
		public @property static final ScriptFunction DoInitRBPhys() { mixin(MGF("mDoInitRBPhys", "Function Engine.NxForceFieldGeneric.DoInitRBPhys")); }
	}
	enum FFG_ForceFieldCoordinates : ubyte
	{
		FFG_CARTESIAN = 0,
		FFG_SPHERICAL = 1,
		FFG_CYLINDRICAL = 2,
		FFG_TOROIDAL = 3,
		FFG_MAX = 4,
	}
	@property final auto ref
	{
		UObject.Pointer LinearKernel() { mixin(MGPC("UObject.Pointer", 712)); }
		float TorusRadius() { mixin(MGPC("float", 708)); }
		Vector FalloffQuadratic() { mixin(MGPC("Vector", 696)); }
		Vector FalloffLinear() { mixin(MGPC("Vector", 684)); }
		Vector Noise() { mixin(MGPC("Vector", 672)); }
		Vector VelocityTarget() { mixin(MGPC("Vector", 660)); }
		Vector VelocityMultiplierZ() { mixin(MGPC("Vector", 648)); }
		Vector VelocityMultiplierY() { mixin(MGPC("Vector", 636)); }
		Vector VelocityMultiplierX() { mixin(MGPC("Vector", 624)); }
		Vector PositionTarget() { mixin(MGPC("Vector", 612)); }
		Vector PositionMultiplierZ() { mixin(MGPC("Vector", 600)); }
		Vector PositionMultiplierY() { mixin(MGPC("Vector", 588)); }
		Vector PositionMultiplierX() { mixin(MGPC("Vector", 576)); }
		Vector Constant() { mixin(MGPC("Vector", 564)); }
		NxForceFieldGeneric.FFG_ForceFieldCoordinates Coordinates() { mixin(MGPC("NxForceFieldGeneric.FFG_ForceFieldCoordinates", 560)); }
		ForceFieldShape Shape() { mixin(MGPC("ForceFieldShape", 540)); }
		float RoughExtentZ() { mixin(MGPC("float", 556)); }
		float RoughExtentY() { mixin(MGPC("float", 552)); }
		float RoughExtentX() { mixin(MGPC("float", 548)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DrawComponent'!
	}
	final void DoInitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoInitRBPhys, cast(void*)0, cast(void*)0);
	}
}
