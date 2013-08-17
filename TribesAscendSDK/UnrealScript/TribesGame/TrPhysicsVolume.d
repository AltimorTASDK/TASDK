module UnrealScript.TribesGame.TrPhysicsVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface TrPhysicsVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPhysicsVolume")); }
	private static __gshared TrPhysicsVolume mDefaultProperties;
	@property final static TrPhysicsVolume DefaultProperties() { mixin(MGDPC("TrPhysicsVolume", "TrPhysicsVolume TribesGame.Default__TrPhysicsVolume")); }
	@property final auto ref
	{
		TrVGSCommandList.EVGSContextLocation m_ContextLocation() { mixin(MGPC("TrVGSCommandList.EVGSContextLocation", 584)); }
		ubyte m_DefenderTeamIndex() { mixin(MGPC("ubyte", 585)); }
	}
}
