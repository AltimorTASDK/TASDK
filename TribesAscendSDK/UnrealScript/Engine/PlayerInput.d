module UnrealScript.Engine.PlayerInput;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Input;
import UnrealScript.Engine.HUD;

extern(C++) interface PlayerInput : Input
{
public extern(D):
	@property final
	{
		auto ref
		{
			float aTurn() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			float aLookUp() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			float aForward() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
			float aStrafe() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
			float RawJoyUp() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			float RawJoyRight() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
			float aUp() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			float AutoUnlockTurnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
			float MouseSamplingTotal() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
			int MouseSamples() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			float SmoothedMouse() { return *cast(float*)(cast(size_t)cast(void*)this + 360); }
			float ZeroTime() { return *cast(float*)(cast(size_t)cast(void*)this + 352); }
			int FOVSetting() { return *cast(int*)(cast(size_t)cast(void*)this + 348); }
			ubyte bYAxis() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 346); }
			ubyte bXAxis() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 345); }
			ubyte bStrafe() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 344); }
			float LookUpScale() { return *cast(float*)(cast(size_t)cast(void*)this + 340); }
			float LookRightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
			float MoveStrafeSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
			float MoveForwardSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
			float RawJoyLookUp() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
			float RawJoyLookRight() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
			float aPS3Gyro() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
			float aPS3AccelZ() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
			float aPS3AccelY() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
			float aPS3AccelX() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
			float aLeftAnalogTrigger() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
			float aRightAnalogTrigger() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			float aMouseY() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
			float aMouseX() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			float aBaseZ() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float aBaseY() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float aBaseX() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float FlyingYawSensitivity() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float FlyingPitchSensitivity() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float MouseSensitivity() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			float DoubleClickTime() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			float DoubleClickTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
			ScriptName LastAxisKeyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 220); }
		}
		bool bUsingGamepad() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x1) != 0; }
		bool bUsingGamepad(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x1; } return val; }
		bool bLockTurnUntilRelease() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x8000) != 0; }
		bool bLockTurnUntilRelease(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x8000; } return val; }
		bool bEnableFOVScaling() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x4000) != 0; }
		bool bEnableFOVScaling(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x4000; } return val; }
		bool bUseToggleZoom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x2000) != 0; }
		bool bUseToggleZoom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x2000; } return val; }
		bool bEnableMouseSmoothing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x1000) != 0; }
		bool bEnableMouseSmoothing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x1000; } return val; }
		bool bEdgeRight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x800) != 0; }
		bool bEdgeRight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x800; } return val; }
		bool bEdgeLeft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x400) != 0; }
		bool bEdgeLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x400; } return val; }
		bool bEdgeBack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x200) != 0; }
		bool bEdgeBack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x200; } return val; }
		bool bEdgeForward() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x100) != 0; }
		bool bEdgeForward(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x100; } return val; }
		bool bWasRight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x80) != 0; }
		bool bWasRight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x80; } return val; }
		bool bWasLeft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x40) != 0; }
		bool bWasLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x40; } return val; }
		bool bWasBack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x20) != 0; }
		bool bWasBack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x20; } return val; }
		bool bWasForward() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x10) != 0; }
		bool bWasForward(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x10; } return val; }
		bool bInvertAirVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x8) != 0; }
		bool bInvertAirVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x8; } return val; }
		bool bInvertTurn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x4) != 0; }
		bool bInvertTurn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x4; } return val; }
		bool bInvertMouse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x2) != 0; }
		bool bInvertMouse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x2; } return val; }
	}
final:
	Actor.EDoubleClickDir CheckForDoubleClickMove(float DeltaTime)
	{
		ubyte params[5];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8556], params.ptr, cast(void*)0);
		return *cast(Actor.EDoubleClickDir*)&params[4];
	}
	bool InvertMouse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13979], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool InvertTurn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13981], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetSensitivity(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13983], params.ptr, cast(void*)0);
	}
	void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13985], params.ptr, cast(void*)0);
	}
	void PreProcessInput(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13987], params.ptr, cast(void*)0);
	}
	void PostProcessInput(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13989], params.ptr, cast(void*)0);
	}
	void AdjustMouseSensitivity(float FOVScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FOVScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13991], params.ptr, cast(void*)0);
	}
	bool IsMouseSmoothEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13993], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	// WARNING: Function 'PlayerInput' has the same name as a defined type!
	void ProcessInputMatching(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14000], params.ptr, cast(void*)0);
	}
	void CatchDoubleClickInput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14001], cast(void*)0, cast(void*)0);
	}
	void Jump()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14010], cast(void*)0, cast(void*)0);
	}
	void SmartJump()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14011], cast(void*)0, cast(void*)0);
	}
	void ClearSmoothing()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14012], cast(void*)0, cast(void*)0);
	}
	float SmoothMouse(float aMouse, float DeltaTime, ubyte* SampleCount, int Index)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = aMouse;
		*cast(float*)&params[4] = DeltaTime;
		params[8] = *SampleCount;
		*cast(int*)&params[12] = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14014], params.ptr, cast(void*)0);
		*SampleCount = params[8];
		return *cast(float*)&params[16];
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14021], cast(void*)0, cast(void*)0);
	}
	void ClientInitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14022], cast(void*)0, cast(void*)0);
	}
	void PreClientTravel(ScriptString PendingURL, Actor.ETravelType TravelType, bool bIsSeamlessTravel)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PendingURL;
		*cast(Actor.ETravelType*)&params[12] = TravelType;
		*cast(bool*)&params[16] = bIsSeamlessTravel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14023], params.ptr, cast(void*)0);
	}
}
