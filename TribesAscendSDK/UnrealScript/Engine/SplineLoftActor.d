module UnrealScript.Engine.SplineLoftActor;

import ScriptClasses;
import UnrealScript.Engine.SplineActor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface SplineLoftActor : SplineActor
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27174], cast(void*)0, cast(void*)0);
	}
	void UpdateSplineParams()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27175], cast(void*)0, cast(void*)0);
	}
}
