module UnrealScript.Engine.BrushComponent;

import ScriptClasses;
import UnrealScript.Engine.KMeshProps;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Model;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface BrushComponent : PrimitiveComponent
{
	struct KCachedConvexData_Mirror
	{
		public @property final auto ref ScriptArray!(int) CachedConvexElements() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 0); }
		private ubyte __CachedConvexElements[12];
	}
	public @property final bool bBlockComplexCollisionTrace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x1) != 0; }
	public @property final bool bBlockComplexCollisionTrace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x1; } return val; }
	public @property final auto ref int CachedPhysBrushDataVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 564); }
	public @property final auto ref BrushComponent.KCachedConvexData_Mirror CachedPhysBrushData() { return *cast(BrushComponent.KCachedConvexData_Mirror*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref UObject.Pointer BrushPhysDesc() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref KMeshProps.KAggregateGeom BrushAggGeom() { return *cast(KMeshProps.KAggregateGeom*)(cast(size_t)cast(void*)this + 492); }
	// WARNING: Property 'Brush' has the same name as a defined type!
}
