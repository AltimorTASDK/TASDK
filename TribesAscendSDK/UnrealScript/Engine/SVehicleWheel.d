module UnrealScript.Engine.SVehicleWheel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlWheel;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.Component;

extern(C++) interface SVehicleWheel : Component
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SVehicleWheel")()); }
	private static __gshared SVehicleWheel mDefaultProperties;
	@property final static SVehicleWheel DefaultProperties() { mixin(MGDPC!(SVehicleWheel, "SVehicleWheel Engine.Default__SVehicleWheel")()); }
	enum EWheelSide : ubyte
	{
		SIDE_None = 0,
		SIDE_Left = 1,
		SIDE_Right = 2,
		SIDE_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			SkelControlWheel WheelControl() { mixin(MGPC!(SkelControlWheel, 104)()); }
			ScriptName SkelControlName() { mixin(MGPC!(ScriptName, 96)()); }
			Vector WheelPosition() { mixin(MGPC!(Vector, 168)()); }
			float ContactForce() { mixin(MGPC!(float, 228)()); }
			float LongSlipRatio() { mixin(MGPC!(float, 184)()); }
			float LatSlipAngle() { mixin(MGPC!(float, 188)()); }
			float MotorTorque() { mixin(MGPC!(float, 76)()); }
			float SpinVel() { mixin(MGPC!(float, 180)()); }
			float LongImpulse() { mixin(MGPC!(float, 232)()); }
			Vector LongDirection() { mixin(MGPC!(Vector, 204)()); }
			float WheelRadius() { mixin(MGPC!(float, 128)()); }
			float LatImpulse() { mixin(MGPC!(float, 236)()); }
			Vector LatDirection() { mixin(MGPC!(Vector, 216)()); }
			ScriptName SlipParticleParamName() { mixin(MGPC!(ScriptName, 268)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'WheelParticleComp'!
			ScriptClass WheelPSCClass() { mixin(MGPC!(ScriptClass, 260)()); }
			int WheelMaterialIndex() { mixin(MGPC!(int, 256)()); }
			UObject.Pointer WheelShape() { mixin(MGPC!(UObject.Pointer, 252)()); }
			float CurrentRotation() { mixin(MGPC!(float, 248)()); }
			float SuspensionPosition() { mixin(MGPC!(float, 244)()); }
			float DesiredSuspensionPosition() { mixin(MGPC!(float, 240)()); }
			Vector ContactNormal() { mixin(MGPC!(Vector, 192)()); }
			float ParkedSlipFactor() { mixin(MGPC!(float, 164)()); }
			float HandbrakeLatSlipFactor() { mixin(MGPC!(float, 160)()); }
			float HandbrakeLongSlipFactor() { mixin(MGPC!(float, 156)()); }
			float LatSlipFactor() { mixin(MGPC!(float, 152)()); }
			float LongSlipFactor() { mixin(MGPC!(float, 148)()); }
			SVehicleWheel.EWheelSide Side() { mixin(MGPC!(SVehicleWheel.EWheelSide, 144)()); }
			ParticleSystem WheelParticleSystem() { mixin(MGPC!(ParticleSystem, 140)()); }
			float SuspensionSpeed() { mixin(MGPC!(float, 136)()); }
			float SuspensionTravel() { mixin(MGPC!(float, 132)()); }
			Vector BoneOffset() { mixin(MGPC!(Vector, 116)()); }
			ScriptName BoneName() { mixin(MGPC!(ScriptName, 108)()); }
			float SteerFactor() { mixin(MGPC!(float, 92)()); }
			float ChassisTorque() { mixin(MGPC!(float, 84)()); }
			float BrakeTorque() { mixin(MGPC!(float, 80)()); }
			float Steer() { mixin(MGPC!(float, 72)()); }
		}
		bool bWheelOnGround() { mixin(MGBPC!(88, 0x20)()); }
		bool bWheelOnGround(bool val) { mixin(MSBPC!(88, 0x20)()); }
		bool bIsSquealing() { mixin(MGBPC!(88, 0x10)()); }
		bool bIsSquealing(bool val) { mixin(MSBPC!(88, 0x10)()); }
		bool bCollidesPawns() { mixin(MGBPC!(88, 0x8)()); }
		bool bCollidesPawns(bool val) { mixin(MSBPC!(88, 0x8)()); }
		bool bCollidesVehicles() { mixin(MGBPC!(88, 0x4)()); }
		bool bCollidesVehicles(bool val) { mixin(MSBPC!(88, 0x4)()); }
		bool bHoverWheel() { mixin(MGBPC!(88, 0x2)()); }
		bool bHoverWheel(bool val) { mixin(MSBPC!(88, 0x2)()); }
		bool bPoweredWheel() { mixin(MGBPC!(88, 0x1)()); }
		bool bPoweredWheel(bool val) { mixin(MSBPC!(88, 0x1)()); }
	}
}
