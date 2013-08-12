module UnrealScript.TribesGame.TrDmgType_ImpactBomblets;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ImpactBomblets : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ImpactBomblets")); }
	private static __gshared TrDmgType_ImpactBomblets mDefaultProperties;
	@property final static TrDmgType_ImpactBomblets DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ImpactBomblets)("TrDmgType_ImpactBomblets TribesGame.Default__TrDmgType_ImpactBomblets")); }
}
