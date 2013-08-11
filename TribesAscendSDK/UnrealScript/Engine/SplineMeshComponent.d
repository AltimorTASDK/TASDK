module UnrealScript.Engine.SplineMeshComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface SplineMeshComponent : StaticMeshComponent
{
public extern(D):
	struct SplineMeshParams
	{
		private ubyte __buffer__[88];
	public extern(D):
		@property final auto ref
		{
			UObject.Vector2D EndOffset() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 80); }
			float EndRoll() { return *cast(float*)(cast(size_t)&this + 76); }
			UObject.Vector2D EndScale() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 68); }
			Vector EndTangent() { return *cast(Vector*)(cast(size_t)&this + 56); }
			Vector EndPos() { return *cast(Vector*)(cast(size_t)&this + 44); }
			UObject.Vector2D StartOffset() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 36); }
			float StartRoll() { return *cast(float*)(cast(size_t)&this + 32); }
			UObject.Vector2D StartScale() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 24); }
			Vector StartTangent() { return *cast(Vector*)(cast(size_t)&this + 12); }
			Vector StartPos() { return *cast(Vector*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector SplineXDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 696); }
			SplineMeshComponent.SplineMeshParams SplineParams() { return *cast(SplineMeshComponent.SplineMeshParams*)(cast(size_t)cast(void*)this + 608); }
		}
		bool bSmoothInterpRollScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 708) & 0x1) != 0; }
		bool bSmoothInterpRollScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 708) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 708) &= ~0x1; } return val; }
	}
}
