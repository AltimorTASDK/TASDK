module UnrealScript.Engine.SkeletalMeshActorMATWalkable;

import ScriptClasses;
import UnrealScript.Engine.SkeletalMeshActorMAT;

extern(C++) interface SkeletalMeshActorMATWalkable : SkeletalMeshActorMAT
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkeletalMeshActorMATWalkable")); }
	private static __gshared SkeletalMeshActorMATWalkable mDefaultProperties;
	@property final static SkeletalMeshActorMATWalkable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkeletalMeshActorMATWalkable)("SkeletalMeshActorMATWalkable Engine.Default__SkeletalMeshActorMATWalkable")); }
}
