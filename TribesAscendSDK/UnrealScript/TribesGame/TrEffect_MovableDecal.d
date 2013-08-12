module UnrealScript.TribesGame.TrEffect_MovableDecal;

import ScriptClasses;
import UnrealScript.Engine.DecalActorMovable;

extern(C++) interface TrEffect_MovableDecal : DecalActorMovable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEffect_MovableDecal")); }
	private static __gshared TrEffect_MovableDecal mDefaultProperties;
	@property final static TrEffect_MovableDecal DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrEffect_MovableDecal)("TrEffect_MovableDecal TribesGame.Default__TrEffect_MovableDecal")); }
}
