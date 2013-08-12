module UnrealScript.TribesGame.TrAccolade_ArtilleryStrike;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_ArtilleryStrike : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_ArtilleryStrike")); }
	private static __gshared TrAccolade_ArtilleryStrike mDefaultProperties;
	@property final static TrAccolade_ArtilleryStrike DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_ArtilleryStrike)("TrAccolade_ArtilleryStrike TribesGame.Default__TrAccolade_ArtilleryStrike")); }
}
