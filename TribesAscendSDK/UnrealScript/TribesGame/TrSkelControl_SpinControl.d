module UnrealScript.TribesGame.TrSkelControl_SpinControl;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface TrSkelControl_SpinControl : SkelControlSingleBone
{
	public @property final auto ref float m_fSpinDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float m_fSpinUpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float m_TimeToInterpToTargetRotation() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref Rotator m_TargetRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float m_fCurrentDegreesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final bool m_bRotateToTargetRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x10) != 0; }
	public @property final bool m_bRotateToTargetRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x10; } return val; }
	public @property final bool m_bSpinningDown() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x8) != 0; }
	public @property final bool m_bSpinningDown(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x8; } return val; }
	public @property final bool m_bSpinningUp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x4) != 0; }
	public @property final bool m_bSpinningUp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x4; } return val; }
	public @property final bool m_bIsSpinning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x2) != 0; }
	public @property final bool m_bIsSpinning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x2; } return val; }
	public @property final bool m_PreviewStartStop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x1) != 0; }
	public @property final bool m_PreviewStartStop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x1; } return val; }
	public @property final auto ref Vector m_vAxis() { return *cast(Vector*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float m_fDegreesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	final void Spin(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112380], params.ptr, cast(void*)0);
	}
	final void SpinToTargetRotation(Rotator TargetRotation, float Time, bool bReset)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Rotator*)params.ptr = TargetRotation;
		*cast(float*)&params[12] = Time;
		*cast(bool*)&params[16] = bReset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112382], params.ptr, cast(void*)0);
	}
}
