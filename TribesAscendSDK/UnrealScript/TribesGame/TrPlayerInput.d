module UnrealScript.TribesGame.TrPlayerInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrHUD;

extern(C++) interface TrPlayerInput : PlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPlayerInput")); }
	private static __gshared TrPlayerInput mDefaultProperties;
	@property final static TrPlayerInput DefaultProperties() { mixin(MGDPC("TrPlayerInput", "TrPlayerInput TribesGame.Default__TrPlayerInput")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInVGSClassMode;
			ScriptFunction mInVGSLoadoutMode;
			ScriptFunction mGetVGSClassId;
			ScriptFunction mPlaySpottedCommand;
			ScriptFunction mInitInputSystem;
			ScriptFunction mAdjustMouseSensitivity;
			ScriptFunction mIsMouseSmoothEnabled;
			ScriptFunction mOnVGSKeyPressed;
			ScriptFunction mOnVGSNumKeyPressed;
			ScriptFunction mPlayVGSCommand;
			ScriptFunction mIsValidVGSTarget;
			ScriptFunction mStartVGS;
			ScriptFunction mStartVGSClasses;
			ScriptFunction mStartVGSLoadouts;
			ScriptFunction mEndVGS;
			ScriptFunction mSetHUDTarget;
			ScriptFunction mGetStickAngle;
			ScriptFunction mPushAnalogJoysticksToScaleform;
			ScriptFunction mPreProcessInput;
			ScriptFunction mPlayerInput;
			ScriptFunction mSetFlyingPitchSensitivity;
			ScriptFunction mSetFlyingYawSensitivity;
		}
		public @property static final
		{
			ScriptFunction InVGSClassMode() { mixin(MGF("mInVGSClassMode", "Function TribesGame.TrPlayerInput.InVGSClassMode")); }
			ScriptFunction InVGSLoadoutMode() { mixin(MGF("mInVGSLoadoutMode", "Function TribesGame.TrPlayerInput.InVGSLoadoutMode")); }
			ScriptFunction GetVGSClassId() { mixin(MGF("mGetVGSClassId", "Function TribesGame.TrPlayerInput.GetVGSClassId")); }
			ScriptFunction PlaySpottedCommand() { mixin(MGF("mPlaySpottedCommand", "Function TribesGame.TrPlayerInput.PlaySpottedCommand")); }
			ScriptFunction InitInputSystem() { mixin(MGF("mInitInputSystem", "Function TribesGame.TrPlayerInput.InitInputSystem")); }
			ScriptFunction AdjustMouseSensitivity() { mixin(MGF("mAdjustMouseSensitivity", "Function TribesGame.TrPlayerInput.AdjustMouseSensitivity")); }
			ScriptFunction IsMouseSmoothEnabled() { mixin(MGF("mIsMouseSmoothEnabled", "Function TribesGame.TrPlayerInput.IsMouseSmoothEnabled")); }
			ScriptFunction OnVGSKeyPressed() { mixin(MGF("mOnVGSKeyPressed", "Function TribesGame.TrPlayerInput.OnVGSKeyPressed")); }
			ScriptFunction OnVGSNumKeyPressed() { mixin(MGF("mOnVGSNumKeyPressed", "Function TribesGame.TrPlayerInput.OnVGSNumKeyPressed")); }
			ScriptFunction PlayVGSCommand() { mixin(MGF("mPlayVGSCommand", "Function TribesGame.TrPlayerInput.PlayVGSCommand")); }
			ScriptFunction IsValidVGSTarget() { mixin(MGF("mIsValidVGSTarget", "Function TribesGame.TrPlayerInput.IsValidVGSTarget")); }
			ScriptFunction StartVGS() { mixin(MGF("mStartVGS", "Function TribesGame.TrPlayerInput.StartVGS")); }
			ScriptFunction StartVGSClasses() { mixin(MGF("mStartVGSClasses", "Function TribesGame.TrPlayerInput.StartVGSClasses")); }
			ScriptFunction StartVGSLoadouts() { mixin(MGF("mStartVGSLoadouts", "Function TribesGame.TrPlayerInput.StartVGSLoadouts")); }
			ScriptFunction EndVGS() { mixin(MGF("mEndVGS", "Function TribesGame.TrPlayerInput.EndVGS")); }
			ScriptFunction SetHUDTarget() { mixin(MGF("mSetHUDTarget", "Function TribesGame.TrPlayerInput.SetHUDTarget")); }
			ScriptFunction GetStickAngle() { mixin(MGF("mGetStickAngle", "Function TribesGame.TrPlayerInput.GetStickAngle")); }
			ScriptFunction PushAnalogJoysticksToScaleform() { mixin(MGF("mPushAnalogJoysticksToScaleform", "Function TribesGame.TrPlayerInput.PushAnalogJoysticksToScaleform")); }
			ScriptFunction PreProcessInput() { mixin(MGF("mPreProcessInput", "Function TribesGame.TrPlayerInput.PreProcessInput")); }
			ScriptFunction PlayerInput() { mixin(MGF("mPlayerInput", "Function TribesGame.TrPlayerInput.PlayerInput")); }
			ScriptFunction SetFlyingPitchSensitivity() { mixin(MGF("mSetFlyingPitchSensitivity", "Function TribesGame.TrPlayerInput.SetFlyingPitchSensitivity")); }
			ScriptFunction SetFlyingYawSensitivity() { mixin(MGF("mSetFlyingYawSensitivity", "Function TribesGame.TrPlayerInput.SetFlyingYawSensitivity")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptClass m_CurrentVGSNode() { mixin(MGPC("ScriptClass", 436)); }
			TrVGSCommandList m_VGSCommandList() { mixin(MGPC("TrVGSCommandList", 440)); }
			ScriptArray!(ScriptName) m_VGSPassThroughKeys() { mixin(MGPC("ScriptArray!(ScriptName)", 400)); }
			ScriptArray!(ScriptName) m_VGSNumKeys() { mixin(MGPC("ScriptArray!(ScriptName)", 412)); }
			ScriptArray!(ScriptName) m_VGSPadKeys() { mixin(MGPC("ScriptArray!(ScriptName)", 424)); }
			ScriptString m_CurrentVGSKeySequence() { mixin(MGPC("ScriptString", 444)); }
			TrHUD m_HUD() { mixin(MGPC("TrHUD", 392)); }
			float m_RightJoystickLastValue() { mixin(MGPC("float", 388)); }
			float m_LeftJoystickLastValue() { mixin(MGPC("float", 384)); }
			int m_VGSClassId() { mixin(MGPC("int", 380)); }
		}
		bool m_bInVGSLoadoutMode() { mixin(MGBPC(396, 0x4)); }
		bool m_bInVGSLoadoutMode(bool val) { mixin(MSBPC(396, 0x4)); }
		bool m_bInVGSClassMode() { mixin(MGBPC(396, 0x2)); }
		bool m_bInVGSClassMode(bool val) { mixin(MSBPC(396, 0x2)); }
		bool m_bInVGSCaptureMode() { mixin(MGBPC(396, 0x1)); }
		bool m_bInVGSCaptureMode(bool val) { mixin(MSBPC(396, 0x1)); }
	}
final:
	bool InVGSClassMode()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InVGSClassMode, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool InVGSLoadoutMode()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InVGSLoadoutMode, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetVGSClassId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVGSClassId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool PlaySpottedCommand()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlaySpottedCommand, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitInputSystem, cast(void*)0, cast(void*)0);
	}
	void AdjustMouseSensitivity(float FOVScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FOVScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.AdjustMouseSensitivity, params.ptr, cast(void*)0);
	}
	bool IsMouseSmoothEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsMouseSmoothEnabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnVGSKeyPressed(ScriptName KeyPressed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = KeyPressed;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnVGSKeyPressed, params.ptr, cast(void*)0);
	}
	void OnVGSNumKeyPressed(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnVGSNumKeyPressed, params.ptr, cast(void*)0);
	}
	void PlayVGSCommand(TrVGSCommandList.VGSCommandType VGSCommandIndex)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrVGSCommandList.VGSCommandType*)params.ptr = VGSCommandIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayVGSCommand, params.ptr, cast(void*)0);
	}
	bool IsValidVGSTarget(Actor ActorUnderReticule)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = ActorUnderReticule;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidVGSTarget, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StartVGS()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartVGS, cast(void*)0, cast(void*)0);
	}
	void StartVGSClasses()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartVGSClasses, cast(void*)0, cast(void*)0);
	}
	void StartVGSLoadouts(int ClassId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartVGSLoadouts, params.ptr, cast(void*)0);
	}
	void EndVGS()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EndVGS, cast(void*)0, cast(void*)0);
	}
	void SetHUDTarget(TrHUD TrH)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrHUD*)params.ptr = TrH;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHUDTarget, params.ptr, cast(void*)0);
	}
	int GetStickAngle(float UpDown, float LeftRight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = UpDown;
		*cast(float*)&params[4] = LeftRight;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStickAngle, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void PushAnalogJoysticksToScaleform()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PushAnalogJoysticksToScaleform, cast(void*)0, cast(void*)0);
	}
	void PreProcessInput(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreProcessInput, params.ptr, cast(void*)0);
	}
	// WARNING: Function 'PlayerInput' has the same name as a defined type!
	void SetFlyingPitchSensitivity(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlyingPitchSensitivity, params.ptr, cast(void*)0);
	}
	void SetFlyingYawSensitivity(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlyingYawSensitivity, params.ptr, cast(void*)0);
	}
}
