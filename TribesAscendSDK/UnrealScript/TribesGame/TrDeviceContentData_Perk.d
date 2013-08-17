module UnrealScript.TribesGame.TrDeviceContentData_Perk;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceContentData;
import UnrealScript.Engine.MaterialInstanceConstant;

extern(C++) interface TrDeviceContentData_Perk : TrDeviceContentData
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDeviceContentData_Perk")()); }
	private static __gshared TrDeviceContentData_Perk mDefaultProperties;
	@property final static TrDeviceContentData_Perk DefaultProperties() { mixin(MGDPC!(TrDeviceContentData_Perk, "TrDeviceContentData_Perk TribesGame.Default__TrDeviceContentData_Perk")()); }
	@property final auto ref MaterialInstanceConstant m_PerkMaterial() { mixin(MGPC!(MaterialInstanceConstant, 92)()); }
}
