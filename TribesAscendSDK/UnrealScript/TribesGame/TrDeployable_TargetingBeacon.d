module UnrealScript.TribesGame.TrDeployable_TargetingBeacon;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Texture2D;
import UnrealScript.TribesGame.TrDeployable_RadarSensor;

extern(C++) interface TrDeployable_TargetingBeacon : TrDeployable_RadarSensor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDeployable_TargetingBeacon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostRenderFor;
			ScriptFunction mRenderForTeammate;
			ScriptFunction mGetMarker;
		}
		public @property static final
		{
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_TargetingBeacon.PostRenderFor")); }
			ScriptFunction RenderForTeammate() { return mRenderForTeammate ? mRenderForTeammate : (mRenderForTeammate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_TargetingBeacon.RenderForTeammate")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDeployable_TargetingBeacon.GetMarker")); }
		}
	}
final:
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
	void RenderForTeammate(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir, float Distance)
	{
		ubyte params[36];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		*cast(float*)&params[32] = Distance;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderForTeammate, params.ptr, cast(void*)0);
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
}
