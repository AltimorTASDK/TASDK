module UnrealScript.Engine.PlayerInput;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Input;
import UnrealScript.Engine.HUD;

extern(C++) interface PlayerInput : Input
{
	public @property final auto ref float aTurn() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref float aLookUp() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float aForward() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float aStrafe() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float RawJoyUp() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref float RawJoyRight() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
	public @property final auto ref float aUp() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final bool bUsingGamepad() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x1) != 0; }
	public @property final bool bUsingGamepad(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x1; } return val; }
	public @property final auto ref float AutoUnlockTurnTime() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref float MouseSamplingTotal() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref int MouseSamples() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref float SmoothedMouse() { return *cast(float*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref float ZeroTime() { return *cast(float*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref int FOVSetting() { return *cast(int*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref ubyte bYAxis() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 346); }
	public @property final auto ref ubyte bXAxis() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 345); }
	public @property final auto ref ubyte bStrafe() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref float LookUpScale() { return *cast(float*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref float LookRightScale() { return *cast(float*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref float MoveStrafeSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref float MoveForwardSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 328); }
	public @property final auto ref float RawJoyLookUp() { return *cast(float*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref float RawJoyLookRight() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref float aPS3Gyro() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref float aPS3AccelZ() { return *cast(float*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref float aPS3AccelY() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref float aPS3AccelX() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref float aLeftAnalogTrigger() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref float aRightAnalogTrigger() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float aMouseY() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float aMouseX() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float aBaseZ() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref float aBaseY() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref float aBaseX() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref float FlyingYawSensitivity() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float FlyingPitchSensitivity() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float MouseSensitivity() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float DoubleClickTime() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref float DoubleClickTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref ScriptName LastAxisKeyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 220); }
	public @property final bool bLockTurnUntilRelease() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x8000) != 0; }
	public @property final bool bLockTurnUntilRelease(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x8000; } return val; }
	public @property final bool bEnableFOVScaling() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x4000) != 0; }
	public @property final bool bEnableFOVScaling(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x4000; } return val; }
	public @property final bool bUseToggleZoom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x2000) != 0; }
	public @property final bool bUseToggleZoom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x2000; } return val; }
	public @property final bool bEnableMouseSmoothing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x1000) != 0; }
	public @property final bool bEnableMouseSmoothing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x1000; } return val; }
	public @property final bool bEdgeRight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x800) != 0; }
	public @property final bool bEdgeRight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x800; } return val; }
	public @property final bool bEdgeLeft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x400) != 0; }
	public @property final bool bEdgeLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x400; } return val; }
	public @property final bool bEdgeBack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x200) != 0; }
	public @property final bool bEdgeBack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x200; } return val; }
	public @property final bool bEdgeForward() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x100) != 0; }
	public @property final bool bEdgeForward(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x100; } return val; }
	public @property final bool bWasRight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x80) != 0; }
	public @property final bool bWasRight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x80; } return val; }
	public @property final bool bWasLeft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x40) != 0; }
	public @property final bool bWasLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x40; } return val; }
	public @property final bool bWasBack() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x20) != 0; }
	public @property final bool bWasBack(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x20; } return val; }
	public @property final bool bWasForward() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x10) != 0; }
	public @property final bool bWasForward(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x10; } return val; }
	public @property final bool bInvertAirVehicles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x8) != 0; }
	public @property final bool bInvertAirVehicles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x8; } return val; }
	public @property final bool bInvertTurn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x4) != 0; }
	public @property final bool bInvertTurn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x4; } return val; }
	public @property final bool bInvertMouse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 216) & 0x2) != 0; }
	public @property final bool bInvertMouse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 216) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 216) &= ~0x2; } return val; }
	final Actor.EDoubleClickDir CheckForDoubleClickMove(float DeltaTime)
	{
		ubyte params[5];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[8556], params.ptr, cast(void*)0);
		return *cast(Actor.EDoubleClickDir*)&params[4];
	}
	final bool InvertMouse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13979], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool InvertTurn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13981], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetSensitivity(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13983], params.ptr, cast(void*)0);
	}
	final void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13985], params.ptr, cast(void*)0);
	}
	final void PreProcessInput(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13987], params.ptr, cast(void*)0);
	}
	final void PostProcessInput(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13989], params.ptr, cast(void*)0);
	}
	final void AdjustMouseSensitivity(float FOVScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = FOVScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13991], params.ptr, cast(void*)0);
	}
	final bool IsMouseSmoothEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[13993], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	// WARNING: Function 'PlayerInput' has the same name as a defined type!
	final void ProcessInputMatching(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14000], params.ptr, cast(void*)0);
	}
	final void CatchDoubleClickInput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14001], cast(void*)0, cast(void*)0);
	}
	final void Jump()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14010], cast(void*)0, cast(void*)0);
	}
	final void SmartJump()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14011], cast(void*)0, cast(void*)0);
	}
	final void ClearSmoothing()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14012], cast(void*)0, cast(void*)0);
	}
	final float SmoothMouse(float aMouse, float DeltaTime, ubyte* SampleCount, int Index)
	{
		ubyte params[17];
		params[] = 0;
		*cast(float*)params.ptr = aMouse;
		*cast(float*)&params[4] = DeltaTime;
		params[8] = *SampleCount;
		*cast(int*)&params[12] = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14014], params.ptr, cast(void*)0);
		*SampleCount = params[8];
		return *cast(float*)&params[16];
	}
	final void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14021], cast(void*)0, cast(void*)0);
	}
	final void ClientInitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14022], cast(void*)0, cast(void*)0);
	}
	final void PreClientTravel(ScriptString PendingURL, Actor.ETravelType TravelType, bool bIsSeamlessTravel)
	{
		ubyte params[17];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PendingURL;
		*cast(Actor.ETravelType*)&params[12] = TravelType;
		*cast(bool*)&params[16] = bIsSeamlessTravel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[14023], params.ptr, cast(void*)0);
	}
}
