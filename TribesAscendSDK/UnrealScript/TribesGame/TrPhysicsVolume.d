module UnrealScript.TribesGame.TrPhysicsVolume;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface TrPhysicsVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPhysicsVolume")); }
	private static __gshared TrPhysicsVolume mDefaultProperties;
	@property final static TrPhysicsVolume DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPhysicsVolume)("TrPhysicsVolume TribesGame.Default__TrPhysicsVolume")); }
	@property final auto ref
	{
		TrVGSCommandList.EVGSContextLocation m_ContextLocation() { return *cast(TrVGSCommandList.EVGSContextLocation*)(cast(size_t)cast(void*)this + 584); }
		ubyte m_DefenderTeamIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 585); }
	}
}
