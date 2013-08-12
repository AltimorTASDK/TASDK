module UnrealScript.GameFramework.GamePawn;

import ScriptClasses;
import UnrealScript.Engine.Pawn;

extern(C++) interface GamePawn : Pawn
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GamePawn")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateShadowSettings;
			ScriptFunction mReattachMesh;
			ScriptFunction mReattachMeshWithoutBeingSeen;
		}
		public @property static final
		{
			ScriptFunction UpdateShadowSettings() { return mUpdateShadowSettings ? mUpdateShadowSettings : (mUpdateShadowSettings = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePawn.UpdateShadowSettings")); }
			ScriptFunction ReattachMesh() { return mReattachMesh ? mReattachMesh : (mReattachMesh = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePawn.ReattachMesh")); }
			ScriptFunction ReattachMeshWithoutBeingSeen() { return mReattachMeshWithoutBeingSeen ? mReattachMeshWithoutBeingSeen : (mReattachMeshWithoutBeingSeen = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GamePawn.ReattachMeshWithoutBeingSeen")); }
		}
	}
	@property final
	{
		bool bRespondToExplosions() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1144) & 0x2) != 0; }
		bool bRespondToExplosions(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1144) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1144) &= ~0x2; } return val; }
		bool bLastHitWasHeadShot() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1144) & 0x1) != 0; }
		bool bLastHitWasHeadShot(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1144) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1144) &= ~0x1; } return val; }
	}
final:
	void UpdateShadowSettings(bool bInWantShadow)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bInWantShadow;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateShadowSettings, params.ptr, cast(void*)0);
	}
	void ReattachMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReattachMesh, cast(void*)0, cast(void*)0);
	}
	void ReattachMeshWithoutBeingSeen()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ReattachMeshWithoutBeingSeen, cast(void*)0, cast(void*)0);
	}
}
