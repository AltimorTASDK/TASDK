module UnrealScript.TribesGame.TrDmgType_RepairTool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_RepairTool : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_RepairTool")); }
	private static __gshared TrDmgType_RepairTool mDefaultProperties;
	@property final static TrDmgType_RepairTool DefaultProperties() { mixin(MGDPC("TrDmgType_RepairTool", "TrDmgType_RepairTool TribesGame.Default__TrDmgType_RepairTool")); }
}
