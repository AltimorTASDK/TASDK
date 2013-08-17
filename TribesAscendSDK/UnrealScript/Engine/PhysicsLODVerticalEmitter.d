module UnrealScript.Engine.PhysicsLODVerticalEmitter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface PhysicsLODVerticalEmitter : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PhysicsLODVerticalEmitter")()); }
	private static __gshared PhysicsLODVerticalEmitter mDefaultProperties;
	@property final static PhysicsLODVerticalEmitter DefaultProperties() { mixin(MGDPC!(PhysicsLODVerticalEmitter, "PhysicsLODVerticalEmitter Engine.Default__PhysicsLODVerticalEmitter")()); }
	@property final auto ref int ParticlePercentage() { mixin(MGPC!("int", 60)()); }
}
