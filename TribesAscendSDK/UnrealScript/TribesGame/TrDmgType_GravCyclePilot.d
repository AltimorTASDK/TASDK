module UnrealScript.TribesGame.TrDmgType_GravCyclePilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_GravCyclePilot : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_GravCyclePilot")()); }
	private static __gshared TrDmgType_GravCyclePilot mDefaultProperties;
	@property final static TrDmgType_GravCyclePilot DefaultProperties() { mixin(MGDPC!(TrDmgType_GravCyclePilot, "TrDmgType_GravCyclePilot TribesGame.Default__TrDmgType_GravCyclePilot")()); }
}
