module UnrealScript.Engine.DecalActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DecalActorBase;

extern(C++) interface DecalActor : DecalActorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DecalActor")()); }
	private static __gshared DecalActor mDefaultProperties;
	@property final static DecalActor DefaultProperties() { mixin(MGDPC!(DecalActor, "DecalActor Engine.Default__DecalActor")()); }
}
