module UnrealScript.UTGame.UTAnimBlendBySlotActive;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimBlendBySlotActive;

extern(C++) interface UTAnimBlendBySlotActive : UDKAnimBlendBySlotActive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendBySlotActive")); }
}
