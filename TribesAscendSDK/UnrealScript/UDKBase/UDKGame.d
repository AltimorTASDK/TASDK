module UnrealScript.UDKBase.UDKGame;

import ScriptClasses;
import UnrealScript.GameFramework.FrameworkGame;

extern(C++) interface UDKGame : FrameworkGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKGame")); }
	private static __gshared UDKGame mDefaultProperties;
	@property final static UDKGame DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKGame)("UDKGame UDKBase.Default__UDKGame")); }
}
