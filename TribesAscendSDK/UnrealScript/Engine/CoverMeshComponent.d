module UnrealScript.Engine.CoverMeshComponent;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshComponent;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface CoverMeshComponent : StaticMeshComponent
{
	struct CoverMeshes
	{
		public @property final auto ref StaticMesh PlayerOnly() { return *cast(StaticMesh*)(cast(size_t)&this + 40); }
		private ubyte __PlayerOnly[4];
		public @property final auto ref StaticMesh PopUp() { return *cast(StaticMesh*)(cast(size_t)&this + 36); }
		private ubyte __PopUp[4];
		public @property final auto ref StaticMesh SwatRight() { return *cast(StaticMesh*)(cast(size_t)&this + 32); }
		private ubyte __SwatRight[4];
		public @property final auto ref StaticMesh SwatLeft() { return *cast(StaticMesh*)(cast(size_t)&this + 28); }
		private ubyte __SwatLeft[4];
		public @property final auto ref StaticMesh SlipRight() { return *cast(StaticMesh*)(cast(size_t)&this + 24); }
		private ubyte __SlipRight[4];
		public @property final auto ref StaticMesh SlipLeft() { return *cast(StaticMesh*)(cast(size_t)&this + 20); }
		private ubyte __SlipLeft[4];
		public @property final auto ref StaticMesh Mantle() { return *cast(StaticMesh*)(cast(size_t)&this + 16); }
		private ubyte __Mantle[4];
		public @property final auto ref StaticMesh Climb() { return *cast(StaticMesh*)(cast(size_t)&this + 12); }
		private ubyte __Climb[4];
		public @property final auto ref StaticMesh LeanRight() { return *cast(StaticMesh*)(cast(size_t)&this + 8); }
		private ubyte __LeanRight[4];
		public @property final auto ref StaticMesh LeanLeft() { return *cast(StaticMesh*)(cast(size_t)&this + 4); }
		private ubyte __LeanLeft[4];
		public @property final auto ref StaticMesh Base() { return *cast(StaticMesh*)(cast(size_t)&this + 0); }
		private ubyte __Base[4];
	}
	public @property final auto ref ScriptArray!(CoverMeshComponent.CoverMeshes) Meshes() { return *cast(ScriptArray!(CoverMeshComponent.CoverMeshes)*)(cast(size_t)cast(void*)this + 608); }
	public @property final bool bShowWhenNotSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 644) & 0x1) != 0; }
	public @property final bool bShowWhenNotSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 644) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 644) &= ~0x1; } return val; }
	public @property final auto ref StaticMesh Disabled() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref StaticMesh AutoAdjustOff() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref StaticMesh AutoAdjustOn() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 632); }
	public @property final auto ref Vector LocationOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 620); }
}
