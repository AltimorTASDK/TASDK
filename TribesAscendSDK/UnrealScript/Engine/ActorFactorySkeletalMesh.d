module UnrealScript.Engine.ActorFactorySkeletalMesh;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface ActorFactorySkeletalMesh : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactorySkeletalMesh")); }
	private static __gshared ActorFactorySkeletalMesh mDefaultProperties;
	@property final static ActorFactorySkeletalMesh DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactorySkeletalMesh)("ActorFactorySkeletalMesh Engine.Default__ActorFactorySkeletalMesh")); }
	@property final auto ref
	{
		ScriptName AnimSequenceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 100); }
		// WARNING: Property 'AnimSet' has the same name as a defined type!
		// WARNING: Property 'SkeletalMesh' has the same name as a defined type!
	}
}
