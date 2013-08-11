module UnrealScript.Engine.BrushComponent;

import ScriptClasses;
import UnrealScript.Engine.KMeshProps;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Model;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface BrushComponent : PrimitiveComponent
{
public extern(D):
	struct KCachedConvexData_Mirror
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref ScriptArray!(int) CachedConvexElements() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 0); }
	}
	@property final
	{
		auto ref
		{
			int CachedPhysBrushDataVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 564); }
			BrushComponent.KCachedConvexData_Mirror CachedPhysBrushData() { return *cast(BrushComponent.KCachedConvexData_Mirror*)(cast(size_t)cast(void*)this + 552); }
			UObject.Pointer BrushPhysDesc() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 548); }
			KMeshProps.KAggregateGeom BrushAggGeom() { return *cast(KMeshProps.KAggregateGeom*)(cast(size_t)cast(void*)this + 492); }
			// WARNING: Property 'Brush' has the same name as a defined type!
		}
		bool bBlockComplexCollisionTrace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 568) & 0x1) != 0; }
		bool bBlockComplexCollisionTrace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 568) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 568) &= ~0x1; } return val; }
	}
}
