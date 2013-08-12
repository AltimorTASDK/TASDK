module UnrealScript.TribesGame.TrDevice_LightSpinfusor_100X;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Spinfusor;

extern(C++) interface TrDevice_LightSpinfusor_100X : TrDevice_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_LightSpinfusor_100X")); }
}
