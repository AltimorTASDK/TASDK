module UnrealScript.TribesGame.TrSpottedTarget;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Actor;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Texture2D;

extern(C++) interface TrSpottedTarget : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSpottedTarget")); }
	private static __gshared TrSpottedTarget mDefaultProperties;
	@property final static TrSpottedTarget DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSpottedTarget)("TrSpottedTarget TribesGame.Default__TrSpottedTarget")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetSpottedActor;
			ScriptFunction mPostRenderFor;
			ScriptFunction mShouldRenderMarker;
			ScriptFunction mGetMarker;
			ScriptFunction mGetMarkerColor;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSpottedTarget.PostBeginPlay")); }
			ScriptFunction SetSpottedActor() { return mSetSpottedActor ? mSetSpottedActor : (mSetSpottedActor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSpottedTarget.SetSpottedActor")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSpottedTarget.PostRenderFor")); }
			ScriptFunction ShouldRenderMarker() { return mShouldRenderMarker ? mShouldRenderMarker : (mShouldRenderMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSpottedTarget.ShouldRenderMarker")); }
			ScriptFunction GetMarker() { return mGetMarker ? mGetMarker : (mGetMarker = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSpottedTarget.GetMarker")); }
			ScriptFunction GetMarkerColor() { return mGetMarkerColor ? mGetMarkerColor : (mGetMarkerColor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSpottedTarget.GetMarkerColor")); }
		}
	}
	@property final auto ref
	{
		Actor m_SpottedActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 476); }
		float m_fLastSpottedTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
		float m_fSpottedActorDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
		UObject.Vector2D m_MarkerSize() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 504); }
		MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 500); }
		float m_fMarkerOpacity() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		float m_fMarkerZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
		ubyte m_CachedTeamIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 480); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetSpottedActor(Actor NewSpottedActor)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = NewSpottedActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpottedActor, params.ptr, cast(void*)0);
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
	bool ShouldRenderMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldRenderMarker, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	Texture2D GetMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarker, params.ptr, cast(void*)0);
		return *cast(Texture2D*)params.ptr;
	}
	UObject.LinearColor GetMarkerColor()
	{
		ubyte params[16];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMarkerColor, params.ptr, cast(void*)0);
		return *cast(UObject.LinearColor*)params.ptr;
	}
}
