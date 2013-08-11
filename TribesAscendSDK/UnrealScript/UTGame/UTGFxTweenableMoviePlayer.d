module UnrealScript.UTGame.UTGFxTweenableMoviePlayer;

import ScriptClasses;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface UTGFxTweenableMoviePlayer : GFxMoviePlayer
{
public extern(D):
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
		@property final
		{
			auto ref
			{
				UTGFxTweenableMoviePlayer.TweenType ThisTweenType() { return *cast(UTGFxTweenableMoviePlayer.TweenType*)(cast(size_t)&this + 96); }
				GFxObject.ASDisplayInfo displayInfo() { return *cast(GFxObject.ASDisplayInfo*)(cast(size_t)&this + 48); }
				ScriptString Callback() { return *cast(ScriptString*)(cast(size_t)&this + 36); }
				ScriptString MemberName() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
				float DesiredValue() { return *cast(float*)(cast(size_t)&this + 20); }
				float Delta() { return *cast(float*)(cast(size_t)&this + 16); }
				float StartValue() { return *cast(float*)(cast(size_t)&this + 12); }
				float Duration() { return *cast(float*)(cast(size_t)&this + 8); }
				float TweenTime() { return *cast(float*)(cast(size_t)&this + 4); }
				GFxObject TargetMC() { return *cast(GFxObject*)(cast(size_t)&this + 0); }
			}
			bool bFinished() { return (*cast(uint*)(cast(size_t)&this + 92) & 0x1) != 0; }
			bool bFinished(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 92) &= ~0x1; } return val; }
		}
	}
	@property final auto ref ScriptArray!(UTGFxTweenableMoviePlayer.GFxTween) TweenList() { return *cast(ScriptArray!(UTGFxTweenableMoviePlayer.GFxTween)*)(cast(size_t)cast(void*)this + 380); }
final:
	void TweenTo(GFxObject MC, float Duration, ScriptString Member, float Target, UTGFxTweenableMoviePlayer.TweenType NewTweenType, ScriptString Callback)
	{
		ubyte params[40];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MC;
		*cast(float*)&params[4] = Duration;
		*cast(ScriptString*)&params[8] = Member;
		*cast(float*)&params[20] = Target;
		*cast(UTGFxTweenableMoviePlayer.TweenType*)&params[24] = NewTweenType;
		*cast(ScriptString*)&params[28] = Callback;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37559], params.ptr, cast(void*)0);
	}
	void ProcessTweenCallback(ScriptString Callback, GFxObject TargetMC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Callback;
		*cast(GFxObject*)&params[12] = TargetMC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37567], params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37570], params.ptr, cast(void*)0);
	}
	void ClearsTweensOnMovieClip(GFxObject MC, bool bReset)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = MC;
		*cast(bool*)&params[4] = bReset;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37575], params.ptr, cast(void*)0);
	}
	void PrintTweensToLog()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37580], cast(void*)0, cast(void*)0);
	}
	void TweenComplete(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[37582], params.ptr, cast(void*)0);
	}
}
