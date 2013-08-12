module UnrealScript.TribesGame.TrAccolade_OneManArmy;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_OneManArmy : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_OneManArmy")); }
	private static __gshared TrAccolade_OneManArmy mDefaultProperties;
	@property final static TrAccolade_OneManArmy DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_OneManArmy)("TrAccolade_OneManArmy TribesGame.Default__TrAccolade_OneManArmy")); }
}
