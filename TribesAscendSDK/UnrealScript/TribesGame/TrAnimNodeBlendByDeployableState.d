module UnrealScript.TribesGame.TrAnimNodeBlendByDeployableState;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByDeployableState : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendByDeployableState")); }
	@property final auto ref TrDeployable m_TrDeployable() { return *cast(TrDeployable*)(cast(size_t)cast(void*)this + 292); }
}
