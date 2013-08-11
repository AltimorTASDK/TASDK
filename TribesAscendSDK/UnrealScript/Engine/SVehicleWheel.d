module UnrealScript.Engine.SVehicleWheel;

import ScriptClasses;
import UnrealScript.Engine.SkelControlWheel;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.Component;

extern(C++) interface SVehicleWheel : Component
{
	enum EWheelSide : ubyte
	{
		SIDE_None = 0,
		SIDE_Left = 1,
		SIDE_Right = 2,
		SIDE_MAX = 3,
	}
	public @property final auto ref SkelControlWheel WheelControl() { return *cast(SkelControlWheel*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref ScriptName SkelControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref Vector WheelPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float ContactForce() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref float LongSlipRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref float LatSlipAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref float MotorTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float SpinVel() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref float LongImpulse() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref Vector LongDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref float WheelRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float LatImpulse() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref Vector LatDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ScriptName SlipParticleParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref ScriptClass WheelPSCClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref int WheelMaterialIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref UObject.Pointer WheelShape() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float CurrentRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float SuspensionPosition() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float DesiredSuspensionPosition() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref Vector ContactNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref float ParkedSlipFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref float HandbrakeLatSlipFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref float HandbrakeLongSlipFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float LatSlipFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float LongSlipFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref SVehicleWheel.EWheelSide Side() { return *cast(SVehicleWheel.EWheelSide*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ParticleSystem WheelParticleSystem() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float SuspensionSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float SuspensionTravel() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref Vector BoneOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float SteerFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final bool bWheelOnGround() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x20) != 0; }
	public @property final bool bWheelOnGround(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x20; } return val; }
	public @property final bool bIsSquealing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x10) != 0; }
	public @property final bool bIsSquealing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x10; } return val; }
	public @property final bool bCollidesPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x8) != 0; }
	public @property final bool bCollidesPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x8; } return val; }
	public @property final bool bCollidesVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x4) != 0; }
	public @property final bool bCollidesVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x4; } return val; }
	public @property final bool bHoverWheel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x2) != 0; }
	public @property final bool bHoverWheel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x2; } return val; }
	public @property final bool bPoweredWheel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
	public @property final bool bPoweredWheel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	public @property final auto ref float ChassisTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float BrakeTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float Steer() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
}
