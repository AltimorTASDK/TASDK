module UnrealScript.TribesGame.TrSpottedTarget;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSpottedTarget")()); }
	private static __gshared TrSpottedTarget mDefaultProperties;
	@property final static TrSpottedTarget DefaultProperties() { mixin(MGDPC!(TrSpottedTarget, "TrSpottedTarget TribesGame.Default__TrSpottedTarget")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrSpottedTarget.PostBeginPlay")()); }
			ScriptFunction SetSpottedActor() { mixin(MGF!("mSetSpottedActor", "Function TribesGame.TrSpottedTarget.SetSpottedActor")()); }
			ScriptFunction PostRenderFor() { mixin(MGF!("mPostRenderFor", "Function TribesGame.TrSpottedTarget.PostRenderFor")()); }
			ScriptFunction ShouldRenderMarker() { mixin(MGF!("mShouldRenderMarker", "Function TribesGame.TrSpottedTarget.ShouldRenderMarker")()); }
			ScriptFunction GetMarker() { mixin(MGF!("mGetMarker", "Function TribesGame.TrSpottedTarget.GetMarker")()); }
			ScriptFunction GetMarkerColor() { mixin(MGF!("mGetMarkerColor", "Function TribesGame.TrSpottedTarget.GetMarkerColor")()); }
		}
	}
	@property final auto ref
	{
		Actor m_SpottedActor() { mixin(MGPC!(Actor, 476)()); }
		float m_fLastSpottedTimestamp() { mixin(MGPC!(float, 484)()); }
		float m_fSpottedActorDuration() { mixin(MGPC!(float, 496)()); }
		UObject.Vector2D m_MarkerSize() { mixin(MGPC!(UObject.Vector2D, 504)()); }
		MaterialInstanceConstant m_MarkerMIC() { mixin(MGPC!(MaterialInstanceConstant, 500)()); }
		float m_fMarkerOpacity() { mixin(MGPC!(float, 492)()); }
		float m_fMarkerZOffset() { mixin(MGPC!(float, 488)()); }
		ubyte m_CachedTeamIndex() { mixin(MGPC!(ubyte, 480)()); }
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
