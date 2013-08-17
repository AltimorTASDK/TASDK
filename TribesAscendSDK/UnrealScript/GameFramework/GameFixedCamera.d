module UnrealScript.GameFramework.GameFixedCamera;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Camera;
import UnrealScript.GameFramework.GameCameraBase;
import UnrealScript.GameFramework.GamePlayerCamera;

extern(C++) interface GameFixedCamera : GameCameraBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.GameFixedCamera")()); }
	private static __gshared GameFixedCamera mDefaultProperties;
	@property final static GameFixedCamera DefaultProperties() { mixin(MGDPC!(GameFixedCamera, "GameFixedCamera GameFramework.Default__GameFixedCamera")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateCamera;
			ScriptFunction mOnBecomeActive;
		}
		public @property static final
		{
			ScriptFunction UpdateCamera() { mixin(MGF!("mUpdateCamera", "Function GameFramework.GameFixedCamera.UpdateCamera")()); }
			ScriptFunction OnBecomeActive() { mixin(MGF!("mOnBecomeActive", "Function GameFramework.GameFixedCamera.OnBecomeActive")()); }
		}
	}
	@property final auto ref float DefaultFOV() { mixin(MGPC!(float, 68)()); }
final:
	void UpdateCamera(Pawn P, GamePlayerCamera pCameraActor, float DeltaTime, ref Camera.TViewTarget OutVT)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(GamePlayerCamera*)&params[4] = pCameraActor;
		*cast(float*)&params[8] = DeltaTime;
		*cast(Camera.TViewTarget*)&params[12] = OutVT;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateCamera, params.ptr, cast(void*)0);
		*OutVT = *cast(Camera.TViewTarget*)&params[12];
	}
	void OnBecomeActive(GameCameraBase OldCamera)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCameraBase*)params.ptr = OldCamera;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBecomeActive, params.ptr, cast(void*)0);
	}
}
