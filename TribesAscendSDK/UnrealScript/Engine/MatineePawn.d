module UnrealScript.Engine.MatineePawn;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface MatineePawn : Pawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MatineePawn")); }
	private static __gshared MatineePawn mDefaultProperties;
	@property final static MatineePawn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MatineePawn)("MatineePawn Engine.Default__MatineePawn")); }
	@property final auto ref SkeletalMesh PreviewMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 1144); }
}
