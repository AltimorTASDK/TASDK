module UnrealScript.TribesGame.TrPlayerInput;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrHUD;

extern(C++) interface TrPlayerInput : PlayerInput
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53575], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool InVGSLoadoutMode()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53585], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	int GetVGSClassId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[53587], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool PlaySpottedCommand()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77100], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77951], cast(void*)0, cast(void*)0);
	}
	void AdjustMouseSensitivity(float FOVScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FOVScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77952], params.ptr, cast(void*)0);
	}
	bool IsMouseSmoothEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77954], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnVGSKeyPressed(ScriptName KeyPressed)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = KeyPressed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77956], params.ptr, cast(void*)0);
	}
	void OnVGSNumKeyPressed(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77965], params.ptr, cast(void*)0);
	}
	void PlayVGSCommand(TrVGSCommandList.VGSCommandType VGSCommandIndex)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrVGSCommandList.VGSCommandType*)params.ptr = VGSCommandIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77992], params.ptr, cast(void*)0);
	}
	bool IsValidVGSTarget(Actor ActorUnderReticule)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = ActorUnderReticule;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[77994], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void StartVGS()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78000], cast(void*)0, cast(void*)0);
	}
	void StartVGSClasses()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78002], cast(void*)0, cast(void*)0);
	}
	void StartVGSLoadouts(int ClassId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ClassId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78003], params.ptr, cast(void*)0);
	}
	void EndVGS()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78005], cast(void*)0, cast(void*)0);
	}
	void SetHUDTarget(TrHUD TrH)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrHUD*)params.ptr = TrH;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78006], params.ptr, cast(void*)0);
	}
	int GetStickAngle(float UpDown, float LeftRight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(float*)params.ptr = UpDown;
		*cast(float*)&params[4] = LeftRight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78008], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void PushAnalogJoysticksToScaleform()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78015], cast(void*)0, cast(void*)0);
	}
	void PreProcessInput(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78018], params.ptr, cast(void*)0);
	}
	// WARNING: Function 'PlayerInput' has the same name as a defined type!
	void SetFlyingPitchSensitivity(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78026], params.ptr, cast(void*)0);
	}
	void SetFlyingYawSensitivity(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[78028], params.ptr, cast(void*)0);
	}
}
