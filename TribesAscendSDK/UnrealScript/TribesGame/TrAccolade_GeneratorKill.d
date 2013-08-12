module UnrealScript.TribesGame.TrAccolade_GeneratorKill;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_GeneratorKill : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_GeneratorKill")); }
	private static __gshared TrAccolade_GeneratorKill mDefaultProperties;
	@property final static TrAccolade_GeneratorKill DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_GeneratorKill)("TrAccolade_GeneratorKill TribesGame.Default__TrAccolade_GeneratorKill")); }
}
