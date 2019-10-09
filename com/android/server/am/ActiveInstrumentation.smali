.class Lcom/android/server/am/ActiveInstrumentation;
.super Ljava/lang/Object;
.source "ActiveInstrumentation.java"


# instance fields
.field mArguments:Landroid/os/Bundle;

.field mClass:Landroid/content/ComponentName;

.field mCurResults:Landroid/os/Bundle;

.field mFinished:Z

.field mProfileFile:Ljava/lang/String;

.field mResultClass:Landroid/content/ComponentName;

.field final mRunningProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mTargetInfo:Landroid/content/pm/ApplicationInfo;

.field mTargetProcesses:[Ljava/lang/String;

.field mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    .line 68
    iput-object p1, p0, Lcom/android/server/am/ActiveInstrumentation;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 69
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mClass="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 97
    const-string v0, " mFinished="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRunningProcesses:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    move v1, v0

    .line 99
    .local v1, "i":I
    :goto_23
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 103
    .end local v1    # "i":I
    :cond_47
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTargetProcesses="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTargetInfo="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 107
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_86

    .line 108
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    .line 110
    :cond_86
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    if-eqz v0, :cond_98

    .line 111
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mProfileFile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    :cond_98
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v0, :cond_aa

    .line 114
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWatcher="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 116
    :cond_aa
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v0, :cond_bc

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUiAutomationConnection="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 120
    :cond_bc
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mArguments="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method removeProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    .line 73
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 75
    iget-object v0, p0, Lcom/android/server/am/ActiveInstrumentation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ActiveInstrumentation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-boolean v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-eqz v1, :cond_2e

    .line 86
    const-string v1, " FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_2e
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, " procs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 125
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 126
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mClass:Landroid/content/ComponentName;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 127
    iget-boolean v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 128
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1a
    iget-object v4, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 129
    iget-object v4, p0, Lcom/android/server/am/ActiveInstrumentation;->mRunningProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    const-wide v5, 0x20b00000003L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/am/ProcessRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 132
    .end local v3    # "i":I
    :cond_35
    iget-object v3, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetProcesses:[Ljava/lang/String;

    array-length v4, v3

    :goto_38
    if-ge v2, v4, :cond_47

    aget-object v5, v3, v2

    .line 133
    .local v5, "p":Ljava/lang/String;
    const-wide v6, 0x20900000004L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 132
    .end local v5    # "p":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 135
    :cond_47
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_55

    .line 136
    iget-object v2, p0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/ApplicationInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 138
    :cond_55
    const-wide v2, 0x10900000006L

    iget-object v4, p0, Lcom/android/server/am/ActiveInstrumentation;->mProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 139
    const-wide v2, 0x10900000007L

    iget-object v4, p0, Lcom/android/server/am/ActiveInstrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 140
    const-wide v2, 0x10900000008L

    iget-object v4, p0, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 141
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 142
    const-wide v2, 0x10900000009L

    iget-object v4, p0, Lcom/android/server/am/ActiveInstrumentation;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 144
    return-void
.end method
