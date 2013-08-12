module UnrealScript.UTGame.UTAnimBlendByHoverJump;

import ScriptClasses;
import UnrealScript.UTGame.UTAnimBlendByFall;

extern(C++) interface UTAnimBlendByHoverJump : UTAnimBlendByFall
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAnimBlendByHoverJump")); }
}
