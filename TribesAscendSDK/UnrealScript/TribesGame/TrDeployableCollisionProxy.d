module UnrealScript.TribesGame.TrDeployableCollisionProxy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrCollisionProxy;

extern(C++) interface TrDeployableCollisionProxy : TrCollisionProxy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDeployableCollisionProxy")); }
	private static __gshared TrDeployableCollisionProxy mDefaultProperties;
	@property final static TrDeployableCollisionProxy DefaultProperties() { mixin(MGDPC("TrDeployableCollisionProxy", "TrDeployableCollisionProxy TribesGame.Default__TrDeployableCollisionProxy")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnPawnAdded;
			ScriptFunction mOnPawnRemoved;
		}
		public @property static final
		{
			ScriptFunction OnPawnAdded() { mixin(MGF("mOnPawnAdded", "Function TribesGame.TrDeployableCollisionProxy.OnPawnAdded")); }
			ScriptFunction OnPawnRemoved() { mixin(MGF("mOnPawnRemoved", "Function TribesGame.TrDeployableCollisionProxy.OnPawnRemoved")); }
		}
	}
final:
	void OnPawnAdded(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnAdded, params.ptr, cast(void*)0);
	}
	void OnPawnRemoved(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnPawnRemoved, params.ptr, cast(void*)0);
	}
}
