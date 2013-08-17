module UnrealScript.Engine.SVehicleSimTank;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SVehicleSimCar;

extern(C++) interface SVehicleSimTank : SVehicleSimCar
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SVehicleSimTank")()); }
	private static __gshared SVehicleSimTank mDefaultProperties;
	@property final static SVehicleSimTank DefaultProperties() { mixin(MGDPC!(SVehicleSimTank, "SVehicleSimTank Engine.Default__SVehicleSimTank")()); }
	@property final
	{
		auto ref
		{
			float TurnGripScaleRate() { mixin(MGPC!("float", 236)()); }
			float TurnMaxGripReduction() { mixin(MGPC!("float", 232)()); }
			float TurnInPlaceThrottle() { mixin(MGPC!("float", 228)()); }
			float SteeringLatStiffnessFactor() { mixin(MGPC!("float", 224)()); }
			float InsideTrackTorqueFactor() { mixin(MGPC!("float", 220)()); }
			float EngineDamping() { mixin(MGPC!("float", 216)()); }
			float MaxEngineTorque() { mixin(MGPC!("float", 212)()); }
			float RightTrackTorque() { mixin(MGPC!("float", 208)()); }
			float LeftTrackTorque() { mixin(MGPC!("float", 204)()); }
			float RightTrackVel() { mixin(MGPC!("float", 200)()); }
			float LeftTrackVel() { mixin(MGPC!("float", 196)()); }
		}
		bool bTurnInPlaceOnSteer() { mixin(MGBPC!(240, 0x1)()); }
		bool bTurnInPlaceOnSteer(bool val) { mixin(MSBPC!(240, 0x1)()); }
	}
}
