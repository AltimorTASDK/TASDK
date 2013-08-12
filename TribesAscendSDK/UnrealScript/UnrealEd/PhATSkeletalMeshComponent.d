module UnrealScript.UnrealEd.PhATSkeletalMeshComponent;

import ScriptClasses;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface PhATSkeletalMeshComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.PhATSkeletalMeshComponent")); }
}
