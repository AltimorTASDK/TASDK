module UnrealScript.Engine.LandscapeHeightfieldCollisionComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface LandscapeHeightfieldCollisionComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LandscapeHeightfieldCollisionComponent")); }
	private static __gshared LandscapeHeightfieldCollisionComponent mDefaultProperties;
	@property final static LandscapeHeightfieldCollisionComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LandscapeHeightfieldCollisionComponent)("LandscapeHeightfieldCollisionComponent Engine.Default__LandscapeHeightfieldCollisionComponent")); }
	@property final auto ref
	{
		ScriptArray!(ubyte) CollisionQuadFlags() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 556); }
		ScriptArray!(PhysicalMaterial) PhysicalMaterials() { return *cast(ScriptArray!(PhysicalMaterial)*)(cast(size_t)cast(void*)this + 568); }
		UObject.BoxSphereBounds CachedBoxSphereBounds() { return *cast(UObject.BoxSphereBounds*)(cast(size_t)cast(void*)this + 584); }
		UObject.Pointer RBHeightfield() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 580); }
		float CollisionScale() { return *cast(float*)(cast(size_t)cast(void*)this + 552); }
		int CollisionSizeQuads() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
		int SectionBaseY() { return *cast(int*)(cast(size_t)cast(void*)this + 544); }
		int SectionBaseX() { return *cast(int*)(cast(size_t)cast(void*)this + 540); }
		UObject.UntypedBulkData_Mirror CollisionHeightData() { return *cast(UObject.UntypedBulkData_Mirror*)(cast(size_t)cast(void*)this + 488); }
	}
}
