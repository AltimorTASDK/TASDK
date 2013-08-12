module UnrealScript.TribesGame.TrPlayerInput_Spectator;

import ScriptClasses;
import UnrealScript.Engine.PlayerInput;

extern(C++) interface TrPlayerInput_Spectator : PlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerInput_Spectator")); }
	private static __gshared TrPlayerInput_Spectator mDefaultProperties;
	@property final static TrPlayerInput_Spectator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerInput_Spectator)("TrPlayerInput_Spectator TribesGame.Default__TrPlayerInput_Spectator")); }
}
