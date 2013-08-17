module UnrealScript.Engine.ActorFactoryStaticMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface ActorFactoryStaticMesh : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryStaticMesh")); }
	private static __gshared ActorFactoryStaticMesh mDefaultProperties;
	@property final static ActorFactoryStaticMesh DefaultProperties() { mixin(MGDPC("ActorFactoryStaticMesh", "ActorFactoryStaticMesh Engine.Default__ActorFactoryStaticMesh")); }
	@property final auto ref
	{
		Vector DrawScale3D() { mixin(MGPC("Vector", 96)); }
		// WARNING: Property 'StaticMesh' has the same name as a defined type!
	}
}
