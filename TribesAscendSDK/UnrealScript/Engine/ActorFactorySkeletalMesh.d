module UnrealScript.Engine.ActorFactorySkeletalMesh;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.AnimSet;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface ActorFactorySkeletalMesh : ActorFactory
{
	public @property final auto ref ScriptName AnimSequenceName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 100); }
	// WARNING: Property 'AnimSet' has the same name as a defined type!
	// WARNING: Property 'SkeletalMesh' has the same name as a defined type!
}
