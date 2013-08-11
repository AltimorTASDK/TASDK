module UnrealScript.Engine.SplineLoftActor;

import ScriptClasses;
import UnrealScript.Engine.SplineActor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface SplineLoftActor : SplineActor
{
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) SplineMeshComps() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref ScriptArray!(MaterialInterface) DeformMeshMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float MeshMaxDrawDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 624); }
	public @property final bool bAcceptsLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 616) & 0x2) != 0; }
	public @property final bool bAcceptsLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 616) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 616) &= ~0x2; } return val; }
	public @property final bool bSmoothInterpRollAndScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 616) & 0x1) != 0; }
	public @property final bool bSmoothInterpRollAndScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 616) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 616) &= ~0x1; } return val; }
	public @property final auto ref UObject.Vector2D Offset() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref Vector WorldXDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 596); }
	public @property final auto ref float Roll() { return *cast(float*)(cast(size_t)cast(void*)this + 592); }
	public @property final auto ref StaticMesh DeformMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 576); }
	public @property final auto ref float ScaleY() { return *cast(float*)(cast(size_t)cast(void*)this + 560); }
	public @property final auto ref float ScaleX() { return *cast(float*)(cast(size_t)cast(void*)this + 556); }
	final void ClearLoftMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27174], cast(void*)0, cast(void*)0);
	}
	final void UpdateSplineParams()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27175], cast(void*)0, cast(void*)0);
	}
}
