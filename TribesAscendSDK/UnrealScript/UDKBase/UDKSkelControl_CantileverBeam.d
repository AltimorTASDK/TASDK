module UnrealScript.UDKBase.UDKSkelControl_CantileverBeam;

import ScriptClasses;
import UnrealScript.Engine.SkelControlLookAt;

extern(C++) interface UDKSkelControl_CantileverBeam : SkelControlLookAt
{
	public @property final auto ref float PercentBeamVelocityTransfer() { return *cast(float*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref float SpringDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref float SpringStiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref Vector Velocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref Vector InitialWorldSpaceGoalOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref Vector WorldSpaceGoal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 320); }
	final Vector EntireBeamVelocity()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35332], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
}
