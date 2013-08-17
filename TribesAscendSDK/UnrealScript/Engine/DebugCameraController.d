module UnrealScript.Engine.DebugCameraController;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Player;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;

extern(C++) interface DebugCameraController : PlayerController
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DebugCameraController")()); }
	private static __gshared DebugCameraController mDefaultProperties;
	@property final static DebugCameraController DefaultProperties() { mixin(MGDPC!(DebugCameraController, "DebugCameraController Engine.Default__DebugCameraController")()); }
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
			ScriptFunction PrimarySelect() { mixin(MGF!("mPrimarySelect", "Function Engine.DebugCameraController.PrimarySelect")()); }
			ScriptFunction SecondarySelect() { mixin(MGF!("mSecondarySelect", "Function Engine.DebugCameraController.SecondarySelect")()); }
			ScriptFunction Unselect() { mixin(MGF!("mUnselect", "Function Engine.DebugCameraController.Unselect")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.DebugCameraController.PostBeginPlay")()); }
			ScriptFunction OnActivate() { mixin(MGF!("mOnActivate", "Function Engine.DebugCameraController.OnActivate")()); }
			ScriptFunction ConsoleCommand() { mixin(MGF!("mConsoleCommand", "Function Engine.DebugCameraController.ConsoleCommand")()); }
			ScriptFunction OnDeactivate() { mixin(MGF!("mOnDeactivate", "Function Engine.DebugCameraController.OnDeactivate")()); }
			ScriptFunction DisableDebugCamera() { mixin(MGF!("mDisableDebugCamera", "Function Engine.DebugCameraController.DisableDebugCamera")()); }
			ScriptFunction NativeInputKey() { mixin(MGF!("mNativeInputKey", "Function Engine.DebugCameraController.NativeInputKey")()); }
		}
	}
	static struct PlayerWaiting
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State Engine.DebugCameraController.PlayerWaiting")()); }
	}
	@property final
	{
		auto ref
		{
			Player OryginalPlayer() { mixin(MGPC!(Player, 1480)()); }
			PlayerController OryginalControllerRef() { mixin(MGPC!(PlayerController, 1476)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SelectedComponent'!
			Actor SelectedActor() { mixin(MGPC!(Actor, 1488)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'DrawFrustum'!
			ScriptName UnselectKey() { mixin(MGPC!(ScriptName, 1464)()); }
			ScriptName SecondaryKey() { mixin(MGPC!(ScriptName, 1456)()); }
			ScriptName PrimaryKey() { mixin(MGPC!(ScriptName, 1448)()); }
		}
		bool bIsFrozenRendering() { mixin(MGBPC!(1472, 0x2)()); }
		bool bIsFrozenRendering(bool val) { mixin(MSBPC!(1472, 0x2)()); }
		bool bShowSelectedInfo() { mixin(MGBPC!(1472, 0x1)()); }
		bool bShowSelectedInfo(bool val) { mixin(MSBPC!(1472, 0x1)()); }
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
