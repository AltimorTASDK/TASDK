module UnrealScript.UTGame.UTGFxTweenableMoviePlayer;

import ScriptClasses;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface UTGFxTweenableMoviePlayer : GFxMoviePlayer
{
	enum TweenType : ubyte
	{
		TWEEN_EaseOut = 0,
		TWEEN_EaseIn = 1,
		TWEEN_Linear = 2,
		TWEEN_MAX = 3,
	}
	struct GFxTween
	{
		public @property final auto ref UTGFxTweenableMoviePlayer.TweenType ThisTweenType() { return *cast(UTGFxTweenableMoviePlayer.TweenType*)(cast(size_t)&this + 96); }
		private ubyte __ThisTweenType[1];
		public @property final bool bFinished() { return (*cast(uint*)(cast(size_t)&this + 92) & 0x1) != 0; }
		public @property final bool bFinished(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 92) &= ~0x1; } return val; }
		private ubyte __bFinished[4];
		public @property final auto ref GFxObject.ASDisplayInfo displayInfo() { return *cast(GFxObject.ASDisplayInfo*)(cast(size_t)&this + 48); }
		private ubyte __displayInfo[44];
		public @property final auto ref ScriptString Callback() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
		private ubyte __Callback[12];
		public @property final auto ref ScriptString MemberName() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
		private ubyte __MemberName[12];
		public @property final auto ref float DesiredValue() { return *cast(float*)(cast(size_t)&this + 20); }
		private ubyte __DesiredValue[4];
		public @property final auto ref float Delta() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __Delta[4];
		public @property final auto ref float StartValue() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __StartValue[4];
		public @property final auto ref float Duration() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Duration[4];
		public @property final auto ref float TweenTime() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __TweenTime[4];
		public @property final auto ref GFxObject TargetMC() { return *cast(GFxObject*)(cast(size_t)&this + 0); }
		private ubyte __TargetMC[4];
	}
	public @property final auto ref ScriptArray!(UTGFxTweenableMoviePlayer.GFxTween) TweenList() { return *cast(ScriptArray!(UTGFxTweenableMoviePlayer.GFxTween)*)(cast(size_t)cast(void*)this + 380); }
	final void TweenTo(GFxObject MC, float Duration, ScriptString Member, float Target, UTGFxTweenableMoviePlayer.TweenType NewTweenType, ScriptString Callback)
	{
		ubyte params[37];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MC;
		*cast(float*)&params[4] = Duration;
		*cast(ScriptString*)&params[8] = Member;
		*cast(float*)&params[20] = Target;
		*cast(UTGFxTweenableMoviePlayer.TweenType*)&params[24] = NewTweenType;
		*cast(ScriptString*)&params[28] = Callback;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37559], params.ptr, cast(void*)0);
	}
	final void ProcessTweenCallback(ScriptString Callback, GFxObject TargetMC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Callback;
		*cast(GFxObject*)&params[12] = TargetMC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37567], params.ptr, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37570], params.ptr, cast(void*)0);
	}
	final void ClearsTweensOnMovieClip(GFxObject MC, bool bReset)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MC;
		*cast(bool*)&params[4] = bReset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37575], params.ptr, cast(void*)0);
	}
	final void PrintTweensToLog()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37580], cast(void*)0, cast(void*)0);
	}
	final void TweenComplete(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37582], params.ptr, cast(void*)0);
	}
}
