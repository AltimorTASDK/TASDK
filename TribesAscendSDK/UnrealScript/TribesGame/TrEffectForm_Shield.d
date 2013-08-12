module UnrealScript.TribesGame.TrEffectForm_Shield;

import ScriptClasses;
import UnrealScript.TribesGame.TrEffectForm;

extern(C++) interface TrEffectForm_Shield : TrEffectForm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEffectForm_Shield")); }
}
