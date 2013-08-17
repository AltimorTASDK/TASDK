module UnrealScript.Engine.MatineePawn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface MatineePawn : Pawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.MatineePawn")); }
	private static __gshared MatineePawn mDefaultProperties;
	@property final static MatineePawn DefaultProperties() { mixin(MGDPC("MatineePawn", "MatineePawn Engine.Default__MatineePawn")); }
	@property final auto ref SkeletalMesh PreviewMesh() { mixin(MGPC("SkeletalMesh", 1144)); }
}
