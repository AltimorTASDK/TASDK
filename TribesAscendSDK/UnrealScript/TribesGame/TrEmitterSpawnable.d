module UnrealScript.TribesGame.TrEmitterSpawnable;

import ScriptClasses;
import UnrealScript.Engine.EmitterSpawnable;

extern(C++) interface TrEmitterSpawnable : EmitterSpawnable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEmitterSpawnable")); }
}
