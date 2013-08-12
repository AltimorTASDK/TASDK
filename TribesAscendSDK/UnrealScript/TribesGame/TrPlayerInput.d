module UnrealScript.TribesGame.TrPlayerInput;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrHUD;

extern(C++) interface TrPlayerInput : PlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPlayerInput")); }
	private static __gshared TrPlayerInput mDefaultProperties;
	@property final static TrPlayerInput DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPlayerInput)("TrPlayerInput TribesGame.Default__TrPlayerInput")); }
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
			ScriptFunction InVGSClassMode() { return mInVGSClassMode ? mInVGSClassMode : (mInVGSClassMode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.InVGSClassMode")); }
			ScriptFunction InVGSLoadoutMode() { return mInVGSLoadoutMode ? mInVGSLoadoutMode : (mInVGSLoadoutMode = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.InVGSLoadoutMode")); }
			ScriptFunction GetVGSClassId() { return mGetVGSClassId ? mGetVGSClassId : (mGetVGSClassId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.GetVGSClassId")); }
			ScriptFunction PlaySpottedCommand() { return mPlaySpottedCommand ? mPlaySpottedCommand : (mPlaySpottedCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.PlaySpottedCommand")); }
			ScriptFunction InitInputSystem() { return mInitInputSystem ? mInitInputSystem : (mInitInputSystem = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.InitInputSystem")); }
			ScriptFunction AdjustMouseSensitivity() { return mAdjustMouseSensitivity ? mAdjustMouseSensitivity : (mAdjustMouseSensitivity = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.AdjustMouseSensitivity")); }
			ScriptFunction IsMouseSmoothEnabled() { return mIsMouseSmoothEnabled ? mIsMouseSmoothEnabled : (mIsMouseSmoothEnabled = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.IsMouseSmoothEnabled")); }
			ScriptFunction OnVGSKeyPressed() { return mOnVGSKeyPressed ? mOnVGSKeyPressed : (mOnVGSKeyPressed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.OnVGSKeyPressed")); }
			ScriptFunction OnVGSNumKeyPressed() { return mOnVGSNumKeyPressed ? mOnVGSNumKeyPressed : (mOnVGSNumKeyPressed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.OnVGSNumKeyPressed")); }
			ScriptFunction PlayVGSCommand() { return mPlayVGSCommand ? mPlayVGSCommand : (mPlayVGSCommand = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.PlayVGSCommand")); }
			ScriptFunction IsValidVGSTarget() { return mIsValidVGSTarget ? mIsValidVGSTarget : (mIsValidVGSTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.IsValidVGSTarget")); }
			ScriptFunction StartVGS() { return mStartVGS ? mStartVGS : (mStartVGS = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.StartVGS")); }
			ScriptFunction StartVGSClasses() { return mStartVGSClasses ? mStartVGSClasses : (mStartVGSClasses = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.StartVGSClasses")); }
			ScriptFunction StartVGSLoadouts() { return mStartVGSLoadouts ? mStartVGSLoadouts : (mStartVGSLoadouts = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.StartVGSLoadouts")); }
			ScriptFunction EndVGS() { return mEndVGS ? mEndVGS : (mEndVGS = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.EndVGS")); }
			ScriptFunction SetHUDTarget() { return mSetHUDTarget ? mSetHUDTarget : (mSetHUDTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.SetHUDTarget")); }
			ScriptFunction GetStickAngle() { return mGetStickAngle ? mGetStickAngle : (mGetStickAngle = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.GetStickAngle")); }
			ScriptFunction PushAnalogJoysticksToScaleform() { return mPushAnalogJoysticksToScaleform ? mPushAnalogJoysticksToScaleform : (mPushAnalogJoysticksToScaleform = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.PushAnalogJoysticksToScaleform")); }
			ScriptFunction PreProcessInput() { return mPreProcessInput ? mPreProcessInput : (mPreProcessInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.PreProcessInput")); }
			ScriptFunction PlayerInput() { return mPlayerInput ? mPlayerInput : (mPlayerInput = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.PlayerInput")); }
			ScriptFunction SetFlyingPitchSensitivity() { return mSetFlyingPitchSensitivity ? mSetFlyingPitchSensitivity : (mSetFlyingPitchSensitivity = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.SetFlyingPitchSensitivity")); }
			ScriptFunction SetFlyingYawSensitivity() { return mSetFlyingYawSensitivity ? mSetFlyingYawSensitivity : (mSetFlyingYawSensitivity = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrPlayerInput.SetFlyingYawSensitivity")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptClass m_CurrentVGSNode() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 436); }
			TrVGSCommandList m_VGSCommandList() { return *cast(TrVGSCommandList*)(cast(size_t)cast(void*)this + 440); }
			ScriptArray!(ScriptName) m_VGSPassThroughKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 400); }
			ScriptArray!(ScriptName) m_VGSNumKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 412); }
			ScriptArray!(ScriptName) m_VGSPadKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 424); }
			ScriptString m_CurrentVGSKeySequence() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 444); }
			TrHUD m_HUD() { return *cast(TrHUD*)(cast(size_t)cast(void*)this + 392); }
			float m_RightJoystickLastValue() { return *cast(float*)(cast(size_t)cast(void*)this + 388); }
			float m_LeftJoystickLastValue() { return *cast(float*)(cast(size_t)cast(void*)this + 384); }
			int m_VGSClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
		}
		bool m_bInVGSLoadoutMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 396) & 0x4) != 0; }
		bool m_bInVGSLoadoutMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 396) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 396) &= ~0x4; } return val; }
		bool m_bInVGSClassMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 396) & 0x2) != 0; }
		bool m_bInVGSClassMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 396) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 396) &= ~0x2; } return val; }
		bool m_bInVGSCaptureMode() { return (*cast(uint*)(cast(size_t)cast(void*)this + 396) & 0x1) != 0; }
		bool m_bInVGSCaptureMode(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 396) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 396) &= ~0x1; } return val; }
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
