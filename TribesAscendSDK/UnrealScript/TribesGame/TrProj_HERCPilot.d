module UnrealScript.TribesGame.TrProj_HERCPilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_HERCPilot : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_HERCPilot")); }
	private static __gshared TrProj_HERCPilot mDefaultProperties;
	@property final static TrProj_HERCPilot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_HERCPilot)("TrProj_HERCPilot TribesGame.Default__TrProj_HERCPilot")); }
}
