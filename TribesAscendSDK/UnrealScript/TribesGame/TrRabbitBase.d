module UnrealScript.TribesGame.TrRabbitBase;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.TribesGame.TrHelpTextManager;
import UnrealScript.UTGame.UTGameObjective;
import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrFlagRabbit;
import UnrealScript.UTGame.UTBot;

extern(C++) interface TrRabbitBase : UTGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRabbitBase")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPostInitAnimTree;
			ScriptFunction mGetBestViewTarget;
			ScriptFunction mGetLocationMessageIndex;
			ScriptFunction mGetLocationSpeechFor;
			ScriptFunction mObjectiveChanged;
			ScriptFunction mGetFlag;
			ScriptFunction mIsActive;
			ScriptFunction mOnFlagComesHome;
			ScriptFunction mOnFlagTaken;
			ScriptFunction mSpawnHelpTextCollisionProxy;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitBase.PostBeginPlay")); }
			ScriptFunction PostInitAnimTree() { return mPostInitAnimTree ? mPostInitAnimTree : (mPostInitAnimTree = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitBase.PostInitAnimTree")); }
			ScriptFunction GetBestViewTarget() { return mGetBestViewTarget ? mGetBestViewTarget : (mGetBestViewTarget = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitBase.GetBestViewTarget")); }
			ScriptFunction GetLocationMessageIndex() { return mGetLocationMessageIndex ? mGetLocationMessageIndex : (mGetLocationMessageIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitBase.GetLocationMessageIndex")); }
			ScriptFunction GetLocationSpeechFor() { return mGetLocationSpeechFor ? mGetLocationSpeechFor : (mGetLocationSpeechFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitBase.GetLocationSpeechFor")); }
			ScriptFunction ObjectiveChanged() { return mObjectiveChanged ? mObjectiveChanged : (mObjectiveChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitBase.ObjectiveChanged")); }
			ScriptFunction GetFlag() { return mGetFlag ? mGetFlag : (mGetFlag = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitBase.GetFlag")); }
			ScriptFunction IsActive() { return mIsActive ? mIsActive : (mIsActive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitBase.IsActive")); }
			ScriptFunction OnFlagComesHome() { return mOnFlagComesHome ? mOnFlagComesHome : (mOnFlagComesHome = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitBase.OnFlagComesHome")); }
			ScriptFunction OnFlagTaken() { return mOnFlagTaken ? mOnFlagTaken : (mOnFlagTaken = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitBase.OnFlagTaken")); }
			ScriptFunction SpawnHelpTextCollisionProxy() { return mSpawnHelpTextCollisionProxy ? mSpawnHelpTextCollisionProxy : (mSpawnHelpTextCollisionProxy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRabbitBase.SpawnHelpTextCollisionProxy")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(SoundNodeWave) NearLocationSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1072); }
		ScriptArray!(SoundNodeWave) MidfieldHighSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1084); }
		ScriptArray!(SoundNodeWave) MidfieldLowSpeech() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 1096); }
		TrAnimNodeBlendList m_OpenCloseBlendList() { return *cast(TrAnimNodeBlendList*)(cast(size_t)cast(void*)this + 1112); }
		ScriptClass CTFAnnouncerMessagesClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 1068); }
		MaterialInstanceConstant MIC_FlagBaseColor() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1060); }
		MaterialInstanceConstant FlagBaseMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 1056); }
		float BaseExitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 1048); }
		float NearBaseRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 1044); }
		float MidFieldLowZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1040); }
		float MidFieldHighZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 1036); }
		TrFlagRabbit myFlag() { return *cast(TrFlagRabbit*)(cast(size_t)cast(void*)this + 1032); }
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
	Actor GetBestViewTarget()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBestViewTarget, params.ptr, cast(void*)0);
		return *cast(Actor*)params.ptr;
	}
	int GetLocationMessageIndex(UTBot B, Pawn StatusPawn)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UTBot*)params.ptr = B;
		*cast(Pawn*)&params[4] = StatusPawn;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocationMessageIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	SoundNodeWave GetLocationSpeechFor(PlayerController PC, int LocationSpeechOffset, int MessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(int*)&params[4] = LocationSpeechOffset;
		*cast(int*)&params[8] = MessageIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLocationSpeechFor, params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	void ObjectiveChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ObjectiveChanged, cast(void*)0, cast(void*)0);
	}
	UTCarriedObject GetFlag()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFlag, params.ptr, cast(void*)0);
		return *cast(UTCarriedObject*)params.ptr;
	}
	bool IsActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsActive, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void OnFlagComesHome()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFlagComesHome, cast(void*)0, cast(void*)0);
	}
	void OnFlagTaken()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnFlagTaken, cast(void*)0, cast(void*)0);
	}
	void SpawnHelpTextCollisionProxy(TrHelpTextManager.EHelpTextType HelpTextType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = HelpTextType;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnHelpTextCollisionProxy, params.ptr, cast(void*)0);
	}
}
