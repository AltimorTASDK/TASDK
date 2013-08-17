module UnrealScript.TribesGame.TrSpottedTarget_MotionMine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSpottedTarget;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;

extern(C++) interface TrSpottedTarget_MotionMine : TrSpottedTarget
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSpottedTarget_MotionMine")()); }
	private static __gshared TrSpottedTarget_MotionMine mDefaultProperties;
	@property final static TrSpottedTarget_MotionMine DefaultProperties() { mixin(MGDPC!(TrSpottedTarget_MotionMine, "TrSpottedTarget_MotionMine TribesGame.Default__TrSpottedTarget_MotionMine")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTick;
			ScriptFunction mGetMarker;
			ScriptFunction mGetMarkerColor;
			ScriptFunction mShouldRenderMarker;
		}
		public @property static final
		{
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrSpottedTarget_MotionMine.Tick")()); }
			ScriptFunction GetMarker() { mixin(MGF!("mGetMarker", "Function TribesGame.TrSpottedTarget_MotionMine.GetMarker")()); }
			ScriptFunction GetMarkerColor() { mixin(MGF!("mGetMarkerColor", "Function TribesGame.TrSpottedTarget_MotionMine.GetMarkerColor")()); }
			ScriptFunction ShouldRenderMarker() { mixin(MGF!("mShouldRenderMarker", "Function TribesGame.TrSpottedTarget_MotionMine.ShouldRenderMarker")()); }
		}
	}
	@property final auto ref
	{
		float m_fMarkerBlinkSpeed() { mixin(MGPC!(float, 516)()); }
		float m_fCurrentMarkerTime() { mixin(MGPC!(float, 512)()); }
	}
final:
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
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
	bool ShouldRenderMarker()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldRenderMarker, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
