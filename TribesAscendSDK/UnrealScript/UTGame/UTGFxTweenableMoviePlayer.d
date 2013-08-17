module UnrealScript.UTGame.UTGFxTweenableMoviePlayer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface UTGFxTweenableMoviePlayer : GFxMoviePlayer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTGFxTweenableMoviePlayer")()); }
	private static __gshared UTGFxTweenableMoviePlayer mDefaultProperties;
	@property final static UTGFxTweenableMoviePlayer DefaultProperties() { mixin(MGDPC!(UTGFxTweenableMoviePlayer, "UTGFxTweenableMoviePlayer UTGame.Default__UTGFxTweenableMoviePlayer")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTweenTo;
			ScriptFunction mProcessTweenCallback;
			ScriptFunction mTick;
			ScriptFunction mClearsTweensOnMovieClip;
			ScriptFunction mPrintTweensToLog;
			ScriptFunction mTweenComplete;
		}
		public @property static final
		{
			ScriptFunction TweenTo() { mixin(MGF!("mTweenTo", "Function UTGame.UTGFxTweenableMoviePlayer.TweenTo")()); }
			ScriptFunction ProcessTweenCallback() { mixin(MGF!("mProcessTweenCallback", "Function UTGame.UTGFxTweenableMoviePlayer.ProcessTweenCallback")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function UTGame.UTGFxTweenableMoviePlayer.Tick")()); }
			ScriptFunction ClearsTweensOnMovieClip() { mixin(MGF!("mClearsTweensOnMovieClip", "Function UTGame.UTGFxTweenableMoviePlayer.ClearsTweensOnMovieClip")()); }
			ScriptFunction PrintTweensToLog() { mixin(MGF!("mPrintTweensToLog", "Function UTGame.UTGFxTweenableMoviePlayer.PrintTweensToLog")()); }
			ScriptFunction TweenComplete() { mixin(MGF!("mTweenComplete", "Function UTGame.UTGFxTweenableMoviePlayer.TweenComplete")()); }
		}
	}
	enum TweenType : ubyte
	{
		TWEEN_EaseOut = 0,
		TWEEN_EaseIn = 1,
		TWEEN_Linear = 2,
		TWEEN_MAX = 3,
	}
	struct GFxTween
	{
		private ubyte __buffer__[97];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.UTGFxTweenableMoviePlayer.GFxTween")()); }
		@property final
		{
			auto ref
			{
				UTGFxTweenableMoviePlayer.TweenType ThisTweenType() { mixin(MGPS!("UTGFxTweenableMoviePlayer.TweenType", 96)()); }
				GFxObject.ASDisplayInfo displayInfo() { mixin(MGPS!("GFxObject.ASDisplayInfo", 48)()); }
				ScriptString Callback() { mixin(MGPS!("ScriptString", 36)()); }
				ScriptString MemberName() { mixin(MGPS!("ScriptString", 24)()); }
				float DesiredValue() { mixin(MGPS!("float", 20)()); }
				float Delta() { mixin(MGPS!("float", 16)()); }
				float StartValue() { mixin(MGPS!("float", 12)()); }
				float Duration() { mixin(MGPS!("float", 8)()); }
				float TweenTime() { mixin(MGPS!("float", 4)()); }
				GFxObject TargetMC() { mixin(MGPS!("GFxObject", 0)()); }
			}
			bool bFinished() { mixin(MGBPS!(92, 0x1)()); }
			bool bFinished(bool val) { mixin(MSBPS!(92, 0x1)()); }
		}
	}
	@property final auto ref ScriptArray!(UTGFxTweenableMoviePlayer.GFxTween) TweenList() { mixin(MGPC!("ScriptArray!(UTGFxTweenableMoviePlayer.GFxTween)", 380)()); }
final:
	void TweenTo(GFxObject MC, float Duration, ScriptString Member, float Target, UTGFxTweenableMoviePlayer.TweenType NewTweenType, ScriptString* Callback = null)
	{
		ubyte params[40];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MC;
		*cast(float*)&params[4] = Duration;
		*cast(ScriptString*)&params[8] = Member;
		*cast(float*)&params[20] = Target;
		*cast(UTGFxTweenableMoviePlayer.TweenType*)&params[24] = NewTweenType;
		if (Callback !is null)
			*cast(ScriptString*)&params[28] = *Callback;
		(cast(ScriptObject)this).ProcessEvent(Functions.TweenTo, params.ptr, cast(void*)0);
	}
	void ProcessTweenCallback(ScriptString Callback, GFxObject TargetMC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Callback;
		*cast(GFxObject*)&params[12] = TargetMC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessTweenCallback, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void ClearsTweensOnMovieClip(GFxObject MC, bool* bReset = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MC;
		if (bReset !is null)
			*cast(bool*)&params[4] = *bReset;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearsTweensOnMovieClip, params.ptr, cast(void*)0);
	}
	void PrintTweensToLog()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PrintTweensToLog, cast(void*)0, cast(void*)0);
	}
	void TweenComplete(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.TweenComplete, params.ptr, cast(void*)0);
	}
}
