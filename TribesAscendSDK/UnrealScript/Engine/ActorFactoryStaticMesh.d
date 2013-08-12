module UnrealScript.Engine.ActorFactoryStaticMesh;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface ActorFactoryStaticMesh : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryStaticMesh")); }
	private static __gshared ActorFactoryStaticMesh mDefaultProperties;
	@property final static ActorFactoryStaticMesh DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryStaticMesh)("ActorFactoryStaticMesh Engine.Default__ActorFactoryStaticMesh")); }
	@property final auto ref
	{
		Vector DrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
		// WARNING: Property 'StaticMesh' has the same name as a defined type!
	}
}
