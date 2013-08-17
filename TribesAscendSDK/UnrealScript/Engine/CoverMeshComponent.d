module UnrealScript.Engine.CoverMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.StaticMeshComponent;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface CoverMeshComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.CoverMeshComponent")()); }
	private static __gshared CoverMeshComponent mDefaultProperties;
	@property final static CoverMeshComponent DefaultProperties() { mixin(MGDPC!(CoverMeshComponent, "CoverMeshComponent Engine.Default__CoverMeshComponent")()); }
	struct CoverMeshes
	{
		private ubyte __buffer__[44];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.CoverMeshComponent.CoverMeshes")()); }
		@property final auto ref
		{
			StaticMesh PlayerOnly() { mixin(MGPS!(StaticMesh, 40)()); }
			StaticMesh PopUp() { mixin(MGPS!(StaticMesh, 36)()); }
			StaticMesh SwatRight() { mixin(MGPS!(StaticMesh, 32)()); }
			StaticMesh SwatLeft() { mixin(MGPS!(StaticMesh, 28)()); }
			StaticMesh SlipRight() { mixin(MGPS!(StaticMesh, 24)()); }
			StaticMesh SlipLeft() { mixin(MGPS!(StaticMesh, 20)()); }
			StaticMesh Mantle() { mixin(MGPS!(StaticMesh, 16)()); }
			StaticMesh Climb() { mixin(MGPS!(StaticMesh, 12)()); }
			StaticMesh LeanRight() { mixin(MGPS!(StaticMesh, 8)()); }
			StaticMesh LeanLeft() { mixin(MGPS!(StaticMesh, 4)()); }
			StaticMesh Base() { mixin(MGPS!(StaticMesh, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(CoverMeshComponent.CoverMeshes) Meshes() { mixin(MGPC!(ScriptArray!(CoverMeshComponent.CoverMeshes), 608)()); }
			StaticMesh Disabled() { mixin(MGPC!(StaticMesh, 640)()); }
			StaticMesh AutoAdjustOff() { mixin(MGPC!(StaticMesh, 636)()); }
			StaticMesh AutoAdjustOn() { mixin(MGPC!(StaticMesh, 632)()); }
			Vector LocationOffset() { mixin(MGPC!(Vector, 620)()); }
		}
		bool bShowWhenNotSelected() { mixin(MGBPC!(644, 0x1)()); }
		bool bShowWhenNotSelected(bool val) { mixin(MSBPC!(644, 0x1)()); }
	}
}
