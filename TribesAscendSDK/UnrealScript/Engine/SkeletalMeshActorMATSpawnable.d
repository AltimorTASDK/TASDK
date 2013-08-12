module UnrealScript.Engine.SkeletalMeshActorMATSpawnable;

import ScriptClasses;
import UnrealScript.Engine.SkeletalMeshActorMAT;

extern(C++) interface SkeletalMeshActorMATSpawnable : SkeletalMeshActorMAT
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkeletalMeshActorMATSpawnable")); }
	private static __gshared SkeletalMeshActorMATSpawnable mDefaultProperties;
	@property final static SkeletalMeshActorMATSpawnable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkeletalMeshActorMATSpawnable)("SkeletalMeshActorMATSpawnable Engine.Default__SkeletalMeshActorMATSpawnable")); }
}
