module UnrealScript.TribesGame.TrProj_BeowulfPilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_BeowulfPilot : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_BeowulfPilot")); }
	private static __gshared TrProj_BeowulfPilot mDefaultProperties;
	@property final static TrProj_BeowulfPilot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_BeowulfPilot)("TrProj_BeowulfPilot TribesGame.Default__TrProj_BeowulfPilot")); }
}
