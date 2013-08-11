module UnrealScript.Engine.LandscapeHeightfieldCollisionComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface LandscapeHeightfieldCollisionComponent : PrimitiveComponent
{
	public @property final auto ref ScriptArray!(ubyte) CollisionQuadFlags() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 556); }
	public @property final auto ref ScriptArray!(PhysicalMaterial) PhysicalMaterials() { return *cast(ScriptArray!(PhysicalMaterial)*)(cast(size_t)cast(void*)this + 568); }
	public @property final auto ref UObject.BoxSphereBounds CachedBoxSphereBounds() { return *cast(UObject.BoxSphereBounds*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref UObject.Pointer RBHeightfield() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 580); }
	public @property final auto ref float CollisionScale() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
	public @property final auto ref int CollisionSizeQuads() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
	public @property final auto ref int SectionBaseY() { return *cast(int*)(cast(size_t)cast(void*)this + 544); }
	public @property final auto ref int SectionBaseX() { return *cast(int*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref UObject.UntypedBulkData_Mirror CollisionHeightData() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 488); }
}
