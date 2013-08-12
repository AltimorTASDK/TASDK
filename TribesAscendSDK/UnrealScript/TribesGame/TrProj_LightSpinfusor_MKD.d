module UnrealScript.TribesGame.TrProj_LightSpinfusor_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_LightSpinfusor;

extern(C++) interface TrProj_LightSpinfusor_MKD : TrProj_LightSpinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_LightSpinfusor_MKD")); }
}
