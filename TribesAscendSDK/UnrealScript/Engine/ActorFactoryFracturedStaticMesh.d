module UnrealScript.Engine.ActorFactoryFracturedStaticMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.FracturedStaticMesh;

extern(C++) interface ActorFactoryFracturedStaticMesh : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryFracturedStaticMesh")); }
	private static __gshared ActorFactoryFracturedStaticMesh mDefaultProperties;
	@property final static ActorFactoryFracturedStaticMesh DefaultProperties() { mixin(MGDPC("ActorFactoryFracturedStaticMesh", "ActorFactoryFracturedStaticMesh Engine.Default__ActorFactoryFracturedStaticMesh")); }
	@property final auto ref
	{
		Vector DrawScale3D() { mixin(MGPC("Vector", 96)); }
		// WARNING: Property 'FracturedStaticMesh' has the same name as a defined type!
	}
}
