module UnrealScript.TribesGame.TrProj_Chaingun;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Chaingun : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_Chaingun")); }
	private static __gshared TrProj_Chaingun mDefaultProperties;
	@property final static TrProj_Chaingun DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_Chaingun)("TrProj_Chaingun TribesGame.Default__TrProj_Chaingun")); }
}
