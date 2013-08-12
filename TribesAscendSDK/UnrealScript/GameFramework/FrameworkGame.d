module UnrealScript.GameFramework.FrameworkGame;

import ScriptClasses;
import UnrealScript.Engine.GameInfo;

extern(C++) interface FrameworkGame : GameInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.FrameworkGame")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTgStartGame;
			ScriptFunction mTgEndGame;
			ScriptFunction mTgTimer;
			ScriptFunction mTgChangeScore;
			ScriptFunction mTgChangeTime;
			ScriptFunction mTgGetSpectators;
		}
		public @property static final
		{
			ScriptFunction TgStartGame() { return mTgStartGame ? mTgStartGame : (mTgStartGame = ScriptObject.Find!(ScriptFunction)("Function GameFramework.FrameworkGame.TgStartGame")); }
			ScriptFunction TgEndGame() { return mTgEndGame ? mTgEndGame : (mTgEndGame = ScriptObject.Find!(ScriptFunction)("Function GameFramework.FrameworkGame.TgEndGame")); }
			ScriptFunction TgTimer() { return mTgTimer ? mTgTimer : (mTgTimer = ScriptObject.Find!(ScriptFunction)("Function GameFramework.FrameworkGame.TgTimer")); }
			ScriptFunction TgChangeScore() { return mTgChangeScore ? mTgChangeScore : (mTgChangeScore = ScriptObject.Find!(ScriptFunction)("Function GameFramework.FrameworkGame.TgChangeScore")); }
			ScriptFunction TgChangeTime() { return mTgChangeTime ? mTgChangeTime : (mTgChangeTime = ScriptObject.Find!(ScriptFunction)("Function GameFramework.FrameworkGame.TgChangeTime")); }
			ScriptFunction TgGetSpectators() { return mTgGetSpectators ? mTgGetSpectators : (mTgGetSpectators = ScriptObject.Find!(ScriptFunction)("Function GameFramework.FrameworkGame.TgGetSpectators")); }
		}
	}
	struct RequiredMobileInputConfig
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.FrameworkGame.RequiredMobileInputConfig")); }
		@property final
		{
			auto ref
			{
				ScriptArray!(ScriptString) RequireZoneNames() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 12); }
				ScriptString GroupName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			}
			bool bIsAttractModeGroup() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bIsAttractModeGroup(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	@property final auto ref ScriptArray!(FrameworkGame.RequiredMobileInputConfig) RequiredMobileInputConfigs() { return *cast(ScriptArray!(FrameworkGame.RequiredMobileInputConfig)*)(cast(size_t)cast(void*)this + 884); }
final:
	void TgStartGame(ScriptString* Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgStartGame, params.ptr, cast(void*)0);
		*Reason = *cast(ScriptString*)params.ptr;
	}
	void TgEndGame(ScriptString* Reason)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *Reason;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgEndGame, params.ptr, cast(void*)0);
		*Reason = *cast(ScriptString*)params.ptr;
	}
	void TgTimer(ScriptString* sTimerCommand)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = *sTimerCommand;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgTimer, params.ptr, cast(void*)0);
		*sTimerCommand = *cast(ScriptString*)params.ptr;
	}
	void TgChangeScore(int nTeam, int nCount)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = nTeam;
		*cast(int*)&params[4] = nCount;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgChangeScore, params.ptr, cast(void*)0);
	}
	void TgChangeTime(int nSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = nSeconds;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgChangeTime, params.ptr, cast(void*)0);
	}
	void TgGetSpectators(ScriptArray!(ScriptString)* List)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(ScriptString)*)params.ptr = *List;
		(cast(ScriptObject)this).ProcessEvent(Functions.TgGetSpectators, params.ptr, cast(void*)0);
		*List = *cast(ScriptArray!(ScriptString)*)params.ptr;
	}
}
