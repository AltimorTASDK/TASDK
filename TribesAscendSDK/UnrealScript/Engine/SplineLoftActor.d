module UnrealScript.Engine.SplineLoftActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SplineActor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface SplineLoftActor : SplineActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SplineLoftActor")); }
	private static __gshared SplineLoftActor mDefaultProperties;
	@property final static SplineLoftActor DefaultProperties() { mixin(MGDPC("SplineLoftActor", "SplineLoftActor Engine.Default__SplineLoftActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClearLoftMesh;
			ScriptFunction mUpdateSplineParams;
		}
		public @property static final
		{
			ScriptFunction ClearLoftMesh() { mixin(MGF("mClearLoftMesh", "Function Engine.SplineLoftActor.ClearLoftMesh")); }
			ScriptFunction UpdateSplineParams() { mixin(MGF("mUpdateSplineParams", "Function Engine.SplineLoftActor.UpdateSplineParams")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) SplineMeshComps() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 564)); }
			ScriptArray!(MaterialInterface) DeformMeshMaterials() { mixin(MGPC("ScriptArray!(MaterialInterface)", 580)); }
			float MeshMaxDrawDistance() { mixin(MGPC("float", 624)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'MeshLightEnvironment'!
			UObject.Vector2D Offset() { mixin(MGPC("UObject.Vector2D", 608)); }
			Vector WorldXDir() { mixin(MGPC("Vector", 596)); }
			float Roll() { mixin(MGPC("float", 592)); }
			StaticMesh DeformMesh() { mixin(MGPC("StaticMesh", 576)); }
			float ScaleY() { mixin(MGPC("float", 560)); }
			float ScaleX() { mixin(MGPC("float", 556)); }
		}
		bool bAcceptsLights() { mixin(MGBPC(616, 0x2)); }
		bool bAcceptsLights(bool val) { mixin(MSBPC(616, 0x2)); }
		bool bSmoothInterpRollAndScale() { mixin(MGBPC(616, 0x1)); }
		bool bSmoothInterpRollAndScale(bool val) { mixin(MSBPC(616, 0x1)); }
	}
final:
	void ClearLoftMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearLoftMesh, cast(void*)0, cast(void*)0);
	}
	void UpdateSplineParams()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSplineParams, cast(void*)0, cast(void*)0);
	}
}
