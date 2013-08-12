module UnrealScript.TribesGame.TrProj_TacticalStrike;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_CallInBase;

extern(C++) interface TrProj_TacticalStrike : TrProj_CallInBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_TacticalStrike")); }
}
