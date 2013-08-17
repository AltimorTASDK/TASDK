module UnrealScript.TribesGame.TrAnimNodeBlendByPhysics;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByPhysics : TrAnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAnimNodeBlendByPhysics")()); }
	private static __gshared TrAnimNodeBlendByPhysics mDefaultProperties;
	@property final static TrAnimNodeBlendByPhysics DefaultProperties() { mixin(MGDPC!(TrAnimNodeBlendByPhysics, "TrAnimNodeBlendByPhysics TribesGame.Default__TrAnimNodeBlendByPhysics")()); }
	struct ChildrenBlendInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrAnimNodeBlendByPhysics.ChildrenBlendInfo")()); }
		@property final auto ref
		{
			ScriptArray!(TrAnimNodeBlendByPhysics.ChildBlendInfo) m_ChildBlendInfo() { mixin(MGPS!(ScriptArray!(TrAnimNodeBlendByPhysics.ChildBlendInfo), 4)()); }
			Actor.EPhysics m_PhysicsState() { mixin(MGPS!(Actor.EPhysics, 0)()); }
		}
	}
	struct ChildBlendInfo
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrAnimNodeBlendByPhysics.ChildBlendInfo")()); }
		@property final auto ref
		{
			float m_fBlendTime() { mixin(MGPS!(float, 4)()); }
			Actor.EPhysics m_PhysicsState() { mixin(MGPS!(Actor.EPhysics, 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor.EPhysics) m_PhysicsChildren() { mixin(MGPC!(ScriptArray!(Actor.EPhysics), 304)()); }
			ScriptArray!(TrAnimNodeBlendByPhysics.ChildrenBlendInfo) m_ChildrenBlendInfo() { mixin(MGPC!(ScriptArray!(TrAnimNodeBlendByPhysics.ChildrenBlendInfo), 320)()); }
			int m_CurrentPhysicsChildIndex() { mixin(MGPC!(int, 300)()); }
			Actor.EPhysics m_CurrentPhysics() { mixin(MGPC!(Actor.EPhysics, 297)()); }
			Actor.EPhysics m_LastPhysics() { mixin(MGPC!(Actor.EPhysics, 296)()); }
			TrPawn m_TrPawn() { mixin(MGPC!(TrPawn, 292)()); }
		}
		bool m_bDirectUnspecifiedPhysicsThroughChild0() { mixin(MGBPC!(316, 0x1)()); }
		bool m_bDirectUnspecifiedPhysicsThroughChild0(bool val) { mixin(MSBPC!(316, 0x1)()); }
	}
}
