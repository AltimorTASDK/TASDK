module UnrealScript.Engine.BrushComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.KMeshProps;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Model;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface BrushComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.BrushComponent")); }
	private static __gshared BrushComponent mDefaultProperties;
	@property final static BrushComponent DefaultProperties() { mixin(MGDPC("BrushComponent", "BrushComponent Engine.Default__BrushComponent")); }
	struct KCachedConvexData_Mirror
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.BrushComponent.KCachedConvexData_Mirror")); }
		@property final auto ref ScriptArray!(int) CachedConvexElements() { mixin(MGPS("ScriptArray!(int)", 0)); }
	}
	@property final
	{
		auto ref
		{
			int CachedPhysBrushDataVersion() { mixin(MGPC("int", 564)); }
			BrushComponent.KCachedConvexData_Mirror CachedPhysBrushData() { mixin(MGPC("BrushComponent.KCachedConvexData_Mirror", 552)); }
			UObject.Pointer BrushPhysDesc() { mixin(MGPC("UObject.Pointer", 548)); }
			KMeshProps.KAggregateGeom BrushAggGeom() { mixin(MGPC("KMeshProps.KAggregateGeom", 492)); }
			// WARNING: Property 'Brush' has the same name as a defined type!
		}
		bool bBlockComplexCollisionTrace() { mixin(MGBPC(568, 0x1)); }
		bool bBlockComplexCollisionTrace(bool val) { mixin(MSBPC(568, 0x1)); }
	}
}
