module UnrealScript.TribesGame.TrSVehicleSimTank;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SVehicleSimTank;

extern(C++) interface TrSVehicleSimTank : SVehicleSimTank
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSVehicleSimTank")); }
	private static __gshared TrSVehicleSimTank mDefaultProperties;
	@property final static TrSVehicleSimTank DefaultProperties() { mixin(MGDPC("TrSVehicleSimTank", "TrSVehicleSimTank TribesGame.Default__TrSVehicleSimTank")); }
	@property final auto ref
	{
		float m_fVelocityChangeDamping() { mixin(MGPC("float", 248)); }
		float m_fLastDirectionNudgeTime() { mixin(MGPC("float", 244)); }
	}
}
