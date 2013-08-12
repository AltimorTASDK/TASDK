module UnrealScript.TribesGame.TrDmgType_GravCyclePilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_GravCyclePilot : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_GravCyclePilot")); }
	private static __gshared TrDmgType_GravCyclePilot mDefaultProperties;
	@property final static TrDmgType_GravCyclePilot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_GravCyclePilot)("TrDmgType_GravCyclePilot TribesGame.Default__TrDmgType_GravCyclePilot")); }
}
