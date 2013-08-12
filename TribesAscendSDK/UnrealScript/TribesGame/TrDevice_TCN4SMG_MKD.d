module UnrealScript.TribesGame.TrDevice_TCN4SMG_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_TCN4SMG;

extern(C++) interface TrDevice_TCN4SMG_MKD : TrDevice_TCN4SMG
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_TCN4SMG_MKD")); }
}
