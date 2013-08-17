module UnrealScript.Engine.SequenceOp;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceObject;
import UnrealScript.Core.Property;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.SequenceVariable;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpData;

extern(C++) interface SequenceOp : SequenceObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SequenceOp")()); }
	private static __gshared SequenceOp mDefaultProperties;
	@property final static SequenceOp DefaultProperties() { mixin(MGDPC!(SequenceOp, "SequenceOp Engine.Default__SequenceOp")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjectVars;
			ScriptFunction mHasLinkedOps;
			ScriptFunction mGetLinkedObjects;
			ScriptFunction mGetInterpDataVars;
			ScriptFunction mGetBoolVars;
			ScriptFunction mLinkedVariables;
			ScriptFunction mActivateOutputLink;
			ScriptFunction mActivateNamedOutputLink;
			ScriptFunction mActivated;
			ScriptFunction mDeactivated;
			ScriptFunction mVersionUpdated;
			ScriptFunction mPopulateLinkedVariableValues;
			ScriptFunction mPublishLinkedVariableValues;
			ScriptFunction mReset;
			ScriptFunction mGetPawn;
			ScriptFunction mGetController;
			ScriptFunction mForceActivateInput;
			ScriptFunction mForceActivateOutput;
		}
		public @property static final
		{
			ScriptFunction GetObjectVars() { mixin(MGF!("mGetObjectVars", "Function Engine.SequenceOp.GetObjectVars")()); }
			ScriptFunction HasLinkedOps() { mixin(MGF!("mHasLinkedOps", "Function Engine.SequenceOp.HasLinkedOps")()); }
			ScriptFunction GetLinkedObjects() { mixin(MGF!("mGetLinkedObjects", "Function Engine.SequenceOp.GetLinkedObjects")()); }
			ScriptFunction GetInterpDataVars() { mixin(MGF!("mGetInterpDataVars", "Function Engine.SequenceOp.GetInterpDataVars")()); }
			ScriptFunction GetBoolVars() { mixin(MGF!("mGetBoolVars", "Function Engine.SequenceOp.GetBoolVars")()); }
			ScriptFunction LinkedVariables() { mixin(MGF!("mLinkedVariables", "Function Engine.SequenceOp.LinkedVariables")()); }
			ScriptFunction ActivateOutputLink() { mixin(MGF!("mActivateOutputLink", "Function Engine.SequenceOp.ActivateOutputLink")()); }
			ScriptFunction ActivateNamedOutputLink() { mixin(MGF!("mActivateNamedOutputLink", "Function Engine.SequenceOp.ActivateNamedOutputLink")()); }
			ScriptFunction Activated() { mixin(MGF!("mActivated", "Function Engine.SequenceOp.Activated")()); }
			ScriptFunction Deactivated() { mixin(MGF!("mDeactivated", "Function Engine.SequenceOp.Deactivated")()); }
			ScriptFunction VersionUpdated() { mixin(MGF!("mVersionUpdated", "Function Engine.SequenceOp.VersionUpdated")()); }
			ScriptFunction PopulateLinkedVariableValues() { mixin(MGF!("mPopulateLinkedVariableValues", "Function Engine.SequenceOp.PopulateLinkedVariableValues")()); }
			ScriptFunction PublishLinkedVariableValues() { mixin(MGF!("mPublishLinkedVariableValues", "Function Engine.SequenceOp.PublishLinkedVariableValues")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.SequenceOp.Reset")()); }
			ScriptFunction GetPawn() { mixin(MGF!("mGetPawn", "Function Engine.SequenceOp.GetPawn")()); }
			ScriptFunction GetController() { mixin(MGF!("mGetController", "Function Engine.SequenceOp.GetController")()); }
			ScriptFunction ForceActivateInput() { mixin(MGF!("mForceActivateInput", "Function Engine.SequenceOp.ForceActivateInput")()); }
			ScriptFunction ForceActivateOutput() { mixin(MGF!("mForceActivateOutput", "Function Engine.SequenceOp.ForceActivateOutput")()); }
		}
	}
	struct SeqOpInputLink
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SequenceOp.SeqOpInputLink")()); }
		@property final
		{
			auto ref
			{
				int OverrideDelta() { mixin(MGPS!("int", 44)()); }
				float ActivateDelay() { mixin(MGPS!("float", 36)()); }
				int DrawY() { mixin(MGPS!("int", 28)()); }
				SequenceOp LinkedOp() { mixin(MGPS!("SequenceOp", 24)()); }
				int QueuedActivations() { mixin(MGPS!("int", 16)()); }
				ScriptString LinkDesc() { mixin(MGPS!("ScriptString", 0)()); }
			}
			bool bHasImpulse() { mixin(MGBPS!(12, 0x1)()); }
			bool bHasImpulse(bool val) { mixin(MSBPS!(12, 0x1)()); }
			bool bClampedMin() { mixin(MGBPS!(40, 0x4)()); }
			bool bClampedMin(bool val) { mixin(MSBPS!(40, 0x4)()); }
			bool bClampedMax() { mixin(MGBPS!(40, 0x2)()); }
			bool bClampedMax(bool val) { mixin(MSBPS!(40, 0x2)()); }
			bool bMoving() { mixin(MGBPS!(40, 0x1)()); }
			bool bMoving(bool val) { mixin(MSBPS!(40, 0x1)()); }
			bool bHidden() { mixin(MGBPS!(32, 0x1)()); }
			bool bHidden(bool val) { mixin(MSBPS!(32, 0x1)()); }
			bool bDisabledPIE() { mixin(MGBPS!(20, 0x2)()); }
			bool bDisabledPIE(bool val) { mixin(MSBPS!(20, 0x2)()); }
			bool bDisabled() { mixin(MGBPS!(20, 0x1)()); }
			bool bDisabled(bool val) { mixin(MSBPS!(20, 0x1)()); }
		}
	}
	struct SeqOpOutputLink
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SequenceOp.SeqOpOutputLink")()); }
		@property final
		{
			auto ref
			{
				ScriptArray!(SequenceOp.SeqOpOutputInputLink) Links() { mixin(MGPS!("ScriptArray!(SequenceOp.SeqOpOutputInputLink)", 0)()); }
				int OverrideDelta() { mixin(MGPS!("int", 44)()); }
				int DrawY() { mixin(MGPS!("int", 36)()); }
				float ActivateDelay() { mixin(MGPS!("float", 32)()); }
				SequenceOp LinkedOp() { mixin(MGPS!("SequenceOp", 28)()); }
				ScriptString LinkDesc() { mixin(MGPS!("ScriptString", 12)()); }
			}
			bool bClampedMin() { mixin(MGBPS!(40, 0x8)()); }
			bool bClampedMin(bool val) { mixin(MSBPS!(40, 0x8)()); }
			bool bClampedMax() { mixin(MGBPS!(40, 0x4)()); }
			bool bClampedMax(bool val) { mixin(MSBPS!(40, 0x4)()); }
			bool bMoving() { mixin(MGBPS!(40, 0x2)()); }
			bool bMoving(bool val) { mixin(MSBPS!(40, 0x2)()); }
			bool bHidden() { mixin(MGBPS!(40, 0x1)()); }
			bool bHidden(bool val) { mixin(MSBPS!(40, 0x1)()); }
			bool bDisabledPIE() { mixin(MGBPS!(24, 0x4)()); }
			bool bDisabledPIE(bool val) { mixin(MSBPS!(24, 0x4)()); }
			bool bDisabled() { mixin(MGBPS!(24, 0x2)()); }
			bool bDisabled(bool val) { mixin(MSBPS!(24, 0x2)()); }
			bool bHasImpulse() { mixin(MGBPS!(24, 0x1)()); }
			bool bHasImpulse(bool val) { mixin(MSBPS!(24, 0x1)()); }
		}
	}
	struct SeqVarLink
	{
		private ubyte __buffer__[72];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SequenceOp.SeqVarLink")()); }
		@property final
		{
			auto ref
			{
				ScriptArray!(SequenceVariable) LinkedVariables() { mixin(MGPS!("ScriptArray!(SequenceVariable)", 4)()); }
				int OverrideDelta() { mixin(MGPS!("int", 68)()); }
				Property CachedProperty() { mixin(MGPS!("Property", 60)()); }
				int DrawX() { mixin(MGPS!("int", 56)()); }
				int MaxVars() { mixin(MGPS!("int", 52)()); }
				int MinVars() { mixin(MGPS!("int", 48)()); }
				ScriptName PropertyName() { mixin(MGPS!("ScriptName", 36)()); }
				ScriptName LinkVar() { mixin(MGPS!("ScriptName", 28)()); }
				ScriptString LinkDesc() { mixin(MGPS!("ScriptString", 16)()); }
				ScriptClass ExpectedType() { mixin(MGPS!("ScriptClass", 0)()); }
			}
			bool bClampedMin() { mixin(MGBPS!(64, 0x8)()); }
			bool bClampedMin(bool val) { mixin(MSBPS!(64, 0x8)()); }
			bool bClampedMax() { mixin(MGBPS!(64, 0x4)()); }
			bool bClampedMax(bool val) { mixin(MSBPS!(64, 0x4)()); }
			bool bMoving() { mixin(MGBPS!(64, 0x2)()); }
			bool bMoving(bool val) { mixin(MSBPS!(64, 0x2)()); }
			bool bAllowAnyType() { mixin(MGBPS!(64, 0x1)()); }
			bool bAllowAnyType(bool val) { mixin(MSBPS!(64, 0x1)()); }
			bool bHidden() { mixin(MGBPS!(44, 0x8)()); }
			bool bHidden(bool val) { mixin(MSBPS!(44, 0x8)()); }
			bool bModifiesLinkedObject() { mixin(MGBPS!(44, 0x4)()); }
			bool bModifiesLinkedObject(bool val) { mixin(MSBPS!(44, 0x4)()); }
			bool bSequenceNeverReadsOnlyWritesToThisVar() { mixin(MGBPS!(44, 0x2)()); }
			bool bSequenceNeverReadsOnlyWritesToThisVar(bool val) { mixin(MSBPS!(44, 0x2)()); }
			bool bWriteable() { mixin(MGBPS!(44, 0x1)()); }
			bool bWriteable(bool val) { mixin(MSBPS!(44, 0x1)()); }
		}
	}
	struct SeqEventLink
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SequenceOp.SeqEventLink")()); }
		@property final
		{
			auto ref
			{
				ScriptArray!(SequenceEvent) LinkedEvents() { mixin(MGPS!("ScriptArray!(SequenceEvent)", 4)()); }
				int OverrideDelta() { mixin(MGPS!("int", 36)()); }
				int DrawX() { mixin(MGPS!("int", 28)()); }
				ScriptString LinkDesc() { mixin(MGPS!("ScriptString", 16)()); }
				ScriptClass ExpectedType() { mixin(MGPS!("ScriptClass", 0)()); }
			}
			bool bClampedMin() { mixin(MGBPS!(32, 0x8)()); }
			bool bClampedMin(bool val) { mixin(MSBPS!(32, 0x8)()); }
			bool bClampedMax() { mixin(MGBPS!(32, 0x4)()); }
			bool bClampedMax(bool val) { mixin(MSBPS!(32, 0x4)()); }
			bool bMoving() { mixin(MGBPS!(32, 0x2)()); }
			bool bMoving(bool val) { mixin(MSBPS!(32, 0x2)()); }
			bool bHidden() { mixin(MGBPS!(32, 0x1)()); }
			bool bHidden(bool val) { mixin(MSBPS!(32, 0x1)()); }
		}
	}
	struct SeqOpOutputInputLink
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.SequenceOp.SeqOpOutputInputLink")()); }
		@property final auto ref
		{
			int InputLinkIdx() { mixin(MGPS!("int", 4)()); }
			SequenceOp LinkedOp() { mixin(MGPS!("SequenceOp", 0)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SequenceOp.SeqOpInputLink) InputLinks() { mixin(MGPC!("ScriptArray!(SequenceOp.SeqOpInputLink)", 144)()); }
			ScriptArray!(SequenceOp.SeqOpOutputLink) OutputLinks() { mixin(MGPC!("ScriptArray!(SequenceOp.SeqOpOutputLink)", 156)()); }
			ScriptArray!(SequenceOp.SeqVarLink) VariableLinks() { mixin(MGPC!("ScriptArray!(SequenceOp.SeqVarLink)", 168)()); }
			ScriptArray!(SequenceOp.SeqEventLink) EventLinks() { mixin(MGPC!("ScriptArray!(SequenceOp.SeqEventLink)", 180)()); }
			int SearchTag() { mixin(MGPC!("int", 204)()); }
			int ActivateCount() { mixin(MGPC!("int", 200)()); }
			ubyte GamepadID() { mixin(MGPC!("ubyte", 196)()); }
			int PlayerIndex() { mixin(MGPC!("int", 192)()); }
		}
		bool bPendingOutputConnectorRecalc() { mixin(MGBPC!(140, 0x100)()); }
		bool bPendingOutputConnectorRecalc(bool val) { mixin(MSBPC!(140, 0x100)()); }
		bool bPendingInputConnectorRecalc() { mixin(MGBPC!(140, 0x80)()); }
		bool bPendingInputConnectorRecalc(bool val) { mixin(MSBPC!(140, 0x80)()); }
		bool bPendingVarConnectorRecalc() { mixin(MGBPC!(140, 0x40)()); }
		bool bPendingVarConnectorRecalc(bool val) { mixin(MSBPC!(140, 0x40)()); }
		bool bHaveMovingOutputConnector() { mixin(MGBPC!(140, 0x20)()); }
		bool bHaveMovingOutputConnector(bool val) { mixin(MSBPC!(140, 0x20)()); }
		bool bHaveMovingInputConnector() { mixin(MGBPC!(140, 0x10)()); }
		bool bHaveMovingInputConnector(bool val) { mixin(MSBPC!(140, 0x10)()); }
		bool bHaveMovingVarConnector() { mixin(MGBPC!(140, 0x8)()); }
		bool bHaveMovingVarConnector(bool val) { mixin(MSBPC!(140, 0x8)()); }
		bool bAutoActivateOutputLinks() { mixin(MGBPC!(140, 0x4)()); }
		bool bAutoActivateOutputLinks(bool val) { mixin(MSBPC!(140, 0x4)()); }
		bool bLatentExecution() { mixin(MGBPC!(140, 0x2)()); }
		bool bLatentExecution(bool val) { mixin(MSBPC!(140, 0x2)()); }
		bool bActive() { mixin(MGBPC!(140, 0x1)()); }
		bool bActive(bool val) { mixin(MSBPC!(140, 0x1)()); }
	}
final:
	void GetObjectVars(ref ScriptArray!(UObject) objVars, ScriptString* inDesc = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(UObject)*)params.ptr = objVars;
		if (inDesc !is null)
			*cast(ScriptString*)&params[12] = *inDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetObjectVars, params.ptr, cast(void*)0);
		objVars = *cast(ScriptArray!(UObject)*)params.ptr;
	}
	bool HasLinkedOps(bool* bConsiderInputLinks = null)
	{
		ubyte params[8];
		params[] = 0;
		if (bConsiderInputLinks !is null)
			*cast(bool*)params.ptr = *bConsiderInputLinks;
		(cast(ScriptObject)this).ProcessEvent(Functions.HasLinkedOps, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetLinkedObjects(ref ScriptArray!(SequenceObject) out_Objects, ScriptClass* ObjectType = null, bool* bRecurse = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(SequenceObject)*)params.ptr = out_Objects;
		if (ObjectType !is null)
			*cast(ScriptClass*)&params[12] = *ObjectType;
		if (bRecurse !is null)
			*cast(bool*)&params[16] = *bRecurse;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLinkedObjects, params.ptr, cast(void*)0);
		out_Objects = *cast(ScriptArray!(SequenceObject)*)params.ptr;
	}
	void GetInterpDataVars(ref ScriptArray!(InterpData) outIData, ScriptString* inDesc = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(InterpData)*)params.ptr = outIData;
		if (inDesc !is null)
			*cast(ScriptString*)&params[12] = *inDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetInterpDataVars, params.ptr, cast(void*)0);
		outIData = *cast(ScriptArray!(InterpData)*)params.ptr;
	}
	void GetBoolVars(ref ScriptArray!(ubyte) boolVars, ScriptString* inDesc = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = boolVars;
		if (inDesc !is null)
			*cast(ScriptString*)&params[12] = *inDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBoolVars, params.ptr, cast(void*)0);
		boolVars = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
	void LinkedVariables(ScriptClass VarClass, ref SequenceVariable OutVariable, ScriptString* inDesc = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = VarClass;
		*cast(SequenceVariable*)&params[4] = OutVariable;
		if (inDesc !is null)
			*cast(ScriptString*)&params[8] = *inDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.LinkedVariables, params.ptr, cast(void*)0);
		OutVariable = *cast(SequenceVariable*)&params[4];
	}
	bool ActivateOutputLink(int OutputIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OutputIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateOutputLink, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ActivateNamedOutputLink(ScriptString LinkDesc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LinkDesc;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateNamedOutputLink, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
	void Deactivated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Deactivated, cast(void*)0, cast(void*)0);
	}
	void VersionUpdated(int OldVersion, int NewVersion)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OldVersion;
		*cast(int*)&params[4] = NewVersion;
		(cast(ScriptObject)this).ProcessEvent(Functions.VersionUpdated, params.ptr, cast(void*)0);
	}
	void PopulateLinkedVariableValues()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PopulateLinkedVariableValues, cast(void*)0, cast(void*)0);
	}
	void PublishLinkedVariableValues()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PublishLinkedVariableValues, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	Pawn GetPawn(Actor TheActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TheActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPawn, params.ptr, cast(void*)0);
		return *cast(Pawn*)&params[4];
	}
	Controller GetController(Actor TheActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TheActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetController, params.ptr, cast(void*)0);
		return *cast(Controller*)&params[4];
	}
	void ForceActivateInput(int InputIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InputIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceActivateInput, params.ptr, cast(void*)0);
	}
	void ForceActivateOutput(int OutputIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = OutputIdx;
		(cast(ScriptObject)this).ProcessEvent(Functions.ForceActivateOutput, params.ptr, cast(void*)0);
	}
}
