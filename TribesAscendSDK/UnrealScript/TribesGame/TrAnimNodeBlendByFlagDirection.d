module UnrealScript.TribesGame.TrAnimNodeBlendByFlagDirection;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeAdditiveBlending;
import UnrealScript.TribesGame.TrFlagBase;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByFlagDirection : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendByFlagDirection")); }
	enum EFlagAnimTypes : ubyte
	{
		FlagAnim_Idle = 0,
		FlagAnim_Forward = 1,
		FlagAnim_Back = 2,
		FlagAnim_Left = 3,
		FlagAnim_Right = 4,
		FlagAnim_Up = 5,
		FlagAnim_Down = 6,
		FlagAnim_None = 7,
		FlagAnim_MAX = 8,
	}
	@property final auto ref
	{
		float m_fIdleBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
		float m_fIdleBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
		AnimNodeAdditiveBlending m_AdditiveBlendNode() { return *cast(AnimNodeAdditiveBlending*)(cast(size_t)cast(void*)this + 312); }
		ScriptName m_nmAdditiveAnimNodeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 304); }
		float m_fIdleSpeedSizeSq() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
		TrFlagBase m_TrFlagOwner() { return *cast(TrFlagBase*)(cast(size_t)cast(void*)this + 296); }
		TrAnimNodeBlendByFlagDirection.EFlagAnimTypes LastDirection() { return *cast(TrAnimNodeBlendByFlagDirection.EFlagAnimTypes*)(cast(size_t)cast(void*)this + 292); }
	}
}
