module UnrealScript.Engine.NxGenericForceField;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxForceField;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NxForceFieldGeneric;

extern(C++) interface NxGenericForceField : NxForceField
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxGenericForceField")); }
	private static __gshared NxGenericForceField mDefaultProperties;
	@property final static NxGenericForceField DefaultProperties() { mixin(MGDPC("NxGenericForceField", "NxGenericForceField Engine.Default__NxGenericForceField")); }
	@property final auto ref
	{
		Pointer LinearKernel() { mixin(MGPC("Pointer", 692)); }
		float TorusRadius() { mixin(MGPC("float", 688)); }
		Vector FalloffQuadratic() { mixin(MGPC("Vector", 676)); }
		Vector FalloffLinear() { mixin(MGPC("Vector", 664)); }
		Vector Noise() { mixin(MGPC("Vector", 652)); }
		Vector VelocityTarget() { mixin(MGPC("Vector", 640)); }
		Vector VelocityMultiplierZ() { mixin(MGPC("Vector", 628)); }
		Vector VelocityMultiplierY() { mixin(MGPC("Vector", 616)); }
		Vector VelocityMultiplierX() { mixin(MGPC("Vector", 604)); }
		Vector PositionTarget() { mixin(MGPC("Vector", 592)); }
		Vector PositionMultiplierZ() { mixin(MGPC("Vector", 580)); }
		Vector PositionMultiplierY() { mixin(MGPC("Vector", 568)); }
		Vector PositionMultiplierX() { mixin(MGPC("Vector", 556)); }
		Vector Constant() { mixin(MGPC("Vector", 544)); }
		NxForceFieldGeneric.FFG_ForceFieldCoordinates Coordinates() { mixin(MGPC("NxForceFieldGeneric.FFG_ForceFieldCoordinates", 540)); }
	}
}
