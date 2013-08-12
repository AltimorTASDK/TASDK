module UnrealScript.TribesGame.TrDevice_SpinfusorD_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_SpinfusorD;

extern(C++) interface TrDevice_SpinfusorD_MKD : TrDevice_SpinfusorD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_SpinfusorD_MKD")); }
}
