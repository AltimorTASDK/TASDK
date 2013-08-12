module UnrealScript.UTGame.UTGameInteraction;

import ScriptClasses;
import UnrealScript.UDKBase.UDKGameInteraction;

extern(C++) interface UTGameInteraction : UDKGameInteraction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGameInteraction")); }
}
