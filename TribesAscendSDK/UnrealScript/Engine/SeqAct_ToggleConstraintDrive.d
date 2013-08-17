module UnrealScript.Engine.SeqAct_ToggleConstraintDrive;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ToggleConstraintDrive : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_ToggleConstraintDrive")()); }
	private static __gshared SeqAct_ToggleConstraintDrive mDefaultProperties;
	@property final static SeqAct_ToggleConstraintDrive DefaultProperties() { mixin(MGDPC!(SeqAct_ToggleConstraintDrive, "SeqAct_ToggleConstraintDrive Engine.Default__SeqAct_ToggleConstraintDrive")()); }
	@property final
	{
		bool bEnableLinearPositionDrive() { mixin(MGBPC!(232, 0x4)()); }
		bool bEnableLinearPositionDrive(bool val) { mixin(MSBPC!(232, 0x4)()); }
		bool bEnableLinearvelocityDrive() { mixin(MGBPC!(232, 0x8)()); }
		bool bEnableLinearvelocityDrive(bool val) { mixin(MSBPC!(232, 0x8)()); }
		bool bEnableAngularPositionDrive() { mixin(MGBPC!(232, 0x1)()); }
		bool bEnableAngularPositionDrive(bool val) { mixin(MSBPC!(232, 0x1)()); }
		bool bEnableAngularVelocityDrive() { mixin(MGBPC!(232, 0x2)()); }
		bool bEnableAngularVelocityDrive(bool val) { mixin(MSBPC!(232, 0x2)()); }
	}
}
