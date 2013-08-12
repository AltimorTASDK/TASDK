module UnrealScript.TribesGame.TrDmgType_ArxShotgun;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ArxShotgun : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ArxShotgun")); }
	private static __gshared TrDmgType_ArxShotgun mDefaultProperties;
	@property final static TrDmgType_ArxShotgun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ArxShotgun)("TrDmgType_ArxShotgun TribesGame.Default__TrDmgType_ArxShotgun")); }
}
