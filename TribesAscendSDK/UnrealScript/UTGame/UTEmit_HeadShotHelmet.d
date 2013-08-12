module UnrealScript.UTGame.UTEmit_HeadShotHelmet;

import ScriptClasses;
import UnrealScript.UTGame.UTReplicatedEmitter;

extern(C++) interface UTEmit_HeadShotHelmet : UTReplicatedEmitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTEmit_HeadShotHelmet")); }
}
