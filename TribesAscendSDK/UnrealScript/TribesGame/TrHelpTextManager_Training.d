module UnrealScript.TribesGame.TrHelpTextManager_Training;

import ScriptClasses;
import UnrealScript.TribesGame.TrHelpTextManager;

extern(C++) interface TrHelpTextManager_Training : TrHelpTextManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrHelpTextManager_Training")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitHelpTextManager;
			ScriptFunction mUpdateTypesToRemoveOnTimers;
			ScriptFunction mCheckDestroy;
			ScriptFunction mRequestHelpText;
			ScriptFunction mRemoveHelpText;
			ScriptFunction mRequestHelpText_Training;
			ScriptFunction mUpdateHUD;
		}
		public @property static final
		{
			ScriptFunction InitHelpTextManager() { return mInitHelpTextManager ? mInitHelpTextManager : (mInitHelpTextManager = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHelpTextManager_Training.InitHelpTextManager")); }
			ScriptFunction UpdateTypesToRemoveOnTimers() { return mUpdateTypesToRemoveOnTimers ? mUpdateTypesToRemoveOnTimers : (mUpdateTypesToRemoveOnTimers = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHelpTextManager_Training.UpdateTypesToRemoveOnTimers")); }
			ScriptFunction CheckDestroy() { return mCheckDestroy ? mCheckDestroy : (mCheckDestroy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHelpTextManager_Training.CheckDestroy")); }
			ScriptFunction RequestHelpText() { return mRequestHelpText ? mRequestHelpText : (mRequestHelpText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHelpTextManager_Training.RequestHelpText")); }
			ScriptFunction RemoveHelpText() { return mRemoveHelpText ? mRemoveHelpText : (mRemoveHelpText = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHelpTextManager_Training.RemoveHelpText")); }
			ScriptFunction RequestHelpText_Training() { return mRequestHelpText_Training ? mRequestHelpText_Training : (mRequestHelpText_Training = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHelpTextManager_Training.RequestHelpText_Training")); }
			ScriptFunction UpdateHUD() { return mUpdateHUD ? mUpdateHUD : (mUpdateHUD = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrHelpTextManager_Training.UpdateHUD")); }
		}
	}
	enum EHelpTextTrainingType : ubyte
	{
		HelpTextTraining_None = 0,
		HelpTextTraining_Example1 = 1,
		HelpTextTraining_Example2 = 2,
		HelpTextTraining_Ski1 = 3,
		HelpTextTraining_Ski2 = 4,
		HelpTextTraining_Ski3 = 5,
		HelpTextTraining_Ski4 = 6,
		HelpTextTraining_Ski5 = 7,
		HelpTextTraining_SkiAdv1 = 8,
		HelpTextTraining_SkiAdv2 = 9,
		HelpTextTraining_SkiAdv3 = 10,
		HelpTextTraining_SkiAdv4 = 11,
		HelpTextTraining_SkiAdv5 = 12,
		HelpTextTraining_MAX = 13,
	}
	@property final auto ref
	{
		ScriptString m_TrainingHelpTextExample1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1264); }
		TrHelpTextManager_Training.EHelpTextTrainingType m_CurrentHelpTextTrainingType() { return *cast(TrHelpTextManager_Training.EHelpTextTrainingType*)(cast(size_t)cast(void*)this + 1552); }
		ScriptString m_TrainingHelpTextExample1MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1408); }
		ScriptString m_TrainingHelpTextExample2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1276); }
		ScriptString m_TrainingHelpTextExample2MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1420); }
		ScriptString m_TrainingHelpTextSkiMessage1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1288); }
		ScriptString m_TrainingHelpTextSki1MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1432); }
		ScriptString m_TrainingHelpTextSkiMessage2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1300); }
		ScriptString m_TrainingHelpTextSki2MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1444); }
		ScriptString m_TrainingHelpTextSkiMessage3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1312); }
		ScriptString m_TrainingHelpTextSki3MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1456); }
		ScriptString m_TrainingHelpTextSkiMessage4() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1324); }
		ScriptString m_TrainingHelpTextSki4MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1468); }
		ScriptString m_TrainingHelpTextSkiMessage5() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1336); }
		ScriptString m_TrainingHelpTextSki5MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1480); }
		ScriptString m_TrainingHelpTextSkiAdvMessage1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1348); }
		ScriptString m_TrainingHelpTextSkiAdv1MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1492); }
		ScriptString m_TrainingHelpTextSkiAdvMessage2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1360); }
		ScriptString m_TrainingHelpTextSkiAdv2MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1504); }
		ScriptString m_TrainingHelpTextSkiAdvMessage3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1372); }
		ScriptString m_TrainingHelpTextSkiAdv3MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1516); }
		ScriptString m_TrainingHelpTextSkiAdvMessage4() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1384); }
		ScriptString m_TrainingHelpTextSkiAdv4MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1528); }
		ScriptString m_TrainingHelpTextSkiAdvMessage5() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1396); }
		ScriptString m_TrainingHelpTextSkiAdv5MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1540); }
	}
final:
	void InitHelpTextManager()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitHelpTextManager, cast(void*)0, cast(void*)0);
	}
	void UpdateTypesToRemoveOnTimers(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateTypesToRemoveOnTimers, params.ptr, cast(void*)0);
	}
	bool CheckDestroy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDestroy, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool RequestHelpText(TrHelpTextManager.EHelpTextType RequestedType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = RequestedType;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestHelpText, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void RemoveHelpText(TrHelpTextManager.EHelpTextType TypeToRemove, float Time, bool bDoNotSuppress)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = TypeToRemove;
		*cast(float*)&params[4] = Time;
		*cast(bool*)&params[8] = bDoNotSuppress;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveHelpText, params.ptr, cast(void*)0);
	}
	void RequestHelpText_Training(TrHelpTextManager_Training.EHelpTextTrainingType RequestedType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrHelpTextManager_Training.EHelpTextTrainingType*)params.ptr = RequestedType;
		(cast(ScriptObject)this).ProcessEvent(Functions.RequestHelpText_Training, params.ptr, cast(void*)0);
	}
	void UpdateHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateHUD, cast(void*)0, cast(void*)0);
	}
}
