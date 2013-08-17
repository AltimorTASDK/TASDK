module UnrealScript.TribesGame.TrDmgType_ShrikePilot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_ShrikePilot : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_ShrikePilot")); }
	private static __gshared TrDmgType_ShrikePilot mDefaultProperties;
	@property final static TrDmgType_ShrikePilot DefaultProperties() { mixin(MGDPC("TrDmgType_ShrikePilot", "TrDmgType_ShrikePilot TribesGame.Default__TrDmgType_ShrikePilot")); }
}
