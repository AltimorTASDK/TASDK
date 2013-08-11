module UnrealScript.TribesGame.TrDeviceContentData_Perk;

import UnrealScript.TribesGame.TrDeviceContentData;
import UnrealScript.Engine.MaterialInstanceConstant;

extern(C++) interface TrDeviceContentData_Perk : TrDeviceContentData
{
public extern(D):
	@property final auto ref MaterialInstanceConstant m_PerkMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 92); }
}
