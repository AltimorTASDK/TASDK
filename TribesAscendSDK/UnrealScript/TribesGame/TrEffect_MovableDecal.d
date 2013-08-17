module UnrealScript.TribesGame.TrEffect_MovableDecal;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DecalActorMovable;

extern(C++) interface TrEffect_MovableDecal : DecalActorMovable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrEffect_MovableDecal")); }
	private static __gshared TrEffect_MovableDecal mDefaultProperties;
	@property final static TrEffect_MovableDecal DefaultProperties() { mixin(MGDPC("TrEffect_MovableDecal", "TrEffect_MovableDecal TribesGame.Default__TrEffect_MovableDecal")); }
}
