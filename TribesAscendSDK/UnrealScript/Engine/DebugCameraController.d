module UnrealScript.Engine.DebugCameraController;

import ScriptClasses;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Player;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface DebugCameraController : PlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DebugCameraController")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPrimarySelect;
			ScriptFunction mSecondarySelect;
			ScriptFunction mUnselect;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mOnActivate;
			ScriptFunction mConsoleCommand;
			ScriptFunction mOnDeactivate;
			ScriptFunction mDisableDebugCamera;
			ScriptFunction mNativeInputKey;
		}
		public @property static final
		{
			ScriptFunction PrimarySelect() { return mPrimarySelect ? mPrimarySelect : (mPrimarySelect = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraController.PrimarySelect")); }
			ScriptFunction SecondarySelect() { return mSecondarySelect ? mSecondarySelect : (mSecondarySelect = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraController.SecondarySelect")); }
			ScriptFunction Unselect() { return mUnselect ? mUnselect : (mUnselect = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraController.Unselect")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraController.PostBeginPlay")); }
			ScriptFunction OnActivate() { return mOnActivate ? mOnActivate : (mOnActivate = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraController.OnActivate")); }
			ScriptFunction ConsoleCommand() { return mConsoleCommand ? mConsoleCommand : (mConsoleCommand = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraController.ConsoleCommand")); }
			ScriptFunction OnDeactivate() { return mOnDeactivate ? mOnDeactivate : (mOnDeactivate = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraController.OnDeactivate")); }
			ScriptFunction DisableDebugCamera() { return mDisableDebugCamera ? mDisableDebugCamera : (mDisableDebugCamera = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraController.DisableDebugCamera")); }
			ScriptFunction NativeInputKey() { return mNativeInputKey ? mNativeInputKey : (mNativeInputKey = ScriptObject.Find!(ScriptFunction)("Function Engine.DebugCameraController.NativeInputKey")); }
		}
	}
	@property final
	{
		auto ref
		{
			Player OryginalPlayer() { return *cast(Player*)(cast(size_t)cast(void*)this + 1480); }
			PlayerController OryginalControllerRef() { return *cast(PlayerController*)(cast(size_t)cast(void*)this + 1476); }
			Actor SelectedActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 1488); }
			ScriptName UnselectKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1464); }
			ScriptName SecondaryKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1456); }
			ScriptName PrimaryKey() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 1448); }
		}
		bool bIsFrozenRendering() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1472) & 0x2) != 0; }
		bool bIsFrozenRendering(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1472) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1472) &= ~0x2; } return val; }
		bool bShowSelectedInfo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1472) & 0x1) != 0; }
		bool bShowSelectedInfo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1472) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1472) &= ~0x1; } return val; }
	}
final:
	void PrimarySelect(Vector HitLoc, Vector HitNormal, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(Actor.TraceHitInfo*)&params[24] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.PrimarySelect, params.ptr, cast(void*)0);
	}
	void SecondarySelect(Vector HitLoc, Vector HitNormal, Actor.TraceHitInfo HitInfo)
	{
		ubyte params[52];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(Actor.TraceHitInfo*)&params[24] = HitInfo;
		(cast(ScriptObject)this).ProcessEvent(Functions.SecondarySelect, params.ptr, cast(void*)0);
	}
	void Unselect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Unselect, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void OnActivate(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnActivate, params.ptr, cast(void*)0);
	}
	ScriptString ConsoleCommand(ScriptString Command, bool bWriteToLog)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(bool*)&params[12] = bWriteToLog;
		(cast(ScriptObject)this).ProcessEvent(Functions.ConsoleCommand, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	void OnDeactivate(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnDeactivate, params.ptr, cast(void*)0);
	}
	void DisableDebugCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableDebugCamera, cast(void*)0, cast(void*)0);
	}
	bool NativeInputKey(int ControllerId, ScriptName Key, UObject.EInputEvent Event, float AmountDepressed, bool bGamepad)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = Event;
		*cast(float*)&params[16] = AmountDepressed;
		*cast(bool*)&params[20] = bGamepad;
		(cast(ScriptObject)this).ProcessEvent(Functions.NativeInputKey, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
}
