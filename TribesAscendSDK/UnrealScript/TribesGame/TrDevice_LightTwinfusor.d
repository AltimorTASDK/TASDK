module UnrealScript.TribesGame.TrDevice_LightTwinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Twinfusor;

extern(C++) interface TrDevice_LightTwinfusor : TrDevice_Twinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_LightTwinfusor")); }
}
