module UnrealScript.Engine.ActorFactorySkeletalMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface ActorFactorySkeletalMesh : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactorySkeletalMesh")()); }
	private static __gshared ActorFactorySkeletalMesh mDefaultProperties;
	@property final static ActorFactorySkeletalMesh DefaultProperties() { mixin(MGDPC!(ActorFactorySkeletalMesh, "ActorFactorySkeletalMesh Engine.Default__ActorFactorySkeletalMesh")()); }
	@property final auto ref
	{
		ScriptName AnimSequenceName() { mixin(MGPC!(ScriptName, 100)()); }
		// WARNING: Property 'AnimSet' has the same name as a defined type!
		// WARNING: Property 'SkeletalMesh' has the same name as a defined type!
	}
}
