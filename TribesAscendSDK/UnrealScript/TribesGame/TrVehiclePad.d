module UnrealScript.TribesGame.TrVehiclePad;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.Engine.SkeletalMeshActor;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrVehiclePad : SkeletalMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVehiclePad")); }
	private static __gshared TrVehiclePad mDefaultProperties;
	@property final static TrVehiclePad DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVehiclePad)("TrVehiclePad TribesGame.Default__TrVehiclePad")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mPlayIdleAnim;
			ScriptFunction mPlayDeployAnim;
			ScriptFunction mPlayCollapseAnim;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehiclePad.PostBeginPlay")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehiclePad.PostInitAnimTree")); }
			ScriptFunction PlayIdleAnim() { return mPlayIdleAnim ? mPlayIdleAnim : (mPlayIdleAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehiclePad.PlayIdleAnim")); }
			ScriptFunction PlayDeployAnim() { return mPlayDeployAnim ? mPlayDeployAnim : (mPlayDeployAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehiclePad.PlayDeployAnim")); }
			ScriptFunction PlayCollapseAnim() { return mPlayCollapseAnim ? mPlayCollapseAnim : (mPlayCollapseAnim = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVehiclePad.PlayCollapseAnim")); }
		}
	}
	@property final auto ref
	{
		TrSkelControl_SpinControl m_SpinControl() { return *cast(TrSkelControl_SpinControl*)(cast(size_t)cast(void*)this + 540); }
		TrAnimNodeBlendList m_VehiclePadBlendNode() { return *cast(TrAnimNodeBlendList*)(cast(size_t)cast(void*)this + 536); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInitAnimTree, params.ptr, cast(void*)0);
	}
	void PlayIdleAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayIdleAnim, cast(void*)0, cast(void*)0);
	}
	void PlayDeployAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayDeployAnim, cast(void*)0, cast(void*)0);
	}
	void PlayCollapseAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayCollapseAnim, cast(void*)0, cast(void*)0);
	}
}
