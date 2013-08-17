module UnrealScript.Engine.RB_ConstraintActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.RB_ConstraintInstance;
import UnrealScript.Engine.RB_ConstraintSetup;
import UnrealScript.Engine.SeqAct_ToggleConstraintDrive;
import UnrealScript.Engine.RigidBodyBase;
import UnrealScript.Engine.SeqAct_Destroy;

extern(C++) interface RB_ConstraintActor : RigidBodyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_ConstraintActor")()); }
	private static __gshared RB_ConstraintActor mDefaultProperties;
	@property final static RB_ConstraintActor DefaultProperties() { mixin(MGDPC!(RB_ConstraintActor, "RB_ConstraintActor Engine.Default__RB_ConstraintActor")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetDisableCollision;
			ScriptFunction mInitConstraint;
			ScriptFunction mTermConstraint;
			ScriptFunction mOnDestroy;
			ScriptFunction mOnToggle;
			ScriptFunction mOnToggleConstraintDrive;
		}
		public @property static final
		{
			ScriptFunction SetDisableCollision() { mixin(MGF!("mSetDisableCollision", "Function Engine.RB_ConstraintActor.SetDisableCollision")()); }
			ScriptFunction InitConstraint() { mixin(MGF!("mInitConstraint", "Function Engine.RB_ConstraintActor.InitConstraint")()); }
			ScriptFunction TermConstraint() { mixin(MGF!("mTermConstraint", "Function Engine.RB_ConstraintActor.TermConstraint")()); }
			ScriptFunction OnDestroy() { mixin(MGF!("mOnDestroy", "Function Engine.RB_ConstraintActor.OnDestroy")()); }
			ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.RB_ConstraintActor.OnToggle")()); }
			ScriptFunction OnToggleConstraintDrive() { mixin(MGF!("mOnToggleConstraintDrive", "Function Engine.RB_ConstraintActor.OnToggleConstraintDrive")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Actor PulleyPivotActor2() { mixin(MGPC!("Actor", 500)()); }
			Actor PulleyPivotActor1() { mixin(MGPC!("Actor", 496)()); }
			RB_ConstraintInstance ConstraintInstance() { mixin(MGPC!("RB_ConstraintInstance", 488)()); }
			RB_ConstraintSetup ConstraintSetup() { mixin(MGPC!("RB_ConstraintSetup", 484)()); }
			Actor ConstraintActor2() { mixin(MGPC!("Actor", 480)()); }
			Actor ConstraintActor1() { mixin(MGPC!("Actor", 476)()); }
		}
		bool bUpdateActor2RefFrame() { mixin(MGBPC!(492, 0x4)()); }
		bool bUpdateActor2RefFrame(bool val) { mixin(MSBPC!(492, 0x4)()); }
		bool bUpdateActor1RefFrame() { mixin(MGBPC!(492, 0x2)()); }
		bool bUpdateActor1RefFrame(bool val) { mixin(MSBPC!(492, 0x2)()); }
		bool bDisableCollision() { mixin(MGBPC!(492, 0x1)()); }
		bool bDisableCollision(bool val) { mixin(MSBPC!(492, 0x1)()); }
	}
final:
	void SetDisableCollision(bool NewDisableCollision)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = NewDisableCollision;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDisableCollision, params.ptr, cast(void*)0);
	}
	void InitConstraint(Actor Actor1, Actor Actor2, ScriptName* Actor1Bone = null, ScriptName* Actor2Bone = null, float* BreakThreshold = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Actor1;
		*cast(Actor*)&params[4] = Actor2;
		if (Actor1Bone !is null)
			*cast(ScriptName*)&params[8] = *Actor1Bone;
		if (Actor2Bone !is null)
			*cast(ScriptName*)&params[16] = *Actor2Bone;
		if (BreakThreshold !is null)
			*cast(float*)&params[24] = *BreakThreshold;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitConstraint, params.ptr, cast(void*)0);
	}
	void TermConstraint()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TermConstraint, cast(void*)0, cast(void*)0);
	}
	void OnDestroy(SeqAct_Destroy Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Destroy*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDestroy, params.ptr, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	void OnToggleConstraintDrive(SeqAct_ToggleConstraintDrive Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_ToggleConstraintDrive*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggleConstraintDrive, params.ptr, cast(void*)0);
	}
}
