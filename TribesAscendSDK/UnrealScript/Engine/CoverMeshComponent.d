module UnrealScript.Engine.CoverMeshComponent;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshComponent;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface CoverMeshComponent : StaticMeshComponent
{
public extern(D):
	struct CoverMeshes
	{
		private ubyte __buffer__[44];
	public extern(D):
		@property final auto ref
		{
			StaticMesh PlayerOnly() { return *cast(StaticMesh*)(cast(size_t)&this + 40); }
			StaticMesh PopUp() { return *cast(StaticMesh*)(cast(size_t)&this + 36); }
			StaticMesh SwatRight() { return *cast(StaticMesh*)(cast(size_t)&this + 32); }
			StaticMesh SwatLeft() { return *cast(StaticMesh*)(cast(size_t)&this + 28); }
			StaticMesh SlipRight() { return *cast(StaticMesh*)(cast(size_t)&this + 24); }
			StaticMesh SlipLeft() { return *cast(StaticMesh*)(cast(size_t)&this + 20); }
			StaticMesh Mantle() { return *cast(StaticMesh*)(cast(size_t)&this + 16); }
			StaticMesh Climb() { return *cast(StaticMesh*)(cast(size_t)&this + 12); }
			StaticMesh LeanRight() { return *cast(StaticMesh*)(cast(size_t)&this + 8); }
			StaticMesh LeanLeft() { return *cast(StaticMesh*)(cast(size_t)&this + 4); }
			StaticMesh Base() { return *cast(StaticMesh*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(CoverMeshComponent.CoverMeshes) Meshes() { return *cast(ScriptArray!(CoverMeshComponent.CoverMeshes)*)(cast(size_t)cast(void*)this + 608); }
			StaticMesh Disabled() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 640); }
			StaticMesh AutoAdjustOff() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 636); }
			StaticMesh AutoAdjustOn() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 632); }
			Vector LocationOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 620); }
		}
		bool bShowWhenNotSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 644) & 0x1) != 0; }
		bool bShowWhenNotSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 644) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 644) &= ~0x1; } return val; }
	}
}
