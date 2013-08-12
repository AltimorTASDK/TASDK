module UnrealScript.UTGame.UTEmit_BloodSpray;

import ScriptClasses;
import UnrealScript.UTGame.UTEmit_HitEffect;

extern(C++) interface UTEmit_BloodSpray : UTEmit_HitEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTEmit_BloodSpray")); }
}
