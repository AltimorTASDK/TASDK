module UnrealScript.Engine.SequenceOp;

import ScriptClasses;
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
	struct SeqOpInputLink
	{
		private ubyte __buffer__[48];
	public extern(D):
		@property final
		{
			auto ref
			{
				int OverrideDelta() { return *cast(int*)(cast(size_t)&this + 44); }
				float ActivateDelay() { return *cast(float*)(cast(size_t)&this + 36); }
				int DrawY() { return *cast(int*)(cast(size_t)&this + 28); }
				SequenceOp LinkedOp() { return *cast(SequenceOp*)(cast(size_t)&this + 24); }
				int QueuedActivations() { return *cast(int*)(cast(size_t)&this + 16); }
				ScriptString LinkDesc() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			}
			bool bHasImpulse() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bHasImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
			bool bClampedMin() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x4) != 0; }
			bool bClampedMin(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x4; } return val; }
			bool bClampedMax() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x2) != 0; }
			bool bClampedMax(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x2; } return val; }
			bool bMoving() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
			bool bMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
			bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
			bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
			bool bDisabledPIE() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x2) != 0; }
			bool bDisabledPIE(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x2; } return val; }
			bool bDisabled() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
			bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		}
	}
	struct SeqOpOutputLink
	{
		private ubyte __buffer__[48];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(SequenceOp.SeqOpOutputInputLink) Links() { return *cast(ScriptArray!(SequenceOp.SeqOpOutputInputLink)*)(cast(size_t)&this + 0); }
				int OverrideDelta() { return *cast(int*)(cast(size_t)&this + 44); }
				int DrawY() { return *cast(int*)(cast(size_t)&this + 36); }
				float ActivateDelay() { return *cast(float*)(cast(size_t)&this + 32); }
				SequenceOp LinkedOp() { return *cast(SequenceOp*)(cast(size_t)&this + 28); }
				ScriptString LinkDesc() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
			}
			bool bClampedMin() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x8) != 0; }
			bool bClampedMin(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x8; } return val; }
			bool bClampedMax() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x4) != 0; }
			bool bClampedMax(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x4; } return val; }
			bool bMoving() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x2) != 0; }
			bool bMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x2; } return val; }
			bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
			bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
			bool bDisabledPIE() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x4) != 0; }
			bool bDisabledPIE(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x4; } return val; }
			bool bDisabled() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x2) != 0; }
			bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x2; } return val; }
			bool bHasImpulse() { return (*cast(uint*)(cast(size_t)&this + 24) & 0x1) != 0; }
			bool bHasImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 24) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 24) &= ~0x1; } return val; }
		}
	}
	struct SeqVarLink
	{
		private ubyte __buffer__[72];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(SequenceVariable) LinkedVariables() { return *cast(ScriptArray!(SequenceVariable)*)(cast(size_t)&this + 4); }
				int OverrideDelta() { return *cast(int*)(cast(size_t)&this + 68); }
				Property CachedProperty() { return *cast(Property*)(cast(size_t)&this + 60); }
				int DrawX() { return *cast(int*)(cast(size_t)&this + 56); }
				int MaxVars() { return *cast(int*)(cast(size_t)&this + 52); }
				int MinVars() { return *cast(int*)(cast(size_t)&this + 48); }
				ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 36); }
				ScriptName LinkVar() { return *cast(ScriptName*)(cast(size_t)&this + 28); }
				ScriptString LinkDesc() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
				ScriptClass ExpectedType() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
			}
			bool bClampedMin() { return (*cast(uint*)(cast(size_t)&this + 64) & 0x8) != 0; }
			bool bClampedMin(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 64) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 64) &= ~0x8; } return val; }
			bool bClampedMax() { return (*cast(uint*)(cast(size_t)&this + 64) & 0x4) != 0; }
			bool bClampedMax(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 64) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 64) &= ~0x4; } return val; }
			bool bMoving() { return (*cast(uint*)(cast(size_t)&this + 64) & 0x2) != 0; }
			bool bMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 64) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 64) &= ~0x2; } return val; }
			bool bAllowAnyType() { return (*cast(uint*)(cast(size_t)&this + 64) & 0x1) != 0; }
			bool bAllowAnyType(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 64) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 64) &= ~0x1; } return val; }
			bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x8) != 0; }
			bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x8; } return val; }
			bool bModifiesLinkedObject() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x4) != 0; }
			bool bModifiesLinkedObject(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x4; } return val; }
			bool bSequenceNeverReadsOnlyWritesToThisVar() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x2) != 0; }
			bool bSequenceNeverReadsOnlyWritesToThisVar(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x2; } return val; }
			bool bWriteable() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
			bool bWriteable(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		}
	}
	struct SeqEventLink
	{
		private ubyte __buffer__[40];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptArray!(SequenceEvent) LinkedEvents() { return *cast(ScriptArray!(SequenceEvent)*)(cast(size_t)&this + 4); }
				int OverrideDelta() { return *cast(int*)(cast(size_t)&this + 36); }
				int DrawX() { return *cast(int*)(cast(size_t)&this + 28); }
				ScriptString LinkDesc() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
				ScriptClass ExpectedType() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
			}
			bool bClampedMin() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x8) != 0; }
			bool bClampedMin(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x8; } return val; }
			bool bClampedMax() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x4) != 0; }
			bool bClampedMax(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x4; } return val; }
			bool bMoving() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x2) != 0; }
			bool bMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x2; } return val; }
			bool bHidden() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
			bool bHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		}
	}
	struct SeqOpOutputInputLink
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			int InputLinkIdx() { return *cast(int*)(cast(size_t)&this + 4); }
			SequenceOp LinkedOp() { return *cast(SequenceOp*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(SequenceOp.SeqOpInputLink) InputLinks() { return *cast(ScriptArray!(SequenceOp.SeqOpInputLink)*)(cast(size_t)cast(void*)this + 144); }
			ScriptArray!(SequenceOp.SeqOpOutputLink) OutputLinks() { return *cast(ScriptArray!(SequenceOp.SeqOpOutputLink)*)(cast(size_t)cast(void*)this + 156); }
			ScriptArray!(SequenceOp.SeqVarLink) VariableLinks() { return *cast(ScriptArray!(SequenceOp.SeqVarLink)*)(cast(size_t)cast(void*)this + 168); }
			ScriptArray!(SequenceOp.SeqEventLink) EventLinks() { return *cast(ScriptArray!(SequenceOp.SeqEventLink)*)(cast(size_t)cast(void*)this + 180); }
			int SearchTag() { return *cast(int*)(cast(size_t)cast(void*)this + 204); }
			int ActivateCount() { return *cast(int*)(cast(size_t)cast(void*)this + 200); }
			ubyte GamepadID() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 196); }
			int PlayerIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
		}
		bool bPendingOutputConnectorRecalc() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x100) != 0; }
		bool bPendingOutputConnectorRecalc(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x100; } return val; }
		bool bPendingInputConnectorRecalc() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x80) != 0; }
		bool bPendingInputConnectorRecalc(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x80; } return val; }
		bool bPendingVarConnectorRecalc() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x40) != 0; }
		bool bPendingVarConnectorRecalc(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x40; } return val; }
		bool bHaveMovingOutputConnector() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x20) != 0; }
		bool bHaveMovingOutputConnector(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x20; } return val; }
		bool bHaveMovingInputConnector() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x10) != 0; }
		bool bHaveMovingInputConnector(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x10; } return val; }
		bool bHaveMovingVarConnector() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x8) != 0; }
		bool bHaveMovingVarConnector(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x8; } return val; }
		bool bAutoActivateOutputLinks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x4) != 0; }
		bool bAutoActivateOutputLinks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x4; } return val; }
		bool bLatentExecution() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x2) != 0; }
		bool bLatentExecution(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x2; } return val; }
		bool bActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool bActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	}
final:
	void GetObjectVars(ScriptArray!(UObject)* objVars, ScriptString inDesc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(UObject)*)params.ptr = *objVars;
		*cast(ScriptString*)&params[12] = inDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4369], params.ptr, cast(void*)0);
		*objVars = *cast(ScriptArray!(UObject)*)params.ptr;
	}
	bool HasLinkedOps(bool bConsiderInputLinks)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bConsiderInputLinks;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6801], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void GetLinkedObjects(ScriptArray!(SequenceObject)* out_Objects, ScriptClass ObjectType, bool bRecurse)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptArray!(SequenceObject)*)params.ptr = *out_Objects;
		*cast(ScriptClass*)&params[12] = ObjectType;
		*cast(bool*)&params[16] = bRecurse;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6804], params.ptr, cast(void*)0);
		*out_Objects = *cast(ScriptArray!(SequenceObject)*)params.ptr;
	}
	void GetInterpDataVars(ScriptArray!(InterpData)* outIData, ScriptString inDesc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(InterpData)*)params.ptr = *outIData;
		*cast(ScriptString*)&params[12] = inDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6812], params.ptr, cast(void*)0);
		*outIData = *cast(ScriptArray!(InterpData)*)params.ptr;
	}
	void GetBoolVars(ScriptArray!(ubyte)* boolVars, ScriptString inDesc)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptArray!(ubyte)*)params.ptr = *boolVars;
		*cast(ScriptString*)&params[12] = inDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6816], params.ptr, cast(void*)0);
		*boolVars = *cast(ScriptArray!(ubyte)*)params.ptr;
	}
	void LinkedVariables(ScriptClass VarClass, SequenceVariable* OutVariable, ScriptString inDesc)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = VarClass;
		*cast(SequenceVariable*)&params[4] = *OutVariable;
		*cast(ScriptString*)&params[8] = inDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6820], params.ptr, cast(void*)0);
		*OutVariable = *cast(SequenceVariable*)&params[4];
	}
	bool ActivateOutputLink(int OutputIdx)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OutputIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6824], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool ActivateNamedOutputLink(ScriptString LinkDesc)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = LinkDesc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6827], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6830], cast(void*)0, cast(void*)0);
	}
	void Deactivated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6831], cast(void*)0, cast(void*)0);
	}
	void VersionUpdated(int OldVersion, int NewVersion)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = OldVersion;
		*cast(int*)&params[4] = NewVersion;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6832], params.ptr, cast(void*)0);
	}
	void PopulateLinkedVariableValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6835], cast(void*)0, cast(void*)0);
	}
	void PublishLinkedVariableValues()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6836], cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6837], cast(void*)0, cast(void*)0);
	}
	Pawn GetPawn(Actor TheActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TheActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6838], params.ptr, cast(void*)0);
		return *cast(Pawn*)&params[4];
	}
	Controller GetController(Actor TheActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TheActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6843], params.ptr, cast(void*)0);
		return *cast(Controller*)&params[4];
	}
	void ForceActivateInput(int InputIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = InputIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6848], params.ptr, cast(void*)0);
	}
	void ForceActivateOutput(int OutputIdx)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = OutputIdx;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6850], params.ptr, cast(void*)0);
	}
}
