module UnrealScript.Engine.ActorFactoryFracturedStaticMesh;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.FracturedStaticMesh;

extern(C++) interface ActorFactoryFracturedStaticMesh : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryFracturedStaticMesh")); }
	private static __gshared ActorFactoryFracturedStaticMesh mDefaultProperties;
	@property final static ActorFactoryFracturedStaticMesh DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryFracturedStaticMesh)("ActorFactoryFracturedStaticMesh Engine.Default__ActorFactoryFracturedStaticMesh")); }
	@property final auto ref
	{
		Vector DrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
		// WARNING: Property 'FracturedStaticMesh' has the same name as a defined type!
	}
}
