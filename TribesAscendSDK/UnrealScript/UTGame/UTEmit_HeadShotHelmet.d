module UnrealScript.UTGame.UTEmit_HeadShotHelmet;

import ScriptClasses;
import UnrealScript.UTGame.UTReplicatedEmitter;

extern(C++) interface UTEmit_HeadShotHelmet : UTReplicatedEmitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTEmit_HeadShotHelmet")); }
	private static __gshared UTEmit_HeadShotHelmet mDefaultProperties;
	@property final static UTEmit_HeadShotHelmet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTEmit_HeadShotHelmet)("UTEmit_HeadShotHelmet UTGame.Default__UTEmit_HeadShotHelmet")); }
}
