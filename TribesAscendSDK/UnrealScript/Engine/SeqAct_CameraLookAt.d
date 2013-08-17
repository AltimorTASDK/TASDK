module UnrealScript.Engine.SeqAct_CameraLookAt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_CameraLookAt : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_CameraLookAt")()); }
	private static __gshared SeqAct_CameraLookAt mDefaultProperties;
	@property final static SeqAct_CameraLookAt DefaultProperties() { mixin(MGDPC!(SeqAct_CameraLookAt, "SeqAct_CameraLookAt Engine.Default__SeqAct_CameraLookAt")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_CameraLookAt.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			float RemainingTime() { mixin(MGPC!("float", 280)()); }
			float CameraFOV() { mixin(MGPC!("float", 276)()); }
			float TotalTime() { mixin(MGPC!("float", 272)()); }
			ScriptString TextDisplay() { mixin(MGPC!("ScriptString", 260)()); }
			ScriptName FocusBoneName() { mixin(MGPC!("ScriptName", 252)()); }
			UObject.Vector2D InFocusFOV() { mixin(MGPC!("UObject.Vector2D", 244)()); }
			UObject.Vector2D InterpSpeedRange() { mixin(MGPC!("UObject.Vector2D", 236)()); }
		}
		bool bCheckLineOfSight() { mixin(MGBPC!(232, 0x800)()); }
		bool bCheckLineOfSight(bool val) { mixin(MSBPC!(232, 0x800)()); }
		bool bUsedTimer() { mixin(MGBPC!(232, 0x400)()); }
		bool bUsedTimer(bool val) { mixin(MSBPC!(232, 0x400)()); }
		bool bDisableInput() { mixin(MGBPC!(232, 0x200)()); }
		bool bDisableInput(bool val) { mixin(MSBPC!(232, 0x200)()); }
		bool bLeaveCameraRotation() { mixin(MGBPC!(232, 0x100)()); }
		bool bLeaveCameraRotation(bool val) { mixin(MSBPC!(232, 0x100)()); }
		bool bToggleGodMode() { mixin(MGBPC!(232, 0x80)()); }
		bool bToggleGodMode(bool val) { mixin(MSBPC!(232, 0x80)()); }
		bool bRotatePlayerWithCamera() { mixin(MGBPC!(232, 0x40)()); }
		bool bRotatePlayerWithCamera(bool val) { mixin(MSBPC!(232, 0x40)()); }
		bool bAffectHead() { mixin(MGBPC!(232, 0x20)()); }
		bool bAffectHead(bool val) { mixin(MSBPC!(232, 0x20)()); }
		bool bIgnoreTrace() { mixin(MGBPC!(232, 0x10)()); }
		bool bIgnoreTrace(bool val) { mixin(MSBPC!(232, 0x10)()); }
		bool bTurnInPlace() { mixin(MGBPC!(232, 0x8)()); }
		bool bTurnInPlace(bool val) { mixin(MSBPC!(232, 0x8)()); }
		bool bAdjustCamera() { mixin(MGBPC!(232, 0x4)()); }
		bool bAdjustCamera(bool val) { mixin(MSBPC!(232, 0x4)()); }
		bool bAlwaysFocus() { mixin(MGBPC!(232, 0x2)()); }
		bool bAlwaysFocus(bool val) { mixin(MSBPC!(232, 0x2)()); }
		bool bAffectCamera() { mixin(MGBPC!(232, 0x1)()); }
		bool bAffectCamera(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
