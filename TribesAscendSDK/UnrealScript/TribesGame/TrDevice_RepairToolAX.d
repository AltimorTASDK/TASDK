module UnrealScript.TribesGame.TrDevice_RepairToolAX;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_RepairTool;

extern(C++) interface TrDevice_RepairToolAX : TrDevice_RepairTool
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_RepairToolAX")); }
	private static __gshared TrDevice_RepairToolAX mDefaultProperties;
	@property final static TrDevice_RepairToolAX DefaultProperties() { mixin(MGDPC("TrDevice_RepairToolAX", "TrDevice_RepairToolAX TribesGame.Default__TrDevice_RepairToolAX")); }
}
