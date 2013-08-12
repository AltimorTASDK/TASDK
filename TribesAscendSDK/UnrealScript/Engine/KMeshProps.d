module UnrealScript.Engine.KMeshProps;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface KMeshProps : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.KMeshProps")); }
	struct KSphereElem
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.KMeshProps.KSphereElem")); }
		@property final
		{
			auto ref
			{
				float Radius() { return *cast(float*)(cast(size_t)&this + 64); }
				UObject.Matrix TM() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
			}
			bool bPerPolyShape() { return (*cast(uint*)(cast(size_t)&this + 68) & 0x2) != 0; }
			bool bPerPolyShape(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 68) &= ~0x2; } return val; }
			bool bNoRBCollision() { return (*cast(uint*)(cast(size_t)&this + 68) & 0x1) != 0; }
			bool bNoRBCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 68) &= ~0x1; } return val; }
		}
	}
	struct KBoxElem
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.KMeshProps.KBoxElem")); }
		@property final
		{
			auto ref
			{
				float Z() { return *cast(float*)(cast(size_t)&this + 72); }
				float Y() { return *cast(float*)(cast(size_t)&this + 68); }
				float X() { return *cast(float*)(cast(size_t)&this + 64); }
				UObject.Matrix TM() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
			}
			bool bPerPolyShape() { return (*cast(uint*)(cast(size_t)&this + 76) & 0x2) != 0; }
			bool bPerPolyShape(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 76) &= ~0x2; } return val; }
			bool bNoRBCollision() { return (*cast(uint*)(cast(size_t)&this + 76) & 0x1) != 0; }
			bool bNoRBCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 76) &= ~0x1; } return val; }
		}
	}
	struct KSphylElem
	{
		private ubyte __buffer__[76];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.KMeshProps.KSphylElem")); }
		@property final
		{
			auto ref
			{
				float Length() { return *cast(float*)(cast(size_t)&this + 68); }
				float Radius() { return *cast(float*)(cast(size_t)&this + 64); }
				UObject.Matrix TM() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
			}
			bool bPerPolyShape() { return (*cast(uint*)(cast(size_t)&this + 72) & 0x2) != 0; }
			bool bPerPolyShape(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 72) &= ~0x2; } return val; }
			bool bNoRBCollision() { return (*cast(uint*)(cast(size_t)&this + 72) & 0x1) != 0; }
			bool bNoRBCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 72) &= ~0x1; } return val; }
		}
	}
	struct KConvexElem
	{
		private ubyte __buffer__[100];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.KMeshProps.KConvexElem")); }
		@property final auto ref
		{
			ScriptArray!(Vector) VertexData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 0); }
			ScriptArray!(UObject.Plane) PermutedVertexData() { return *cast(ScriptArray!(UObject.Plane)*)(cast(size_t)&this + 12); }
			ScriptArray!(int) FaceTriData() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 24); }
			ScriptArray!(Vector) EdgeDirections() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 36); }
			ScriptArray!(Vector) FaceNormalDirections() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 48); }
			ScriptArray!(UObject.Plane) FacePlaneData() { return *cast(ScriptArray!(UObject.Plane)*)(cast(size_t)&this + 60); }
			UObject.Box ElemBox() { return *cast(UObject.Box*)(cast(size_t)&this + 72); }
		}
	}
	struct KAggregateGeom
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.KMeshProps.KAggregateGeom")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(KMeshProps.KSphereElem) SphereElems() { return *cast(ScriptArray!(KMeshProps.KSphereElem)*)(cast(size_t)&this + 0); }
				ScriptArray!(KMeshProps.KBoxElem) BoxElems() { return *cast(ScriptArray!(KMeshProps.KBoxElem)*)(cast(size_t)&this + 12); }
				ScriptArray!(KMeshProps.KSphylElem) SphylElems() { return *cast(ScriptArray!(KMeshProps.KSphylElem)*)(cast(size_t)&this + 24); }
				ScriptArray!(KMeshProps.KConvexElem) ConvexElems() { return *cast(ScriptArray!(KMeshProps.KConvexElem)*)(cast(size_t)&this + 36); }
				UObject.Pointer RenderInfo() { return *cast(UObject.Pointer*)(cast(size_t)&this + 48); }
			}
			bool bSkipCloseAndParallelChecks() { return (*cast(uint*)(cast(size_t)&this + 52) & 0x1) != 0; }
			bool bSkipCloseAndParallelChecks(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 52) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 52) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		KMeshProps.KAggregateGeom AggGeom() { return *cast(KMeshProps.KAggregateGeom*)(cast(size_t)cast(void*)this + 72); }
		Vector COMNudge() { return *cast(Vector*)(cast(size_t)cast(void*)this + 60); }
	}
}
