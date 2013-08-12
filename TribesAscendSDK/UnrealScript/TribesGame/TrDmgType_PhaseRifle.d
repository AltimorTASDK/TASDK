module UnrealScript.TribesGame.TrDmgType_PhaseRifle;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_PhaseRifle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_PhaseRifle")); }
	private static __gshared TrDmgType_PhaseRifle mDefaultProperties;
	@property final static TrDmgType_PhaseRifle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_PhaseRifle)("TrDmgType_PhaseRifle TribesGame.Default__TrDmgType_PhaseRifle")); }
}
