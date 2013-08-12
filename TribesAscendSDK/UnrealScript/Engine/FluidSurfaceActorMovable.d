module UnrealScript.Engine.FluidSurfaceActorMovable;

import ScriptClasses;
import UnrealScript.Engine.FluidSurfaceActor;

extern(C++) interface FluidSurfaceActorMovable : FluidSurfaceActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FluidSurfaceActorMovable")); }
}
