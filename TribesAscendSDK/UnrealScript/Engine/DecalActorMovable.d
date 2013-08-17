module UnrealScript.Engine.DecalActorMovable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DecalActorBase;

extern(C++) interface DecalActorMovable : DecalActorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DecalActorMovable")); }
	private static __gshared DecalActorMovable mDefaultProperties;
	@property final static DecalActorMovable DefaultProperties() { mixin(MGDPC("DecalActorMovable", "DecalActorMovable Engine.Default__DecalActorMovable")); }
}
