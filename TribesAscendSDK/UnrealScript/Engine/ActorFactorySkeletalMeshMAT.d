module UnrealScript.Engine.ActorFactorySkeletalMeshMAT;

import ScriptClasses;
import UnrealScript.Engine.ActorFactorySkeletalMesh;

extern(C++) interface ActorFactorySkeletalMeshMAT : ActorFactorySkeletalMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactorySkeletalMeshMAT")); }
	private static __gshared ActorFactorySkeletalMeshMAT mDefaultProperties;
	@property final static ActorFactorySkeletalMeshMAT DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactorySkeletalMeshMAT)("ActorFactorySkeletalMeshMAT Engine.Default__ActorFactorySkeletalMeshMAT")); }
}
