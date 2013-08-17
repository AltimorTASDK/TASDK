module UnrealScript.TribesGame.TrAnimNodeBlendByTankSteering;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAnimNodeBlendByTankSteering : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNodeBlendByTankSteering")); }
	private static __gshared TrAnimNodeBlendByTankSteering mDefaultProperties;
	@property final static TrAnimNodeBlendByTankSteering DefaultProperties() { mixin(MGDPC("TrAnimNodeBlendByTankSteering", "TrAnimNodeBlendByTankSteering TribesGame.Default__TrAnimNodeBlendByTankSteering")); }
	@property final auto ref TrVehicle m_TrVehicle() { mixin(MGPC("TrVehicle", 292)); }
}
