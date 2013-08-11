module UnrealScript.TribesGame.TrVehiclePad;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.Engine.SkeletalMeshActor;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrVehiclePad : SkeletalMeshActor
{
public extern(D):
	@property final auto ref
	{
		TrSkelControl_SpinControl m_SpinControl() { return *cast(TrSkelControl_SpinControl*)(cast(size_t)cast(void*)this + 540); }
		TrAnimNodeBlendList m_VehiclePadBlendNode() { return *cast(TrAnimNodeBlendList*)(cast(size_t)cast(void*)this + 536); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114967], cast(void*)0, cast(void*)0);
	}
	void PostInitAnimTree(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114970], params.ptr, cast(void*)0);
	}
	void PlayIdleAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114972], cast(void*)0, cast(void*)0);
	}
	void PlayDeployAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114973], cast(void*)0, cast(void*)0);
	}
	void PlayCollapseAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114974], cast(void*)0, cast(void*)0);
	}
}
