module UnrealScript.TribesGame.TrAttachment_RepairDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_RepairDeployable : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAttachment_RepairDeployable")); }
	private static __gshared TrAttachment_RepairDeployable mDefaultProperties;
	@property final static TrAttachment_RepairDeployable DefaultProperties() { mixin(MGDPC("TrAttachment_RepairDeployable", "TrAttachment_RepairDeployable TribesGame.Default__TrAttachment_RepairDeployable")); }
}
