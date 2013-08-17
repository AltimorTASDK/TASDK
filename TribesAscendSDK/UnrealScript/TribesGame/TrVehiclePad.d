module UnrealScript.TribesGame.TrVehiclePad;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkelControl_SpinControl;
import UnrealScript.Engine.SkeletalMeshActor;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrVehiclePad : SkeletalMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVehiclePad")()); }
	private static __gshared TrVehiclePad mDefaultProperties;
	@property final static TrVehiclePad DefaultProperties() { mixin(MGDPC!(TrVehiclePad, "TrVehiclePad TribesGame.Default__TrVehiclePad")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrVehiclePad.PostBeginPlay")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrVehiclePad.PostInitAnimTree")()); }
			ScriptFunction PlayIdleAnim() { mixin(MGF!("mPlayIdleAnim", "Function TribesGame.TrVehiclePad.PlayIdleAnim")()); }
			ScriptFunction PlayDeployAnim() { mixin(MGF!("mPlayDeployAnim", "Function TribesGame.TrVehiclePad.PlayDeployAnim")()); }
			ScriptFunction PlayCollapseAnim() { mixin(MGF!("mPlayCollapseAnim", "Function TribesGame.TrVehiclePad.PlayCollapseAnim")()); }
		}
	}
	@property final auto ref
	{
		TrSkelControl_SpinControl m_SpinControl() { mixin(MGPC!("TrSkelControl_SpinControl", 540)()); }
		TrAnimNodeBlendList m_VehiclePadBlendNode() { mixin(MGPC!("TrAnimNodeBlendList", 536)()); }
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
