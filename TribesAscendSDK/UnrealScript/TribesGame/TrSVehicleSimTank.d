module UnrealScript.TribesGame.TrSVehicleSimTank;

import UnrealScript.Engine.SVehicleSimTank;

extern(C++) interface TrSVehicleSimTank : SVehicleSimTank
{
public extern(D):
	@property final auto ref
	{
		float m_fVelocityChangeDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float m_fLastDirectionNudgeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	}
}
