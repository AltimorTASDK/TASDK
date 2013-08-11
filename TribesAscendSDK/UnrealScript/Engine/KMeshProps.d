module UnrealScript.Engine.KMeshProps;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface KMeshProps : UObject
{
	struct KSphereElem
	{
		public @property final bool bPerPolyShape() { return (*cast(uint*)(cast(size_t)&this + 68) & 0x2) != 0; }
		public @property final bool bPerPolyShape(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 68) &= ~0x2; } return val; }
		private ubyte __bPerPolyShape[4];
		public @property final bool bNoRBCollision() { return (*cast(uint*)(cast(size_t)&this + 68) & 0x1) != 0; }
		public @property final bool bNoRBCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 68) &= ~0x1; } return val; }
		private ubyte __bNoRBCollision[4];
		public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)&this + 64); }
		private ubyte __Radius[4];
		public @property final auto ref UObject.Matrix TM() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
		private ubyte __TM[64];
	}
	struct KBoxElem
	{
		public @property final bool bPerPolyShape() { return (*cast(uint*)(cast(size_t)&this + 76) & 0x2) != 0; }
		public @property final bool bPerPolyShape(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 76) &= ~0x2; } return val; }
		private ubyte __bPerPolyShape[4];
		public @property final bool bNoRBCollision() { return (*cast(uint*)(cast(size_t)&this + 76) & 0x1) != 0; }
		public @property final bool bNoRBCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 76) &= ~0x1; } return val; }
		private ubyte __bNoRBCollision[4];
		public @property final auto ref float Z() { return *cast(float*)(cast(size_t)&this + 72); }
		private ubyte __Z[4];
		public @property final auto ref float Y() { return *cast(float*)(cast(size_t)&this + 68); }
		private ubyte __Y[4];
		public @property final auto ref float X() { return *cast(float*)(cast(size_t)&this + 64); }
		private ubyte __X[4];
		public @property final auto ref UObject.Matrix TM() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
		private ubyte __TM[64];
	}
	struct KSphylElem
	{
		public @property final bool bPerPolyShape() { return (*cast(uint*)(cast(size_t)&this + 72) & 0x2) != 0; }
		public @property final bool bPerPolyShape(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 72) &= ~0x2; } return val; }
		private ubyte __bPerPolyShape[4];
		public @property final bool bNoRBCollision() { return (*cast(uint*)(cast(size_t)&this + 72) & 0x1) != 0; }
		public @property final bool bNoRBCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 72) &= ~0x1; } return val; }
		private ubyte __bNoRBCollision[4];
		public @property final auto ref float Length() { return *cast(float*)(cast(size_t)&this + 68); }
		private ubyte __Length[4];
		public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)&this + 64); }
		private ubyte __Radius[4];
		public @property final auto ref UObject.Matrix TM() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
		private ubyte __TM[64];
	}
	struct KConvexElem
	{
		public @property final auto ref ScriptArray!(Vector) VertexData() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 0); }
		private ubyte __VertexData[12];
		public @property final auto ref ScriptArray!(UObject.Plane) PermutedVertexData() { return *cast(ScriptArray!(UObject.Plane)*)(cast(size_t)&this + 12); }
		private ubyte __PermutedVertexData[12];
		public @property final auto ref ScriptArray!(int) FaceTriData() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 24); }
		private ubyte __FaceTriData[12];
		public @property final auto ref ScriptArray!(Vector) EdgeDirections() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 36); }
		private ubyte __EdgeDirections[12];
		public @property final auto ref ScriptArray!(Vector) FaceNormalDirections() { return *cast(ScriptArray!(Vector)*)(cast(size_t)&this + 48); }
		private ubyte __FaceNormalDirections[12];
		public @property final auto ref ScriptArray!(UObject.Plane) FacePlaneData() { return *cast(ScriptArray!(UObject.Plane)*)(cast(size_t)&this + 60); }
		private ubyte __FacePlaneData[12];
		public @property final auto ref UObject.Box ElemBox() { return *cast(UObject.Box*)(cast(size_t)&this + 72); }
		private ubyte __ElemBox[28];
	}
	struct KAggregateGeom
	{
		public @property final auto ref ScriptArray!(KMeshProps.KSphereElem) SphereElems() { return *cast(ScriptArray!(KMeshProps.KSphereElem)*)(cast(size_t)&this + 0); }
		private ubyte __SphereElems[12];
		public @property final auto ref ScriptArray!(KMeshProps.KBoxElem) BoxElems() { return *cast(ScriptArray!(KMeshProps.KBoxElem)*)(cast(size_t)&this + 12); }
		private ubyte __BoxElems[12];
		public @property final auto ref ScriptArray!(KMeshProps.KSphylElem) SphylElems() { return *cast(ScriptArray!(KMeshProps.KSphylElem)*)(cast(size_t)&this + 24); }
		private ubyte __SphylElems[12];
		public @property final auto ref ScriptArray!(KMeshProps.KConvexElem) ConvexElems() { return *cast(ScriptArray!(KMeshProps.KConvexElem)*)(cast(size_t)&this + 36); }
		private ubyte __ConvexElems[12];
		public @property final bool bSkipCloseAndParallelChecks() { return (*cast(uint*)(cast(size_t)&this + 52) & 0x1) != 0; }
		public @property final bool bSkipCloseAndParallelChecks(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 52) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 52) &= ~0x1; } return val; }
		private ubyte __bSkipCloseAndParallelChecks[4];
		public @property final auto ref UObject.Pointer RenderInfo() { return *cast(UObject.Pointer*)(cast(size_t)&this + 48); }
		private ubyte __RenderInfo[4];
	}
	public @property final auto ref KMeshProps.KAggregateGeom AggGeom() { return *cast(KMeshProps.KAggregateGeom*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref Vector COMNudge() { return *cast(Vector*)(cast(size_t)cast(void*)this + 60); }
}
