module UnrealScript.Engine.SVehicleWheel;

import ScriptClasses;
import UnrealScript.Engine.SkelControlWheel;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Core.Component;

extern(C++) interface SVehicleWheel : Component
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SVehicleWheel")); }
	private static __gshared SVehicleWheel mDefaultProperties;
	@property final static SVehicleWheel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SVehicleWheel)("SVehicleWheel Engine.Default__SVehicleWheel")); }
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
			SkelControlWheel WheelControl() { return *cast(SkelControlWheel*)(cast(size_t)cast(void*)this + 104); }
			ScriptName SkelControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 96); }
			Vector WheelPosition() { return *cast(Vector*)(cast(size_t)cast(void*)this + 168); }
			float ContactForce() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
			float LongSlipRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
			float LatSlipAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
			float MotorTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			float SpinVel() { return *cast(float*)(cast(size_t)cast(void*)this + 180); }
			float LongImpulse() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			Vector LongDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 204); }
			float WheelRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float LatImpulse() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			Vector LatDirection() { return *cast(Vector*)(cast(size_t)cast(void*)this + 216); }
			ScriptName SlipParticleParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
			ScriptClass WheelPSCClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 260); }
			int WheelMaterialIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 256); }
			UObject.Pointer WheelShape() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 252); }
			float CurrentRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float SuspensionPosition() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float DesiredSuspensionPosition() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			Vector ContactNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 192); }
			float ParkedSlipFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float HandbrakeLatSlipFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			float HandbrakeLongSlipFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			float LatSlipFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float LongSlipFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			SVehicleWheel.EWheelSide Side() { return *cast(SVehicleWheel.EWheelSide*)(cast(size_t)cast(void*)this + 144); }
			ParticleSystem WheelParticleSystem() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 140); }
			float SuspensionSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			float SuspensionTravel() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			Vector BoneOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 116); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 108); }
			float SteerFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float ChassisTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float BrakeTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float Steer() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bWheelOnGround() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x20) != 0; }
		bool bWheelOnGround(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x20; } return val; }
		bool bIsSquealing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x10) != 0; }
		bool bIsSquealing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x10; } return val; }
		bool bCollidesPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x8) != 0; }
		bool bCollidesPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x8; } return val; }
		bool bCollidesVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x4) != 0; }
		bool bCollidesVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x4; } return val; }
		bool bHoverWheel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x2) != 0; }
		bool bHoverWheel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x2; } return val; }
		bool bPoweredWheel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bPoweredWheel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	}
}
