module UnrealScript.UTGame.UTGibSkeletalMeshComponent;

import ScriptClasses;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface UTGibSkeletalMeshComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGibSkeletalMeshComponent")); }
	private static __gshared UTGibSkeletalMeshComponent mDefaultProperties;
	@property final static UTGibSkeletalMeshComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTGibSkeletalMeshComponent)("UTGibSkeletalMeshComponent UTGame.Default__UTGibSkeletalMeshComponent")); }
}
