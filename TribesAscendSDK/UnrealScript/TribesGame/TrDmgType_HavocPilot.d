module UnrealScript.TribesGame.TrDmgType_HavocPilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_HavocPilot : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_HavocPilot")); }
	private static __gshared TrDmgType_HavocPilot mDefaultProperties;
	@property final static TrDmgType_HavocPilot DefaultProperties() { mixin(MGDPC("TrDmgType_HavocPilot", "TrDmgType_HavocPilot TribesGame.Default__TrDmgType_HavocPilot")); }
}
