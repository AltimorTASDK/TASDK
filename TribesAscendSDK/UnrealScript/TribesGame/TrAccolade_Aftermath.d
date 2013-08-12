module UnrealScript.TribesGame.TrAccolade_Aftermath;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_Aftermath : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_Aftermath")); }
	private static __gshared TrAccolade_Aftermath mDefaultProperties;
	@property final static TrAccolade_Aftermath DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_Aftermath)("TrAccolade_Aftermath TribesGame.Default__TrAccolade_Aftermath")); }
}
