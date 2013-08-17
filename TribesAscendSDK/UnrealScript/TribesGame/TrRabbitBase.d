module UnrealScript.TribesGame.TrRabbitBase;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrRabbitBase")()); }
	private static __gshared TrRabbitBase mDefaultProperties;
	@property final static TrRabbitBase DefaultProperties() { mixin(MGDPC!(TrRabbitBase, "TrRabbitBase TribesGame.Default__TrRabbitBase")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrRabbitBase.PostBeginPlay")()); }
			ScriptFunction PostInitAnimTree() { mixin(MGF!("mPostInitAnimTree", "Function TribesGame.TrRabbitBase.PostInitAnimTree")()); }
			ScriptFunction GetBestViewTarget() { mixin(MGF!("mGetBestViewTarget", "Function TribesGame.TrRabbitBase.GetBestViewTarget")()); }
			ScriptFunction GetLocationMessageIndex() { mixin(MGF!("mGetLocationMessageIndex", "Function TribesGame.TrRabbitBase.GetLocationMessageIndex")()); }
			ScriptFunction GetLocationSpeechFor() { mixin(MGF!("mGetLocationSpeechFor", "Function TribesGame.TrRabbitBase.GetLocationSpeechFor")()); }
			ScriptFunction ObjectiveChanged() { mixin(MGF!("mObjectiveChanged", "Function TribesGame.TrRabbitBase.ObjectiveChanged")()); }
			ScriptFunction GetFlag() { mixin(MGF!("mGetFlag", "Function TribesGame.TrRabbitBase.GetFlag")()); }
			ScriptFunction IsActive() { mixin(MGF!("mIsActive", "Function TribesGame.TrRabbitBase.IsActive")()); }
			ScriptFunction OnFlagComesHome() { mixin(MGF!("mOnFlagComesHome", "Function TribesGame.TrRabbitBase.OnFlagComesHome")()); }
			ScriptFunction OnFlagTaken() { mixin(MGF!("mOnFlagTaken", "Function TribesGame.TrRabbitBase.OnFlagTaken")()); }
			ScriptFunction SpawnHelpTextCollisionProxy() { mixin(MGF!("mSpawnHelpTextCollisionProxy", "Function TribesGame.TrRabbitBase.SpawnHelpTextCollisionProxy")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(SoundNodeWave) NearLocationSpeech() { mixin(MGPC!(ScriptArray!(SoundNodeWave), 1072)()); }
		ScriptArray!(SoundNodeWave) MidfieldHighSpeech() { mixin(MGPC!(ScriptArray!(SoundNodeWave), 1084)()); }
		ScriptArray!(SoundNodeWave) MidfieldLowSpeech() { mixin(MGPC!(ScriptArray!(SoundNodeWave), 1096)()); }
		TrAnimNodeBlendList m_OpenCloseBlendList() { mixin(MGPC!(TrAnimNodeBlendList, 1112)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_FlagStandMesh'!
		ScriptClass CTFAnnouncerMessagesClass() { mixin(MGPC!(ScriptClass, 1068)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FlagBaseMesh'!
		MaterialInstanceConstant MIC_FlagBaseColor() { mixin(MGPC!(MaterialInstanceConstant, 1060)()); }
		MaterialInstanceConstant FlagBaseMaterial() { mixin(MGPC!(MaterialInstanceConstant, 1056)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FlagEmptyParticles'!
		float BaseExitTime() { mixin(MGPC!(float, 1048)()); }
		float NearBaseRadius() { mixin(MGPC!(float, 1044)()); }
		float MidFieldLowZOffset() { mixin(MGPC!(float, 1040)()); }
		float MidFieldHighZOffset() { mixin(MGPC!(float, 1036)()); }
		TrFlagRabbit myFlag() { mixin(MGPC!(TrFlagRabbit, 1032)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'TakenSound'!
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
