module UnrealScript.Engine.KMeshProps;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface KMeshProps : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.KMeshProps")()); }
	private static __gshared KMeshProps mDefaultProperties;
	@property final static KMeshProps DefaultProperties() { mixin(MGDPC!(KMeshProps, "KMeshProps Engine.Default__KMeshProps")()); }
	struct KSphereElem
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.KMeshProps.KSphereElem")()); }
		@property final
		{
			auto ref
			{
				float Radius() { mixin(MGPS!(float, 64)()); }
				UObject.Matrix TM() { mixin(MGPS!(UObject.Matrix, 0)()); }
			}
			bool bPerPolyShape() { mixin(MGBPS!(68, 0x2)()); }
			bool bPerPolyShape(bool val) { mixin(MSBPS!(68, 0x2)()); }
			bool bNoRBCollision() { mixin(MGBPS!(68, 0x1)()); }
			bool bNoRBCollision(bool val) { mixin(MSBPS!(68, 0x1)()); }
		}
	}
	struct KBoxElem
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.KMeshProps.KBoxElem")()); }
		@property final
		{
			auto ref
			{
				float Z() { mixin(MGPS!(float, 72)()); }
				float Y() { mixin(MGPS!(float, 68)()); }
				float X() { mixin(MGPS!(float, 64)()); }
				UObject.Matrix TM() { mixin(MGPS!(UObject.Matrix, 0)()); }
			}
			bool bPerPolyShape() { mixin(MGBPS!(76, 0x2)()); }
			bool bPerPolyShape(bool val) { mixin(MSBPS!(76, 0x2)()); }
			bool bNoRBCollision() { mixin(MGBPS!(76, 0x1)()); }
			bool bNoRBCollision(bool val) { mixin(MSBPS!(76, 0x1)()); }
		}
	}
	struct KSphylElem
	{
		private ubyte __buffer__[76];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.KMeshProps.KSphylElem")()); }
		@property final
		{
			auto ref
			{
				float Length() { mixin(MGPS!(float, 68)()); }
				float Radius() { mixin(MGPS!(float, 64)()); }
				UObject.Matrix TM() { mixin(MGPS!(UObject.Matrix, 0)()); }
			}
			bool bPerPolyShape() { mixin(MGBPS!(72, 0x2)()); }
			bool bPerPolyShape(bool val) { mixin(MSBPS!(72, 0x2)()); }
			bool bNoRBCollision() { mixin(MGBPS!(72, 0x1)()); }
			bool bNoRBCollision(bool val) { mixin(MSBPS!(72, 0x1)()); }
		}
	}
	struct KConvexElem
	{
		private ubyte __buffer__[100];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.KMeshProps.KConvexElem")()); }
		@property final auto ref
		{
			ScriptArray!(Vector) VertexData() { mixin(MGPS!(ScriptArray!(Vector), 0)()); }
			ScriptArray!(UObject.Plane) PermutedVertexData() { mixin(MGPS!(ScriptArray!(UObject.Plane), 12)()); }
			ScriptArray!(int) FaceTriData() { mixin(MGPS!(ScriptArray!(int), 24)()); }
			ScriptArray!(Vector) EdgeDirections() { mixin(MGPS!(ScriptArray!(Vector), 36)()); }
			ScriptArray!(Vector) FaceNormalDirections() { mixin(MGPS!(ScriptArray!(Vector), 48)()); }
			ScriptArray!(UObject.Plane) FacePlaneData() { mixin(MGPS!(ScriptArray!(UObject.Plane), 60)()); }
			UObject.Box ElemBox() { mixin(MGPS!(UObject.Box, 72)()); }
		}
	}
	struct KAggregateGeom
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.KMeshProps.KAggregateGeom")()); }
		@property final
		{
			auto ref
			{
				ScriptArray!(KMeshProps.KSphereElem) SphereElems() { mixin(MGPS!(ScriptArray!(KMeshProps.KSphereElem), 0)()); }
				ScriptArray!(KMeshProps.KBoxElem) BoxElems() { mixin(MGPS!(ScriptArray!(KMeshProps.KBoxElem), 12)()); }
				ScriptArray!(KMeshProps.KSphylElem) SphylElems() { mixin(MGPS!(ScriptArray!(KMeshProps.KSphylElem), 24)()); }
				ScriptArray!(KMeshProps.KConvexElem) ConvexElems() { mixin(MGPS!(ScriptArray!(KMeshProps.KConvexElem), 36)()); }
				UObject.Pointer RenderInfo() { mixin(MGPS!(UObject.Pointer, 48)()); }
			}
			bool bSkipCloseAndParallelChecks() { mixin(MGBPS!(52, 0x1)()); }
			bool bSkipCloseAndParallelChecks(bool val) { mixin(MSBPS!(52, 0x1)()); }
		}
	}
	@property final auto ref
	{
		KMeshProps.KAggregateGeom AggGeom() { mixin(MGPC!(KMeshProps.KAggregateGeom, 72)()); }
		Vector COMNudge() { mixin(MGPC!(Vector, 60)()); }
	}
}
