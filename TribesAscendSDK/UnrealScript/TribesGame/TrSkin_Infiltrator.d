module UnrealScript.TribesGame.TrSkin_Infiltrator;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Infiltrator : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin_Infiltrator")); }
}
