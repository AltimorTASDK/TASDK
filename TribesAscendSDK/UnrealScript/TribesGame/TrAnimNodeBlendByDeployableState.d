module UnrealScript.TribesGame.TrAnimNodeBlendByDeployableState;

import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByDeployableState : TrAnimNodeBlendList
{
public extern(D):
	@property final auto ref TrDeployable m_TrDeployable() { return *cast(TrDeployable*)(cast(size_t)cast(void*)this + 292); }
}
