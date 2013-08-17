module UnrealScript.Engine.FluidSurfaceActorMovable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.FluidSurfaceActor;

extern(C++) interface FluidSurfaceActorMovable : FluidSurfaceActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FluidSurfaceActorMovable")()); }
	private static __gshared FluidSurfaceActorMovable mDefaultProperties;
	@property final static FluidSurfaceActorMovable DefaultProperties() { mixin(MGDPC!(FluidSurfaceActorMovable, "FluidSurfaceActorMovable Engine.Default__FluidSurfaceActorMovable")()); }
}
