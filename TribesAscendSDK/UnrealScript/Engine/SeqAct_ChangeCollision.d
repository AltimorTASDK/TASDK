module UnrealScript.Engine.SeqAct_ChangeCollision;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ChangeCollision : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_ChangeCollision")()); }
	private static __gshared SeqAct_ChangeCollision mDefaultProperties;
	@property final static SeqAct_ChangeCollision DefaultProperties() { mixin(MGDPC!(SeqAct_ChangeCollision, "SeqAct_ChangeCollision Engine.Default__SeqAct_ChangeCollision")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_ChangeCollision.GetObjClassVersion")()); }
	}
	@property final
	{
		@property final auto ref Actor.ECollisionType CollisionType() { mixin(MGPC!("Actor.ECollisionType", 236)()); }
		bool bCollideActors() { mixin(MGBPC!(232, 0x1)()); }
		bool bCollideActors(bool val) { mixin(MSBPC!(232, 0x1)()); }
		bool bBlockActors() { mixin(MGBPC!(232, 0x2)()); }
		bool bBlockActors(bool val) { mixin(MSBPC!(232, 0x2)()); }
		bool bIgnoreEncroachers() { mixin(MGBPC!(232, 0x4)()); }
		bool bIgnoreEncroachers(bool val) { mixin(MSBPC!(232, 0x4)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
