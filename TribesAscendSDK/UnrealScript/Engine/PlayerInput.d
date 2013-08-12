module UnrealScript.Engine.PlayerInput;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Input;
import UnrealScript.Engine.HUD;

extern(C++) interface PlayerInput : Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PlayerInput")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCheckForDoubleClickMove;
			ScriptFunction mInvertMouse;
			ScriptFunction mInvertTurn;
			ScriptFunction mSetSensitivity;
			ScriptFunction mDrawHUD;
			ScriptFunction mPreProcessInput;
			ScriptFunction mPostProcessInput;
			ScriptFunction mAdjustMouseSensitivity;
			ScriptFunction mIsMouseSmoothEnabled;
			ScriptFunction mPlayerInput;
			ScriptFunction mProcessInputMatching;
			ScriptFunction mCatchDoubleClickInput;
			ScriptFunction mJump;
			ScriptFunction mSmartJump;
			ScriptFunction mClearSmoothing;
			ScriptFunction mSmoothMouse;
			ScriptFunction mInitInputSystem;
			ScriptFunction mClientInitInputSystem;
			ScriptFunction mPreClientTravel;
		}
		public @property static final
		{
			ScriptFunction CheckForDoubleClickMove() { return mCheckForDoubleClickMove ? mCheckForDoubleClickMove : (mCheckForDoubleClickMove = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.CheckForDoubleClickMove")); }
			ScriptFunction InvertMouse() { return mInvertMouse ? mInvertMouse : (mInvertMouse = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.InvertMouse")); }
			ScriptFunction InvertTurn() { return mInvertTurn ? mInvertTurn : (mInvertTurn = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.InvertTurn")); }
			ScriptFunction SetSensitivity() { return mSetSensitivity ? mSetSensitivity : (mSetSensitivity = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.SetSensitivity")); }
			ScriptFunction DrawHUD() { return mDrawHUD ? mDrawHUD : (mDrawHUD = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.DrawHUD")); }
			ScriptFunction PreProcessInput() { return mPreProcessInput ? mPreProcessInput : (mPreProcessInput = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.PreProcessInput")); }
			ScriptFunction PostProcessInput() { return mPostProcessInput ? mPostProcessInput : (mPostProcessInput = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.PostProcessInput")); }
			ScriptFunction AdjustMouseSensitivity() { return mAdjustMouseSensitivity ? mAdjustMouseSensitivity : (mAdjustMouseSensitivity = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.AdjustMouseSensitivity")); }
			ScriptFunction IsMouseSmoothEnabled() { return mIsMouseSmoothEnabled ? mIsMouseSmoothEnabled : (mIsMouseSmoothEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.IsMouseSmoothEnabled")); }
			ScriptFunction PlayerInput() { return mPlayerInput ? mPlayerInput : (mPlayerInput = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.PlayerInput")); }
			ScriptFunction ProcessInputMatching() { return mProcessInputMatching ? mProcessInputMatching : (mProcessInputMatching = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.ProcessInputMatching")); }
			ScriptFunction CatchDoubleClickInput() { return mCatchDoubleClickInput ? mCatchDoubleClickInput : (mCatchDoubleClickInput = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.CatchDoubleClickInput")); }
			ScriptFunction Jump() { return mJump ? mJump : (mJump = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.Jump")); }
			ScriptFunction SmartJump() { return mSmartJump ? mSmartJump : (mSmartJump = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.SmartJump")); }
			ScriptFunction ClearSmoothing() { return mClearSmoothing ? mClearSmoothing : (mClearSmoothing = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.ClearSmoothing")); }
			ScriptFunction SmoothMouse() { return mSmoothMouse ? mSmoothMouse : (mSmoothMouse = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.SmoothMouse")); }
			ScriptFunction InitInputSystem() { return mInitInputSystem ? mInitInputSystem : (mInitInputSystem = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.InitInputSystem")); }
			ScriptFunction ClientInitInputSystem() { return mClientInitInputSystem ? mClientInitInputSystem : (mClientInitInputSystem = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.ClientInitInputSystem")); }
			ScriptFunction PreClientTravel() { return mPreClientTravel ? mPreClientTravel : (mPreClientTravel = ScriptObject.Find!(ScriptFunction)("Function Engine.PlayerInput.PreClientTravel")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckForDoubleClickMove, params.ptr, cast(void*)0);
		return *cast(Actor.EDoubleClickDir*)&params[4];
	}
	bool InvertMouse()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InvertMouse, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool InvertTurn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InvertTurn, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetSensitivity(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSensitivity, params.ptr, cast(void*)0);
	}
	void DrawHUD(HUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(HUD*)params.ptr = H;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawHUD, params.ptr, cast(void*)0);
	}
	void PreProcessInput(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreProcessInput, params.ptr, cast(void*)0);
	}
	void PostProcessInput(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostProcessInput, params.ptr, cast(void*)0);
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
	// WARNING: Function 'PlayerInput' has the same name as a defined type!
	void ProcessInputMatching(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessInputMatching, params.ptr, cast(void*)0);
	}
	void CatchDoubleClickInput()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CatchDoubleClickInput, cast(void*)0, cast(void*)0);
	}
	void Jump()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Jump, cast(void*)0, cast(void*)0);
	}
	void SmartJump()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SmartJump, cast(void*)0, cast(void*)0);
	}
	void ClearSmoothing()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSmoothing, cast(void*)0, cast(void*)0);
	}
	float SmoothMouse(float aMouse, float DeltaTime, ubyte* SampleCount, int Index)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = aMouse;
		*cast(float*)&params[4] = DeltaTime;
		params[8] = *SampleCount;
		*cast(int*)&params[12] = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.SmoothMouse, params.ptr, cast(void*)0);
		*SampleCount = params[8];
		return *cast(float*)&params[16];
	}
	void InitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitInputSystem, cast(void*)0, cast(void*)0);
	}
	void ClientInitInputSystem()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientInitInputSystem, cast(void*)0, cast(void*)0);
	}
	void PreClientTravel(ScriptString PendingURL, Actor.ETravelType TravelType, bool bIsSeamlessTravel)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PendingURL;
		*cast(Actor.ETravelType*)&params[12] = TravelType;
		*cast(bool*)&params[16] = bIsSeamlessTravel;
		(cast(ScriptObject)this).ProcessEvent(Functions.PreClientTravel, params.ptr, cast(void*)0);
	}
}
