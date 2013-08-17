module UnrealScript.Engine.ActorFactoryDecal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ActorFactoryDecal : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryDecal")()); }
	private static __gshared ActorFactoryDecal mDefaultProperties;
	@property final static ActorFactoryDecal DefaultProperties() { mixin(MGDPC!(ActorFactoryDecal, "ActorFactoryDecal Engine.Default__ActorFactoryDecal")()); }
	// WARNING: Property 'DecalMaterial' has the same name as a defined type!
}
