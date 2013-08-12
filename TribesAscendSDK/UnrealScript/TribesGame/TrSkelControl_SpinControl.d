module UnrealScript.TribesGame.TrSkelControl_SpinControl;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface TrSkelControl_SpinControl : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkelControl_SpinControl")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpin;
			ScriptFunction mSpinToTargetRotation;
		}
		public @property static final
		{
			ScriptFunction Spin() { return mSpin ? mSpin : (mSpin = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSkelControl_SpinControl.Spin")); }
			ScriptFunction SpinToTargetRotation() { return mSpinToTargetRotation ? mSpinToTargetRotation : (mSpinToTargetRotation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSkelControl_SpinControl.SpinToTargetRotation")); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fSpinDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			float m_fSpinUpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float m_TimeToInterpToTargetRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			Rotator m_TargetRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 268); }
			float m_fCurrentDegreesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			Vector m_vAxis() { return *cast(Vector*)(cast(size_t)cast(void*)this + 240); }
			float m_fDegreesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		}
		bool m_bRotateToTargetRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x10) != 0; }
		bool m_bRotateToTargetRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x10; } return val; }
		bool m_bSpinningDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x8) != 0; }
		bool m_bSpinningDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x8; } return val; }
		bool m_bSpinningUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x4) != 0; }
		bool m_bSpinningUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x4; } return val; }
		bool m_bIsSpinning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x2) != 0; }
		bool m_bIsSpinning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x2; } return val; }
		bool m_PreviewStartStop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x1) != 0; }
		bool m_PreviewStartStop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x1; } return val; }
	}
final:
	void Spin(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.Spin, params.ptr, cast(void*)0);
	}
	void SpinToTargetRotation(Rotator TargetRotation, float Time, bool bReset)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Rotator*)params.ptr = TargetRotation;
		*cast(float*)&params[12] = Time;
		*cast(bool*)&params[16] = bReset;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpinToTargetRotation, params.ptr, cast(void*)0);
	}
}
