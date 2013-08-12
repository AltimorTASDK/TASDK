module UnrealScript.GameFramework.PlayerCollectorGame;

import ScriptClasses;
import UnrealScript.Engine.GameInfo;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Actor;

extern(C++) interface PlayerCollectorGame : GameInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.PlayerCollectorGame")); }
	private static __gshared PlayerCollectorGame mDefaultProperties;
	@property final static PlayerCollectorGame DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PlayerCollectorGame)("PlayerCollectorGame GameFramework.Default__PlayerCollectorGame")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mLogin;
			ScriptFunction mGetSeamlessTravelActorList;
		}
		public @property static final
		{
			ScriptFunction Login() { return mLogin ? mLogin : (mLogin = ScriptObject.Find!(ScriptFunction)("Function GameFramework.PlayerCollectorGame.Login")); }
			ScriptFunction GetSeamlessTravelActorList() { return mGetSeamlessTravelActorList ? mGetSeamlessTravelActorList : (mGetSeamlessTravelActorList = ScriptObject.Find!(ScriptFunction)("Function GameFramework.PlayerCollectorGame.GetSeamlessTravelActorList")); }
		}
	}
	@property final auto ref
	{
		ScriptString URLToLoad() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 888); }
		int NumberOfClientsToWaitFor() { return *cast(int*)(cast(size_t)cast(void*)this + 884); }
	}
final:
	PlayerController Login(ScriptString Portal, ScriptString Options, OnlineSubsystem.UniqueNetId UniqueId, ScriptString* ErrorMessage)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Portal;
		*cast(ScriptString*)&params[12] = Options;
		*cast(OnlineSubsystem.UniqueNetId*)&params[24] = UniqueId;
		*cast(ScriptString*)&params[32] = *ErrorMessage;
		(cast(ScriptObject)this).ProcessEvent(Functions.Login, params.ptr, cast(void*)0);
		*ErrorMessage = *cast(ScriptString*)&params[32];
		return *cast(PlayerController*)&params[44];
	}
	void GetSeamlessTravelActorList(bool bToEntry, ScriptArray!(Actor)* ActorList)
	{
		ubyte params[16];
		params[] = 0;
		*cast(bool*)params.ptr = bToEntry;
		*cast(ScriptArray!(Actor)*)&params[4] = *ActorList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSeamlessTravelActorList, params.ptr, cast(void*)0);
		*ActorList = *cast(ScriptArray!(Actor)*)&params[4];
	}
}
