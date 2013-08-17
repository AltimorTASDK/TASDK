module UnrealScript.TribesGame.TrDmgType_RepairToolAX;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_RepairTool;

extern(C++) interface TrDmgType_RepairToolAX : TrDmgType_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_RepairToolAX")); }
	private static __gshared TrDmgType_RepairToolAX mDefaultProperties;
	@property final static TrDmgType_RepairToolAX DefaultProperties() { mixin(MGDPC("TrDmgType_RepairToolAX", "TrDmgType_RepairToolAX TribesGame.Default__TrDmgType_RepairToolAX")); }
}
