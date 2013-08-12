module UnrealScript.TribesGame.TrProj_GravCyclePilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_GravCyclePilot : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_GravCyclePilot")); }
	private static __gshared TrProj_GravCyclePilot mDefaultProperties;
	@property final static TrProj_GravCyclePilot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrProj_GravCyclePilot)("TrProj_GravCyclePilot TribesGame.Default__TrProj_GravCyclePilot")); }
}
