module UnrealScript.Engine.SplineMeshComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface SplineMeshComponent : StaticMeshComponent
{
	struct SplineMeshParams
	{
		public @property final auto ref UObject.Vector2D EndOffset() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 80); }
		private ubyte __EndOffset[8];
		public @property final auto ref float EndRoll() { return *cast(float*)(cast(size_t)&this + 76); }
		private ubyte __EndRoll[4];
		public @property final auto ref UObject.Vector2D EndScale() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 68); }
		private ubyte __EndScale[8];
		public @property final auto ref Vector EndTangent() { return *cast(Vector*)(cast(size_t)&this + 56); }
		private ubyte __EndTangent[12];
		public @property final auto ref Vector EndPos() { return *cast(Vector*)(cast(size_t)&this + 44); }
		private ubyte __EndPos[12];
		public @property final auto ref UObject.Vector2D StartOffset() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 36); }
		private ubyte __StartOffset[8];
		public @property final auto ref float StartRoll() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __StartRoll[4];
		public @property final auto ref UObject.Vector2D StartScale() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 24); }
		private ubyte __StartScale[8];
		public @property final auto ref Vector StartTangent() { return *cast(Vector*)(cast(size_t)&this + 12); }
		private ubyte __StartTangent[12];
		public @property final auto ref Vector StartPos() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __StartPos[12];
	}
	public @property final bool bSmoothInterpRollScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 708) & 0x1) != 0; }
	public @property final bool bSmoothInterpRollScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 708) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 708) &= ~0x1; } return val; }
	public @property final auto ref Vector SplineXDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 696); }
	public @property final auto ref SplineMeshComponent.SplineMeshParams SplineParams() { return *cast(SplineMeshComponent.SplineMeshParams*)(cast(size_t)cast(void*)this + 608); }
}
