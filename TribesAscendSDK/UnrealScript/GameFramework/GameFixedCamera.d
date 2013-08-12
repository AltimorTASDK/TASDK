module UnrealScript.GameFramework.GameFixedCamera;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Camera;
import UnrealScript.GameFramework.GameCameraBase;
import UnrealScript.GameFramework.GamePlayerCamera;

extern(C++) interface GameFixedCamera : GameCameraBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameFixedCamera")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateCamera;
			ScriptFunction mOnBecomeActive;
		}
		public @property static final
		{
			ScriptFunction UpdateCamera() { return mUpdateCamera ? mUpdateCamera : (mUpdateCamera = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameFixedCamera.UpdateCamera")); }
			ScriptFunction OnBecomeActive() { return mOnBecomeActive ? mOnBecomeActive : (mOnBecomeActive = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameFixedCamera.OnBecomeActive")); }
		}
	}
	@property final auto ref float DefaultFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
final:
	void UpdateCamera(Pawn P, GamePlayerCamera pCameraActor, float DeltaTime, Camera.TViewTarget* OutVT)
	{
		ubyte params[56];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(GamePlayerCamera*)&params[4] = pCameraActor;
		*cast(float*)&params[8] = DeltaTime;
		*cast(Camera.TViewTarget*)&params[12] = *OutVT;
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
