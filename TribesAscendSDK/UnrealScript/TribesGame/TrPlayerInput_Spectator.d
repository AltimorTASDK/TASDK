module UnrealScript.TribesGame.TrPlayerInput_Spectator;

import ScriptClasses;
import UnrealScript.Engine.PlayerInput;

extern(C++) interface TrPlayerInput_Spectator : PlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerInput_Spectator")); }
}
