module UnrealScript.TribesGame.TrProj_HeavySpinfusor_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_HeavySpinfusor;

extern(C++) interface TrProj_HeavySpinfusor_MKD : TrProj_HeavySpinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_HeavySpinfusor_MKD")); }
}
