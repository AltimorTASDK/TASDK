module UnrealScript.TribesGame.TrAccolade_MultiKill_Team;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_MultiKill_Team : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_MultiKill_Team")); }
	private static __gshared TrAccolade_MultiKill_Team mDefaultProperties;
	@property final static TrAccolade_MultiKill_Team DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_MultiKill_Team)("TrAccolade_MultiKill_Team TribesGame.Default__TrAccolade_MultiKill_Team")); }
}
