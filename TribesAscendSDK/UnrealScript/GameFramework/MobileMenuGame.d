module UnrealScript.GameFramework.MobileMenuGame;

import ScriptClasses;
import UnrealScript.Engine.GameInfo;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerController;

extern(C++) interface MobileMenuGame : GameInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.MobileMenuGame")); }
	private static __gshared MobileMenuGame mDefaultProperties;
	@property final static MobileMenuGame DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MobileMenuGame)("MobileMenuGame GameFramework.Default__MobileMenuGame")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostLogin;
			ScriptFunction mStartMatch;
			ScriptFunction mRestartPlayer;
		}
		public @property static final
		{
			ScriptFunction PostLogin() { return mPostLogin ? mPostLogin : (mPostLogin = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileMenuGame.PostLogin")); }
			ScriptFunction StartMatch() { return mStartMatch ? mStartMatch : (mStartMatch = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileMenuGame.StartMatch")); }
			ScriptFunction RestartPlayer() { return mRestartPlayer ? mRestartPlayer : (mRestartPlayer = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileMenuGame.RestartPlayer")); }
		}
	}
	@property final auto ref ScriptClass InitialSceneToDisplayClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 884); }
final:
	void PostLogin(PlayerController NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostLogin, params.ptr, cast(void*)0);
	}
	void StartMatch()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartMatch, cast(void*)0, cast(void*)0);
	}
	void RestartPlayer(Controller NewPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = NewPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.RestartPlayer, params.ptr, cast(void*)0);
	}
}
