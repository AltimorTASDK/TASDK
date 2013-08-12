module UnrealScript.Engine.SplineLoftActor;

import ScriptClasses;
import UnrealScript.Engine.SplineActor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface SplineLoftActor : SplineActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SplineLoftActor")); }
	private static __gshared SplineLoftActor mDefaultProperties;
	@property final static SplineLoftActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SplineLoftActor)("SplineLoftActor Engine.Default__SplineLoftActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClearLoftMesh;
			ScriptFunction mUpdateSplineParams;
		}
		public @property static final
		{
			ScriptFunction ClearLoftMesh() { return mClearLoftMesh ? mClearLoftMesh : (mClearLoftMesh = ScriptObject.Find!(ScriptFunction)("Function Engine.SplineLoftActor.ClearLoftMesh")); }
			ScriptFunction UpdateSplineParams() { return mUpdateSplineParams ? mUpdateSplineParams : (mUpdateSplineParams = ScriptObject.Find!(ScriptFunction)("Function Engine.SplineLoftActor.UpdateSplineParams")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) SplineMeshComps() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 564); }
			ScriptArray!(MaterialInterface) DeformMeshMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 580); }
			float MeshMaxDrawDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
			UObject.Vector2D Offset() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 608); }
			Vector WorldXDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 596); }
			float Roll() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
			StaticMesh DeformMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 576); }
			float ScaleY() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
			float ScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
		}
		bool bAcceptsLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 616) & 0x2) != 0; }
		bool bAcceptsLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 616) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 616) &= ~0x2; } return val; }
		bool bSmoothInterpRollAndScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 616) & 0x1) != 0; }
		bool bSmoothInterpRollAndScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 616) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 616) &= ~0x1; } return val; }
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
