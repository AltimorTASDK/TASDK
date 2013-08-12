module UnrealScript.TribesGame.TrDevice_HeavyTwinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Twinfusor;

extern(C++) interface TrDevice_HeavyTwinfusor : TrDevice_Twinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_HeavyTwinfusor")); }
}
