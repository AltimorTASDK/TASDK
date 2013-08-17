module UnrealScript.Engine.SplineLoftActorMovable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SplineLoftActor;

extern(C++) interface SplineLoftActorMovable : SplineLoftActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SplineLoftActorMovable")()); }
	private static __gshared SplineLoftActorMovable mDefaultProperties;
	@property final static SplineLoftActorMovable DefaultProperties() { mixin(MGDPC!(SplineLoftActorMovable, "SplineLoftActorMovable Engine.Default__SplineLoftActorMovable")()); }
}
