module UnrealScript.TribesGame.TrDevice_Lacerator;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_Lacerator : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Lacerator")); }
}
