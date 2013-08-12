module UnrealScript.TribesGame.TrAccolade_NotAmongEquals;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_NotAmongEquals : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_NotAmongEquals")); }
	private static __gshared TrAccolade_NotAmongEquals mDefaultProperties;
	@property final static TrAccolade_NotAmongEquals DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_NotAmongEquals)("TrAccolade_NotAmongEquals TribesGame.Default__TrAccolade_NotAmongEquals")); }
}
