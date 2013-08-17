module UnrealScript.Engine.DecalActorBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface DecalActorBase : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DecalActorBase")); }
	private static __gshared DecalActorBase mDefaultProperties;
	@property final static DecalActorBase DefaultProperties() { mixin(MGDPC("DecalActorBase", "DecalActorBase Engine.Default__DecalActorBase")); }
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Decal'!
}
