module UnrealScript.Engine.ActorFactoryFracturedStaticMesh;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.FracturedStaticMesh;

extern(C++) interface ActorFactoryFracturedStaticMesh : ActorFactory
{
public extern(D):
	@property final auto ref
	{
		Vector DrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
		// WARNING: Property 'FracturedStaticMesh' has the same name as a defined type!
	}
}
