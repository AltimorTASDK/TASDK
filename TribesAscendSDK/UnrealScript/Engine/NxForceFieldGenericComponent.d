module UnrealScript.Engine.NxForceFieldGenericComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NxForceFieldComponent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.NxForceFieldGeneric;

extern(C++) interface NxForceFieldGenericComponent : NxForceFieldComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NxForceFieldGenericComponent")); }
	private static __gshared NxForceFieldGenericComponent mDefaultProperties;
	@property final static NxForceFieldGenericComponent DefaultProperties() { mixin(MGDPC("NxForceFieldGenericComponent", "NxForceFieldGenericComponent Engine.Default__NxForceFieldGenericComponent")); }
	@property final auto ref
	{
		Pointer Kernel() { mixin(MGPC("Pointer", 732)); }
		float TorusRadius() { mixin(MGPC("float", 728)); }
		Vector FalloffQuadratic() { mixin(MGPC("Vector", 716)); }
		Vector FalloffLinear() { mixin(MGPC("Vector", 704)); }
		Vector Noise() { mixin(MGPC("Vector", 692)); }
		Vector VelocityTarget() { mixin(MGPC("Vector", 680)); }
		Vector VelocityMultiplierZ() { mixin(MGPC("Vector", 668)); }
		Vector VelocityMultiplierY() { mixin(MGPC("Vector", 656)); }
		Vector VelocityMultiplierX() { mixin(MGPC("Vector", 644)); }
		Vector PositionTarget() { mixin(MGPC("Vector", 632)); }
		Vector PositionMultiplierZ() { mixin(MGPC("Vector", 620)); }
		Vector PositionMultiplierY() { mixin(MGPC("Vector", 608)); }
		Vector PositionMultiplierX() { mixin(MGPC("Vector", 596)); }
		Vector Constant() { mixin(MGPC("Vector", 584)); }
		NxForceFieldGeneric.FFG_ForceFieldCoordinates Coordinates() { mixin(MGPC("NxForceFieldGeneric.FFG_ForceFieldCoordinates", 580)); }
		float RoughExtentZ() { mixin(MGPC("float", 576)); }
		float RoughExtentY() { mixin(MGPC("float", 572)); }
		float RoughExtentX() { mixin(MGPC("float", 568)); }
	}
}
