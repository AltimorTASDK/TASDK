module UnrealScript.TribesGame.TrDevice_Claymore_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Claymore;

extern(C++) interface TrDevice_Claymore_MKD : TrDevice_Claymore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Claymore_MKD")); }
}
