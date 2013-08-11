module UnrealScript.TribesGame.TrPhysicsVolume;

import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.PhysicsVolume;

extern(C++) interface TrPhysicsVolume : PhysicsVolume
{
	public @property final auto ref TrVGSCommandList.EVGSContextLocation m_ContextLocation() { return *cast(TrVGSCommandList.EVGSContextLocation*)(cast(size_t)cast(void*)this + 584); }
	public @property final auto ref ubyte m_DefenderTeamIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 585); }
}
