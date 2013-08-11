module UnrealScript.TribesGame.TrAnimNodeBlendByPhysics;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByPhysics : TrAnimNodeBlendList
{
	struct ChildrenBlendInfo
	{
		public @property final auto ref ScriptArray!(TrAnimNodeBlendByPhysics.ChildBlendInfo) m_ChildBlendInfo() { return *cast(ScriptArray!(TrAnimNodeBlendByPhysics.ChildBlendInfo)*)(cast(size_t)&this + 4); }
		private ubyte __m_ChildBlendInfo[12];
		public @property final auto ref Actor.EPhysics m_PhysicsState() { return *cast(Actor.EPhysics*)(cast(size_t)&this + 0); }
		private ubyte __m_PhysicsState[1];
	}
	struct ChildBlendInfo
	{
		public @property final auto ref float m_fBlendTime() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __m_fBlendTime[4];
		public @property final auto ref Actor.EPhysics m_PhysicsState() { return *cast(Actor.EPhysics*)(cast(size_t)&this + 0); }
		private ubyte __m_PhysicsState[1];
	}
	public @property final auto ref ScriptArray!(Actor.EPhysics) m_PhysicsChildren() { return *cast(ScriptArray!(Actor.EPhysics)*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref ScriptArray!(TrAnimNodeBlendByPhysics.ChildrenBlendInfo) m_ChildrenBlendInfo() { return *cast(ScriptArray!(TrAnimNodeBlendByPhysics.ChildrenBlendInfo)*)(cast(size_t)cast(void*)this + 320); }
	public @property final bool m_bDirectUnspecifiedPhysicsThroughChild0() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x1) != 0; }
	public @property final bool m_bDirectUnspecifiedPhysicsThroughChild0(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x1; } return val; }
	public @property final auto ref int m_CurrentPhysicsChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref Actor.EPhysics m_CurrentPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 297); }
	public @property final auto ref Actor.EPhysics m_LastPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 292); }
}
