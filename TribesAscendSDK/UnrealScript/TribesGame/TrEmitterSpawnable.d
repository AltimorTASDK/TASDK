module UnrealScript.TribesGame.TrEmitterSpawnable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.EmitterSpawnable;

extern(C++) interface TrEmitterSpawnable : EmitterSpawnable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEmitterSpawnable")()); }
	private static __gshared TrEmitterSpawnable mDefaultProperties;
	@property final static TrEmitterSpawnable DefaultProperties() { mixin(MGDPC!(TrEmitterSpawnable, "TrEmitterSpawnable TribesGame.Default__TrEmitterSpawnable")()); }
}
