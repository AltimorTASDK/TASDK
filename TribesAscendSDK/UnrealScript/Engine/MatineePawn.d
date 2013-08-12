module UnrealScript.Engine.MatineePawn;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface MatineePawn : Pawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MatineePawn")); }
	@property final auto ref SkeletalMesh PreviewMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 1144); }
}
