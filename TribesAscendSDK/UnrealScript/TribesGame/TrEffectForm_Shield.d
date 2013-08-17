module UnrealScript.TribesGame.TrEffectForm_Shield;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrEffectForm;

extern(C++) interface TrEffectForm_Shield : TrEffectForm
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEffectForm_Shield")()); }
	private static __gshared TrEffectForm_Shield mDefaultProperties;
	@property final static TrEffectForm_Shield DefaultProperties() { mixin(MGDPC!(TrEffectForm_Shield, "TrEffectForm_Shield TribesGame.Default__TrEffectForm_Shield")()); }
}
