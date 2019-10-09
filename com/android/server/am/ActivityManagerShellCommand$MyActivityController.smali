.class final Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;
.super Landroid/app/IActivityController$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MyActivityController"
.end annotation


# static fields
.field static final RESULT_ANR_DIALOG:I = 0x0

.field static final RESULT_ANR_KILL:I = 0x1

.field static final RESULT_ANR_WAIT:I = 0x1

.field static final RESULT_CRASH_DIALOG:I = 0x0

.field static final RESULT_CRASH_KILL:I = 0x1

.field static final RESULT_DEFAULT:I = 0x0

.field static final RESULT_EARLY_ANR_CONTINUE:I = 0x0

.field static final RESULT_EARLY_ANR_KILL:I = 0x1

.field static final STATE_ANR:I = 0x3

.field static final STATE_CRASHED:I = 0x1

.field static final STATE_EARLY_ANR:I = 0x2

.field static final STATE_NORMAL:I


# instance fields
.field final mGdbPort:Ljava/lang/String;

.field mGdbProcess:Ljava/lang/Process;

.field mGdbThread:Ljava/lang/Thread;

.field mGotGdbPrint:Z

.field final mInput:Ljava/io/InputStream;

.field final mInterface:Landroid/app/IActivityManager;

.field final mMonkey:Z

.field final mPw:Ljava/io/PrintWriter;

.field mResult:I

.field mState:I


# direct methods
.method constructor <init>(Landroid/app/IActivityManager;Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "iam"    # Landroid/app/IActivityManager;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "gdbPort"    # Ljava/lang/String;
    .param p5, "monkey"    # Z

    .line 1067
    invoke-direct {p0}, Landroid/app/IActivityController$Stub;-><init>()V

    .line 1068
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    .line 1069
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    .line 1070
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInput:Ljava/io/InputStream;

    .line 1071
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    .line 1072
    iput-boolean p5, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    .line 1073
    return-void
.end method


# virtual methods
.method public activityResuming(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1077
    monitor-enter p0

    .line 1078
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Activity resuming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1080
    monitor-exit p0

    .line 1081
    const/4 v0, 0x1

    return v0

    .line 1080
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1086
    monitor-enter p0

    .line 1087
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Activity starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1089
    monitor-exit p0

    .line 1090
    const/4 v0, 0x1

    return v0

    .line 1089
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .registers 11
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "timeMillis"    # J
    .param p7, "stackTrace"    # Ljava/lang/String;

    .line 1096
    monitor-enter p0

    .line 1097
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: PROCESS CRASHED"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shortMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "longMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "stack:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1107
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I

    move-result v1

    .line 1108
    .local v1, "result":I
    if-ne v1, v0, :cond_9d

    const/4 v0, 0x0

    nop

    :cond_9d
    monitor-exit p0

    return v0

    .line 1109
    .end local v1    # "result":I
    :catchall_9f
    move-exception v0

    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_1 .. :try_end_a1} :catchall_9f

    throw v0
.end method

.method public appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .registers 7
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "annotation"    # Ljava/lang/String;

    .line 1114
    monitor-enter p0

    .line 1115
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: EARLY PROCESS NOT RESPONDING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "annotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1120
    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I

    move-result v0

    .line 1121
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5c

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 1122
    :cond_5c
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1123
    .end local v0    # "result":I
    :catchall_5f
    move-exception v0

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
    .registers 7
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "processStats"    # Ljava/lang/String;

    .line 1128
    monitor-enter p0

    .line 1129
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: PROCESS NOT RESPONDING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "processStats:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1136
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I

    move-result v0

    .line 1137
    .local v0, "result":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5a

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 1138
    :cond_5a
    if-ne v0, v1, :cond_5e

    monitor-exit p0

    return v1

    .line 1139
    :cond_5e
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1140
    .end local v0    # "result":I
    :catchall_61
    move-exception v0

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_61

    throw v0
.end method

.method killGdbLocked()V
    .registers 4

    .line 1156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGotGdbPrint:Z

    .line 1157
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 1158
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v2, "Stopping gdbserver"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1160
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1161
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    .line 1163
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    if-eqz v0, :cond_26

    .line 1164
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1165
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    .line 1167
    :cond_26
    return-void
.end method

.method printMessageForState()V
    .registers 3

    .line 1255
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    packed-switch v0, :pswitch_data_60

    goto :goto_57

    .line 1270
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Waiting after ANR...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(c)ontinue: show ANR dialog"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(k)ill: immediately kill app"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(w)ait: wait some more"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_57

    .line 1265
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Waiting after early ANR...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(c)ontinue: standard ANR processing"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(k)ill: immediately kill app"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    goto :goto_57

    .line 1260
    :pswitch_39
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Waiting after crash...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(c)ontinue: show crash dialog"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(k)ill: immediately kill app"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    goto :goto_57

    .line 1257
    :pswitch_4f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Monitoring activity manager...  available commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    nop

    .line 1276
    :goto_57
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "(q)uit: finish monitoring"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1277
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_39
        :pswitch_23
        :pswitch_6
    .end packed-switch
.end method

.method resumeController(I)V
    .registers 3
    .param p1, "result"    # I

    .line 1247
    monitor-enter p0

    .line 1248
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    .line 1249
    iput p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mResult:I

    .line 1250
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1251
    monitor-exit p0

    .line 1252
    return-void

    .line 1251
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method

.method run()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1281
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    .line 1282
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1284
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {v1, p0, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1285
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    .line 1287
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInput:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1288
    .local v2, "converter":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1291
    .local v3, "in":Ljava/io/BufferedReader;
    :goto_1f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 1291
    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_178

    .line 1292
    const/4 v4, 0x1

    .line 1293
    .local v4, "addNewline":Z
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_30

    .line 1294
    const/4 v4, 0x0

    goto/16 :goto_14d

    .line 1295
    :cond_30
    const-string/jumbo v6, "q"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_167

    const-string/jumbo v6, "quit"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    goto/16 :goto_167

    .line 1298
    :cond_44
    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8f

    .line 1299
    const-string v6, "c"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8a

    const-string v6, "continue"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    goto :goto_8a

    .line 1301
    :cond_5a
    const-string/jumbo v6, "k"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_85

    const-string/jumbo v6, "kill"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    goto :goto_85

    .line 1304
    :cond_6d
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14d

    .line 1302
    :cond_85
    :goto_85
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto/16 :goto_14d

    .line 1300
    :cond_8a
    :goto_8a
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto/16 :goto_14d

    .line 1306
    :cond_8f
    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_ef

    .line 1307
    const-string v6, "c"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_eb

    const-string v6, "continue"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a5

    goto :goto_eb

    .line 1309
    :cond_a5
    const-string/jumbo v6, "k"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e7

    const-string/jumbo v6, "kill"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    goto :goto_e7

    .line 1311
    :cond_b8
    const-string/jumbo v6, "w"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e3

    const-string/jumbo v6, "wait"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cb

    goto :goto_e3

    .line 1314
    :cond_cb
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14d

    .line 1312
    :cond_e3
    :goto_e3
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_14d

    .line 1310
    :cond_e7
    :goto_e7
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_14d

    .line 1308
    :cond_eb
    :goto_eb
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_14d

    .line 1316
    :cond_ef
    iget v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_137

    .line 1317
    const-string v6, "c"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_133

    const-string v6, "continue"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_105

    goto :goto_133

    .line 1319
    :cond_105
    const-string/jumbo v6, "k"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12f

    const-string/jumbo v6, "kill"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_118

    goto :goto_12f

    .line 1322
    :cond_118
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14d

    .line 1320
    :cond_12f
    :goto_12f
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_14d

    .line 1318
    :cond_133
    :goto_133
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V

    goto :goto_14d

    .line 1325
    :cond_137
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1328
    :goto_14d
    monitor-enter p0
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14e} :catch_16d
    .catchall {:try_start_1 .. :try_end_14e} :catchall_16b

    .line 1329
    if-eqz v4, :cond_15a

    .line 1330
    :try_start_150
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15a

    .line 1334
    :catchall_158
    move-exception v1

    goto :goto_165

    .line 1332
    :cond_15a
    :goto_15a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    .line 1333
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 1334
    monitor-exit p0

    .line 1335
    .end local v4    # "addNewline":Z
    goto/16 :goto_1f

    .line 1334
    .restart local v4    # "addNewline":Z
    :goto_165
    monitor-exit p0
    :try_end_166
    .catchall {:try_start_150 .. :try_end_166} :catchall_158

    :try_start_166
    throw v1

    .line 1296
    :cond_167
    :goto_167
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->resumeController(I)V
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_166 .. :try_end_16a} :catch_16d
    .catchall {:try_start_166 .. :try_end_16a} :catchall_16b

    .line 1297
    goto :goto_178

    .line 1341
    .end local v2    # "converter":Ljava/io/InputStreamReader;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "addNewline":Z
    .end local v5    # "line":Ljava/lang/String;
    :catchall_16b
    move-exception v1

    goto :goto_181

    .line 1337
    :catch_16d
    move-exception v1

    .line 1338
    .local v1, "e":Ljava/io/IOException;
    :try_start_16e
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1339
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_178
    .catchall {:try_start_16e .. :try_end_178} :catchall_16b

    .line 1341
    .end local v1    # "e":Ljava/io/IOException;
    :cond_178
    :goto_178
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1342
    nop

    .line 1343
    return-void

    .line 1341
    :goto_181
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mInterface:Landroid/app/IActivityManager;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mMonkey:Z

    invoke-interface {v2, v0, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;Z)V

    throw v1
.end method

.method public systemNotResponding(Ljava/lang/String;)I
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 1145
    monitor-enter p0

    .line 1146
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "** ERROR: PROCESS NOT RESPONDING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Allowing system to die."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1151
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 1152
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_35

    throw v0
.end method

.method waitControllerLocked(II)I
    .registers 8
    .param p1, "pid"    # I
    .param p2, "state"    # I

    .line 1170
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    if-eqz v0, :cond_d7

    .line 1171
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->killGdbLocked()V

    .line 1174
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting gdbserver on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, "Do the following:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  adb forward tcp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tcp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  gdbclient app_process :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1180
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "gdbserver"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbPort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "--attach"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 1181
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1180
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    .line 1183
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbProcess:Ljava/lang/Process;

    .line 1184
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1185
    .local v0, "converter":Ljava/io/InputStreamReader;
    new-instance v1, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;-><init>(Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;Ljava/io/InputStreamReader;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    .line 1215
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b0} :catch_b8

    .line 1219
    const-wide/16 v1, 0x1f4

    :try_start_b2
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_b5
    .catch Ljava/lang/InterruptedException; {:try_start_b2 .. :try_end_b5} :catch_b6
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b8

    .line 1221
    goto :goto_b7

    .line 1220
    :catch_b6
    move-exception v1

    .line 1227
    .end local v0    # "converter":Ljava/io/InputStreamReader;
    :goto_b7
    goto :goto_d7

    .line 1223
    :catch_b8
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure starting gdbserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->killGdbLocked()V

    .line 1229
    .end local v0    # "e":Ljava/io/IOException;
    :cond_d7
    :goto_d7
    iput p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    .line 1230
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->printMessageForState()V

    .line 1232
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1234
    :goto_e8
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mState:I

    if-eqz v0, :cond_f2

    .line 1236
    :try_start_ec
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_ef
    .catch Ljava/lang/InterruptedException; {:try_start_ec .. :try_end_ef} :catch_f0

    .line 1238
    :goto_ef
    goto :goto_e8

    .line 1237
    :catch_f0
    move-exception v0

    goto :goto_ef

    .line 1241
    :cond_f2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->killGdbLocked()V

    .line 1243
    iget v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mResult:I

    return v0
.end method
