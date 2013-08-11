module UnrealScript.TribesGame.TrAnimNodeBlendByGravCycleTilt;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface TrAnimNodeBlendByGravCycleTilt : AnimNodeBlendBase
{
public extern(D):
	@property final auto ref
	{
		float m_fDeadZone() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		ScriptName m_RootBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 252); }
		float m_fTiltScale() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float m_fTiltAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	}
}
