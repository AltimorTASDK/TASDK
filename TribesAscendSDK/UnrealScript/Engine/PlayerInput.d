module UnrealScript.Engine.PlayerInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Input;
import UnrealScript.Engine.HUD;

extern(C++) interface PlayerInput : Input
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PlayerInput")); }
	private static __gshared PlayerInput mDefaultProperties;
	@property final static PlayerInput DefaultProperties() { mixin(MGDPC("PlayerInput", "PlayerInput Engine.Default__PlayerInput")); }
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
			ScriptFunction CheckForDoubleClickMove() { mixin(MGF("mCheckForDoubleClickMove", "Function Engine.PlayerInput.CheckForDoubleClickMove")); }
			ScriptFunction InvertMouse() { mixin(MGF("mInvertMouse", "Function Engine.PlayerInput.InvertMouse")); }
			ScriptFunction InvertTurn() { mixin(MGF("mInvertTurn", "Function Engine.PlayerInput.InvertTurn")); }
			ScriptFunction SetSensitivity() { mixin(MGF("mSetSensitivity", "Function Engine.PlayerInput.SetSensitivity")); }
			ScriptFunction DrawHUD() { mixin(MGF("mDrawHUD", "Function Engine.PlayerInput.DrawHUD")); }
			ScriptFunction PreProcessInput() { mixin(MGF("mPreProcessInput", "Function Engine.PlayerInput.PreProcessInput")); }
			ScriptFunction PostProcessInput() { mixin(MGF("mPostProcessInput", "Function Engine.PlayerInput.PostProcessInput")); }
			ScriptFunction AdjustMouseSensitivity() { mixin(MGF("mAdjustMouseSensitivity", "Function Engine.PlayerInput.AdjustMouseSensitivity")); }
			ScriptFunction IsMouseSmoothEnabled() { mixin(MGF("mIsMouseSmoothEnabled", "Function Engine.PlayerInput.IsMouseSmoothEnabled")); }
			ScriptFunction PlayerInput() { mixin(MGF("mPlayerInput", "Function Engine.PlayerInput.PlayerInput")); }
			ScriptFunction ProcessInputMatching() { mixin(MGF("mProcessInputMatching", "Function Engine.PlayerInput.ProcessInputMatching")); }
			ScriptFunction CatchDoubleClickInput() { mixin(MGF("mCatchDoubleClickInput", "Function Engine.PlayerInput.CatchDoubleClickInput")); }
			ScriptFunction Jump() { mixin(MGF("mJump", "Function Engine.PlayerInput.Jump")); }
			ScriptFunction SmartJump() { mixin(MGF("mSmartJump", "Function Engine.PlayerInput.SmartJump")); }
			ScriptFunction ClearSmoothing() { mixin(MGF("mClearSmoothing", "Function Engine.PlayerInput.ClearSmoothing")); }
			ScriptFunction SmoothMouse() { mixin(MGF("mSmoothMouse", "Function Engine.PlayerInput.SmoothMouse")); }
			ScriptFunction InitInputSystem() { mixin(MGF("mInitInputSystem", "Function Engine.PlayerInput.InitInputSystem")); }
			ScriptFunction ClientInitInputSystem() { mixin(MGF("mClientInitInputSystem", "Function Engine.PlayerInput.ClientInitInputSystem")); }
			ScriptFunction PreClientTravel() { mixin(MGF("mPreClientTravel", "Function Engine.PlayerInput.PreClientTravel")); }
		}
	}
	@property final
	{
		auto ref
		{
			float aTurn() { mixin(MGPC("float", 272)); }
			float aLookUp() { mixin(MGPC("float", 284)); }
			float aForward() { mixin(MGPC("float", 268)); }
			float aStrafe() { mixin(MGPC("float", 276)); }
			float RawJoyUp() { mixin(MGPC("float", 312)); }
			float RawJoyRight() { mixin(MGPC("float", 316)); }
			float aUp() { mixin(MGPC("float", 280)); }
			float AutoUnlockTurnTime() { mixin(MGPC("float", 376)); }
			float MouseSamplingTotal() { mixin(MGPC("float", 372)); }
			int MouseSamples() { mixin(MGPC("int", 368)); }
			float SmoothedMouse() { mixin(MGPC("float", 360)); }
			float ZeroTime() { mixin(MGPC("float", 352)); }
			int FOVSetting() { mixin(MGPC("int", 348)); }
			ubyte bYAxis() { mixin(MGPC("ubyte", 346)); }
			ubyte bXAxis() { mixin(MGPC("ubyte", 345)); }
			ubyte bStrafe() { mixin(MGPC("ubyte", 344)); }
			float LookUpScale() { mixin(MGPC("float", 340)); }
			float LookRightScale() { mixin(MGPC("float", 336)); }
			float MoveStrafeSpeed() { mixin(MGPC("float", 332)); }
			float MoveForwardSpeed() { mixin(MGPC("float", 328)); }
			float RawJoyLookUp() { mixin(MGPC("float", 324)); }
			float RawJoyLookRight() { mixin(MGPC("float", 320)); }
			float aPS3Gyro() { mixin(MGPC("float", 308)); }
			float aPS3AccelZ() { mixin(MGPC("float", 304)); }
			float aPS3AccelY() { mixin(MGPC("float", 300)); }
			float aPS3AccelX() { mixin(MGPC("float", 296)); }
			float aLeftAnalogTrigger() { mixin(MGPC("float", 292)); }
			float aRightAnalogTrigger() { mixin(MGPC("float", 288)); }
			float aMouseY() { mixin(MGPC("float", 264)); }
			float aMouseX() { mixin(MGPC("float", 260)); }
			float aBaseZ() { mixin(MGPC("float", 256)); }
			float aBaseY() { mixin(MGPC("float", 252)); }
			float aBaseX() { mixin(MGPC("float", 248)); }
			float FlyingYawSensitivity() { mixin(MGPC("float", 244)); }
			float FlyingPitchSensitivity() { mixin(MGPC("float", 240)); }
			float MouseSensitivity() { mixin(MGPC("float", 236)); }
			float DoubleClickTime() { mixin(MGPC("float", 232)); }
			float DoubleClickTimer() { mixin(MGPC("float", 228)); }
			ScriptName LastAxisKeyName() { mixin(MGPC("ScriptName", 220)); }
		}
		bool bUsingGamepad() { mixin(MGBPC(216, 0x1)); }
		bool bUsingGamepad(bool val) { mixin(MSBPC(216, 0x1)); }
		bool bLockTurnUntilRelease() { mixin(MGBPC(216, 0x8000)); }
		bool bLockTurnUntilRelease(bool val) { mixin(MSBPC(216, 0x8000)); }
		bool bEnableFOVScaling() { mixin(MGBPC(216, 0x4000)); }
		bool bEnableFOVScaling(bool val) { mixin(MSBPC(216, 0x4000)); }
		bool bUseToggleZoom() { mixin(MGBPC(216, 0x2000)); }
		bool bUseToggleZoom(bool val) { mixin(MSBPC(216, 0x2000)); }
		bool bEnableMouseSmoothing() { mixin(MGBPC(216, 0x1000)); }
		bool bEnableMouseSmoothing(bool val) { mixin(MSBPC(216, 0x1000)); }
		bool bEdgeRight() { mixin(MGBPC(216, 0x800)); }
		bool bEdgeRight(bool val) { mixin(MSBPC(216, 0x800)); }
		bool bEdgeLeft() { mixin(MGBPC(216, 0x400)); }
		bool bEdgeLeft(bool val) { mixin(MSBPC(216, 0x400)); }
		bool bEdgeBack() { mixin(MGBPC(216, 0x200)); }
		bool bEdgeBack(bool val) { mixin(MSBPC(216, 0x200)); }
		bool bEdgeForward() { mixin(MGBPC(216, 0x100)); }
		bool bEdgeForward(bool val) { mixin(MSBPC(216, 0x100)); }
		bool bWasRight() { mixin(MGBPC(216, 0x80)); }
		bool bWasRight(bool val) { mixin(MSBPC(216, 0x80)); }
		bool bWasLeft() { mixin(MGBPC(216, 0x40)); }
		bool bWasLeft(bool val) { mixin(MSBPC(216, 0x40)); }
		bool bWasBack() { mixin(MGBPC(216, 0x20)); }
		bool bWasBack(bool val) { mixin(MSBPC(216, 0x20)); }
		bool bWasForward() { mixin(MGBPC(216, 0x10)); }
		bool bWasForward(bool val) { mixin(MSBPC(216, 0x10)); }
		bool bInvertAirVehicles() { mixin(MGBPC(216, 0x8)); }
		bool bInvertAirVehicles(bool val) { mixin(MSBPC(216, 0x8)); }
		bool bInvertTurn() { mixin(MGBPC(216, 0x4)); }
		bool bInvertTurn(bool val) { mixin(MSBPC(216, 0x4)); }
		bool bInvertMouse() { mixin(MGBPC(216, 0x2)); }
		bool bInvertMouse(bool val) { mixin(MSBPC(216, 0x2)); }
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
	float SmoothMouse(float aMouse, float DeltaTime, ref ubyte SampleCount, int Index)
	{
		ubyte params[20];
		params[] = 0;
		*cast(float*)params.ptr = aMouse;
		*cast(float*)&params[4] = DeltaTime;
		params[8] = SampleCount;
		*cast(int*)&params[12] = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.SmoothMouse, params.ptr, cast(void*)0);
		SampleCount = params[8];
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
