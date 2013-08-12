module UnrealScript.TribesGame.TrAnimNodeBlendByPhysics;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByPhysics : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNodeBlendByPhysics")); }
	private static __gshared TrAnimNodeBlendByPhysics mDefaultProperties;
	@property final static TrAnimNodeBlendByPhysics DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAnimNodeBlendByPhysics)("TrAnimNodeBlendByPhysics TribesGame.Default__TrAnimNodeBlendByPhysics")); }
	struct ChildrenBlendInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrAnimNodeBlendByPhysics.ChildrenBlendInfo")); }
		@property final auto ref
		{
			ScriptArray!(TrAnimNodeBlendByPhysics.ChildBlendInfo) m_ChildBlendInfo() { return *cast(ScriptArray!(TrAnimNodeBlendByPhysics.ChildBlendInfo)*)(cast(size_t)&this + 4); }
			Actor.EPhysics m_PhysicsState() { return *cast(Actor.EPhysics*)(cast(size_t)&this + 0); }
		}
	}
	struct ChildBlendInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrAnimNodeBlendByPhysics.ChildBlendInfo")); }
		@property final auto ref
		{
			float m_fBlendTime() { return *cast(float*)(cast(size_t)&this + 4); }
			Actor.EPhysics m_PhysicsState() { return *cast(Actor.EPhysics*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor.EPhysics) m_PhysicsChildren() { return *cast(ScriptArray!(Actor.EPhysics)*)(cast(size_t)cast(void*)this + 304); }
			ScriptArray!(TrAnimNodeBlendByPhysics.ChildrenBlendInfo) m_ChildrenBlendInfo() { return *cast(ScriptArray!(TrAnimNodeBlendByPhysics.ChildrenBlendInfo)*)(cast(size_t)cast(void*)this + 320); }
			int m_CurrentPhysicsChildIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 300); }
			Actor.EPhysics m_CurrentPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 297); }
			Actor.EPhysics m_LastPhysics() { return *cast(Actor.EPhysics*)(cast(size_t)cast(void*)this + 296); }
			TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 292); }
		}
		bool m_bDirectUnspecifiedPhysicsThroughChild0() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x1) != 0; }
		bool m_bDirectUnspecifiedPhysicsThroughChild0(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x1; } return val; }
	}
}
