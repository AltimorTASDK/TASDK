module UnrealScript.TribesGame.TrEffectForm_Shield;

import ScriptClasses;
import UnrealScript.TribesGame.TrEffectForm;

extern(C++) interface TrEffectForm_Shield : TrEffectForm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEffectForm_Shield")); }
	private static __gshared TrEffectForm_Shield mDefaultProperties;
	@property final static TrEffectForm_Shield DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrEffectForm_Shield)("TrEffectForm_Shield TribesGame.Default__TrEffectForm_Shield")); }
}
