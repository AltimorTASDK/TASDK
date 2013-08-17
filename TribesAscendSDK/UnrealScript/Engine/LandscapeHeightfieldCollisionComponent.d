module UnrealScript.Engine.LandscapeHeightfieldCollisionComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.PhysicalMaterial;

extern(C++) interface LandscapeHeightfieldCollisionComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LandscapeHeightfieldCollisionComponent")()); }
	private static __gshared LandscapeHeightfieldCollisionComponent mDefaultProperties;
	@property final static LandscapeHeightfieldCollisionComponent DefaultProperties() { mixin(MGDPC!(LandscapeHeightfieldCollisionComponent, "LandscapeHeightfieldCollisionComponent Engine.Default__LandscapeHeightfieldCollisionComponent")()); }
	@property final auto ref
	{
		ScriptArray!(ubyte) CollisionQuadFlags() { mixin(MGPC!(ScriptArray!(ubyte), 556)()); }
		ScriptArray!(PhysicalMaterial) PhysicalMaterials() { mixin(MGPC!(ScriptArray!(PhysicalMaterial), 568)()); }
		UObject.BoxSphereBounds CachedBoxSphereBounds() { mixin(MGPC!(UObject.BoxSphereBounds, 584)()); }
		UObject.Pointer RBHeightfield() { mixin(MGPC!(UObject.Pointer, 580)()); }
		float CollisionScale() { mixin(MGPC!(float, 552)()); }
		int CollisionSizeQuads() { mixin(MGPC!(int, 548)()); }
		int SectionBaseY() { mixin(MGPC!(int, 544)()); }
		int SectionBaseX() { mixin(MGPC!(int, 540)()); }
		UObject.UntypedBulkData_Mirror CollisionHeightData() { mixin(MGPC!(UObject.UntypedBulkData_Mirror, 488)()); }
	}
}
