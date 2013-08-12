module UnrealScript.TribesGame.TrLaserTarget;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrLaserTarget : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrLaserTarget")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetTeamNum;
			ScriptFunction mGetTeamNum;
			ScriptFunction mUpdateLocation;
			ScriptFunction mDestroyed;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostRenderFor;
			ScriptFunction mRenderForOwner;
			ScriptFunction mRenderForTeammate;
		}
		public @property static final
		{
			ScriptFunction SetTeamNum() { return mSetTeamNum ? mSetTeamNum : (mSetTeamNum = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLaserTarget.SetTeamNum")); }
			ScriptFunction GetTeamNum() { return mGetTeamNum ? mGetTeamNum : (mGetTeamNum = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLaserTarget.GetTeamNum")); }
			ScriptFunction UpdateLocation() { return mUpdateLocation ? mUpdateLocation : (mUpdateLocation = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLaserTarget.UpdateLocation")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLaserTarget.Destroyed")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLaserTarget.PostBeginPlay")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLaserTarget.PostRenderFor")); }
			ScriptFunction RenderForOwner() { return mRenderForOwner ? mRenderForOwner : (mRenderForOwner = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLaserTarget.RenderForOwner")); }
			ScriptFunction RenderForTeammate() { return mRenderForTeammate ? mRenderForTeammate : (mRenderForTeammate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrLaserTarget.RenderForTeammate")); }
		}
	}
	@property final auto ref ubyte m_nTeamId() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 476); }
final:
	void SetTeamNum(ubyte TeamID)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = TeamID;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeamNum, params.ptr, cast(void*)0);
	}
	ubyte GetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTeamNum, params.ptr, cast(void*)0);
		return params[0];
	}
	void UpdateLocation(Vector NewLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateLocation, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
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
	void RenderForOwner(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir, float Distance)
	{
		ubyte params[36];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		*cast(float*)&params[32] = Distance;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderForOwner, params.ptr, cast(void*)0);
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
}
