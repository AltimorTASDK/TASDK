module UnrealScript.TribesGame.TrDmgType_HERCPilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_HERCPilot : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_HERCPilot")()); }
	private static __gshared TrDmgType_HERCPilot mDefaultProperties;
	@property final static TrDmgType_HERCPilot DefaultProperties() { mixin(MGDPC!(TrDmgType_HERCPilot, "TrDmgType_HERCPilot TribesGame.Default__TrDmgType_HERCPilot")()); }
}
