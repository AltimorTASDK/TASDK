module UnrealScript.Engine.ActorFactoryInteractiveFoliage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryStaticMesh;

extern(C++) interface ActorFactoryInteractiveFoliage : ActorFactoryStaticMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryInteractiveFoliage")()); }
	private static __gshared ActorFactoryInteractiveFoliage mDefaultProperties;
	@property final static ActorFactoryInteractiveFoliage DefaultProperties() { mixin(MGDPC!(ActorFactoryInteractiveFoliage, "ActorFactoryInteractiveFoliage Engine.Default__ActorFactoryInteractiveFoliage")()); }
}
