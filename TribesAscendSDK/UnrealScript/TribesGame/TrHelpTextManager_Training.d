module UnrealScript.TribesGame.TrHelpTextManager_Training;

import ScriptClasses;
import UnrealScript.TribesGame.TrHelpTextManager;

extern(C++) interface TrHelpTextManager_Training : TrHelpTextManager
{
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
	public @property final auto ref ScriptString m_TrainingHelpTextExample1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1264); }
	public @property final auto ref TrHelpTextManager_Training.EHelpTextTrainingType m_CurrentHelpTextTrainingType() { return *cast(TrHelpTextManager_Training.EHelpTextTrainingType*)(cast(size_t)cast(void*)this + 1552); }
	public @property final auto ref ScriptString m_TrainingHelpTextExample1MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1408); }
	public @property final auto ref ScriptString m_TrainingHelpTextExample2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1276); }
	public @property final auto ref ScriptString m_TrainingHelpTextExample2MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1420); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiMessage1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1288); }
	public @property final auto ref ScriptString m_TrainingHelpTextSki1MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1432); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiMessage2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1300); }
	public @property final auto ref ScriptString m_TrainingHelpTextSki2MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1444); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiMessage3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1312); }
	public @property final auto ref ScriptString m_TrainingHelpTextSki3MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1456); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiMessage4() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1324); }
	public @property final auto ref ScriptString m_TrainingHelpTextSki4MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1468); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiMessage5() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1336); }
	public @property final auto ref ScriptString m_TrainingHelpTextSki5MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1480); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiAdvMessage1() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1348); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiAdv1MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1492); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiAdvMessage2() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1360); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiAdv2MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1504); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiAdvMessage3() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1372); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiAdv3MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1516); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiAdvMessage4() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1384); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiAdv4MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1528); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiAdvMessage5() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1396); }
	public @property final auto ref ScriptString m_TrainingHelpTextSkiAdv5MenuTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1540); }
	final void InitHelpTextManager()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[95425], cast(void*)0, cast(void*)0);
	}
	final void UpdateTypesToRemoveOnTimers(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[95426], params.ptr, cast(void*)0);
	}
	final bool CheckDestroy()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[95428], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool RequestHelpText(TrHelpTextManager.EHelpTextType RequestedType)
	{
		ubyte params[5];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = RequestedType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[95430], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void RemoveHelpText(TrHelpTextManager.EHelpTextType TypeToRemove, float Time, bool bDoNotSuppress)
	{
		ubyte params[9];
		params[] = 0;
		*cast(TrHelpTextManager.EHelpTextType*)params.ptr = TypeToRemove;
		*cast(float*)&params[4] = Time;
		*cast(bool*)&params[8] = bDoNotSuppress;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[95433], params.ptr, cast(void*)0);
	}
	final void RequestHelpText_Training(TrHelpTextManager_Training.EHelpTextTrainingType RequestedType)
	{
		ubyte params[1];
		params[] = 0;
		*cast(TrHelpTextManager_Training.EHelpTextTrainingType*)params.ptr = RequestedType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[95437], params.ptr, cast(void*)0);
	}
	final void UpdateHUD()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[95440], cast(void*)0, cast(void*)0);
	}
}
