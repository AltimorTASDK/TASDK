module UnrealScript.TribesGame.TrDevice_RepairToolSD_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_RepairToolSD;

extern(C++) interface TrDevice_RepairToolSD_MKD : TrDevice_RepairToolSD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_RepairToolSD_MKD")()); }
	private static __gshared TrDevice_RepairToolSD_MKD mDefaultProperties;
	@property final static TrDevice_RepairToolSD_MKD DefaultProperties() { mixin(MGDPC!(TrDevice_RepairToolSD_MKD, "TrDevice_RepairToolSD_MKD TribesGame.Default__TrDevice_RepairToolSD_MKD")()); }
}
