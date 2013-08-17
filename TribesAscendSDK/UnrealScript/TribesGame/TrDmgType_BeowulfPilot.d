module UnrealScript.TribesGame.TrDmgType_BeowulfPilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_BeowulfPilot : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_BeowulfPilot")()); }
	private static __gshared TrDmgType_BeowulfPilot mDefaultProperties;
	@property final static TrDmgType_BeowulfPilot DefaultProperties() { mixin(MGDPC!(TrDmgType_BeowulfPilot, "TrDmgType_BeowulfPilot TribesGame.Default__TrDmgType_BeowulfPilot")()); }
}
