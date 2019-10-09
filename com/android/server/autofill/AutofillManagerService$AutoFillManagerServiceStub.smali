.class final Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;
.super Landroid/view/autofill/IAutoFillManager$Stub;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoFillManagerServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 828
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addClient(Landroid/view/autofill/IAutoFillManagerClient;I)I
    .registers 6
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p2, "userId"    # I

    .line 831
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 832
    const/4 v1, 0x0

    .line 833
    .local v1, "flags":I
    :try_start_8
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->addClientLocked(Landroid/view/autofill/IAutoFillManagerClient;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 834
    or-int/lit8 v1, v1, 0x1

    .line 836
    :cond_16
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1c

    .line 837
    or-int/lit8 v1, v1, 0x2

    .line 839
    :cond_1c
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_22

    .line 840
    or-int/lit8 v1, v1, 0x4

    .line 842
    :cond_22
    monitor-exit v0

    return v1

    .line 843
    .end local v1    # "flags":I
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public cancelSession(II)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    .line 1116
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1117
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 1118
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_17

    .line 1119
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->cancelSessionLocked(II)V

    goto :goto_31

    .line 1120
    :cond_17
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_31

    .line 1121
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelSession(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_31
    :goto_31
    monitor-exit v0

    .line 1124
    return-void

    .line 1123
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public disableOwnedAutofillServices(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1128
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1129
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 1130
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_17

    .line 1131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableOwnedAutofillServicesLocked(I)V

    goto :goto_31

    .line 1132
    :cond_17
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_31

    .line 1133
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelSession(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_31
    :goto_31
    monitor-exit v0

    .line 1136
    return-void

    .line 1135
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1175
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$600(Lcom/android/server/autofill/AutofillManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1177
    :cond_f
    const/4 v0, 0x1

    .line 1178
    .local v0, "showHistory":Z
    const/4 v1, 0x0

    .line 1179
    .local v1, "uiOnly":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_76

    .line 1180
    array-length v4, p3

    move v5, v0

    move v0, v2

    .line 1180
    .end local v0    # "showHistory":Z
    .local v5, "showHistory":Z
    :goto_18
    if-ge v0, v4, :cond_75

    aget-object v6, p3, v0

    .line 1181
    .local v6, "arg":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x35b095a5

    if-eq v8, v9, :cond_45

    const v9, 0x417d0228

    if-eq v8, v9, :cond_3b

    const v9, 0x4f7504e1

    if-eq v8, v9, :cond_31

    goto :goto_4e

    :cond_31
    const-string v8, "--help"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    const/4 v7, 0x2

    goto :goto_4e

    :cond_3b
    const-string v8, "--no-history"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    move v7, v2

    goto :goto_4e

    :cond_45
    const-string v8, "--ui-only"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    move v7, v3

    :cond_4e
    :goto_4e
    packed-switch v7, :pswitch_data_1a8

    .line 1192
    const-string v7, "AutofillManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring invalid dump arg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "arg":Ljava/lang/String;
    goto :goto_72

    .line 1189
    .restart local v6    # "arg":Ljava/lang/String;
    :pswitch_68
    const-string v0, "Usage: dumpsys autofill [--ui-only|--no-history]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    return-void

    .line 1186
    :pswitch_6e
    const/4 v1, 0x1

    .line 1187
    goto :goto_72

    .line 1183
    :pswitch_70
    const/4 v5, 0x0

    .line 1184
    nop

    .line 1180
    .end local v6    # "arg":Ljava/lang/String;
    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1197
    :cond_75
    move v0, v5

    .line 1197
    .end local v5    # "showHistory":Z
    .restart local v0    # "showHistory":Z
    :cond_76
    if-eqz v1, :cond_82

    .line 1198
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    .line 1199
    return-void

    .line 1202
    :cond_82
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 1203
    .local v4, "oldDebug":Z
    const-string v5, "  "

    .line 1204
    .local v5, "prefix":Ljava/lang/String;
    const-string v6, "    "

    .line 1206
    .local v6, "prefix2":Ljava/lang/String;
    :try_start_88
    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_1a0

    .line 1207
    :try_start_8f
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    move v4, v8

    .line 1208
    iget-object v8, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V
    invoke-static {v8, v3}, Lcom/android/server/autofill/AutofillManagerService;->access$1200(Lcom/android/server/autofill/AutofillManagerService;Z)V

    .line 1209
    const-string v3, "Debug mode: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 1210
    const-string v3, "Verbose mode: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1211
    const-string v3, "Disabled users: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$1100(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1212
    const-string v3, "Max partitions per session: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v3, Lcom/android/server/autofill/Helper;->sPartitionMaxCount:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1213
    const-string v3, "Max visible datasets: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v3, Lcom/android/server/autofill/Helper;->sVisibleDatasetsMaxCount:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1214
    sget-object v3, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v3, :cond_d9

    .line 1215
    const-string v3, "Overridden full-screen mode: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1217
    :cond_d9
    const-string v3, "User data constraints: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-static {v3, p2}, Landroid/service/autofill/UserData;->dumpConstraints(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1218
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerService;->access$200(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1219
    .local v3, "size":I
    const-string v8, "Cached services: "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1220
    if-nez v3, :cond_fb

    .line 1221
    const-string/jumbo v2, "none"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11d

    .line 1223
    :cond_fb
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1224
    nop

    .line 1224
    .local v2, "i":I
    :goto_ff
    if-ge v2, v3, :cond_11d

    .line 1225
    const-string v8, "\nService at index "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1226
    iget-object v8, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/server/autofill/AutofillManagerService;->access$200(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1227
    .local v8, "impl":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    const-string v9, "  "

    invoke-virtual {v8, v9, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1224
    .end local v8    # "impl":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    add-int/lit8 v2, v2, 0x1

    goto :goto_ff

    .line 1230
    .end local v2    # "i":I
    :cond_11d
    :goto_11d
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->dump(Ljava/io/PrintWriter;)V

    .line 1231
    const-string v2, "Autofill Compat State: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1232
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$700(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    move-result-object v2

    const-string v8, "    "

    # invokes: Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    invoke-static {v2, v8, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->access$1300(Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1233
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "from settings: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1234
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackagesFromSettings()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1235
    const-string v2, "Allow instant service: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mAllowInstantService:Z
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1000(Lcom/android/server/autofill/AutofillManagerService;)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1236
    .end local v3    # "size":I
    monitor-exit v7
    :try_end_158
    .catchall {:try_start_8f .. :try_end_158} :catchall_19d

    .line 1237
    if-eqz v0, :cond_196

    .line 1238
    :try_start_15a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Requests history:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1239
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1500(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, "UI latency history:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1241
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1600(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, "WTF history:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1243
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$1700(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_196
    .catchall {:try_start_15a .. :try_end_196} :catchall_1a0

    .line 1246
    :cond_196
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V
    invoke-static {v2, v4}, Lcom/android/server/autofill/AutofillManagerService;->access$1200(Lcom/android/server/autofill/AutofillManagerService;Z)V

    .line 1247
    nop

    .line 1248
    return-void

    .line 1236
    :catchall_19d
    move-exception v2

    :try_start_19e
    monitor-exit v7
    :try_end_19f
    .catchall {:try_start_19e .. :try_end_19f} :catchall_19d

    :try_start_19f
    throw v2
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_1a0

    .line 1246
    :catchall_1a0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V
    invoke-static {v3, v4}, Lcom/android/server/autofill/AutofillManagerService;->access$1200(Lcom/android/server/autofill/AutofillManagerService;Z)V

    throw v2

    nop

    :pswitch_data_1a8
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6e
        :pswitch_68
    .end packed-switch
.end method

.method public finishSession(II)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I

    .line 1104
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1105
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 1106
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_17

    .line 1107
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->finishSessionLocked(II)V

    goto :goto_31

    .line 1108
    :cond_17
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_31

    .line 1109
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishSession(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_31
    :goto_31
    monitor-exit v0

    .line 1112
    return-void

    .line 1111
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getAutofillServiceComponentName()Landroid/content/ComponentName;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1018
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1020
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1021
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 1022
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_19

    .line 1023
    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1024
    :cond_19
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_33

    .line 1025
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAutofillServiceComponentName(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_33
    monitor-exit v1

    .line 1029
    const/4 v1, 0x0

    return-object v1

    .line 1027
    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_36

    throw v2
.end method

.method public getAvailableFieldClassificationAlgorithms()[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1001
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1003
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1004
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 1005
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_1d

    .line 1006
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getAvailableFieldClassificationAlgorithms(I)[Ljava/lang/String;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1008
    :cond_1d
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_37

    .line 1009
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableFcAlgorithms(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    :cond_37
    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 1013
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getDefaultFieldClassificationAlgorithm()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 984
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 986
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 987
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 988
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_1d

    .line 989
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getDefaultFieldClassificationAlgorithm(I)Ljava/lang/String;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 991
    :cond_1d
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_37

    .line 992
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultFcAlgorithm(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_37
    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 996
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 905
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 907
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 908
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 909
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_1d

    .line 910
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFillEventHistory(I)Landroid/service/autofill/FillEventHistory;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 911
    :cond_1d
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_37

    .line 912
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFillEventHistory(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_37
    monitor-exit v1

    .line 916
    const/4 v1, 0x0

    return-object v1

    .line 914
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getUserData()Landroid/service/autofill/UserData;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 921
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 923
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 924
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 925
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_1d

    .line 926
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 927
    :cond_1d
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_37

    .line 928
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserData(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_37
    monitor-exit v1

    .line 932
    const/4 v1, 0x0

    return-object v1

    .line 930
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getUserDataId()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 937
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 939
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 940
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 941
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    const/4 v3, 0x0

    if-eqz v2, :cond_25

    .line 942
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData(I)Landroid/service/autofill/UserData;

    move-result-object v4

    .line 943
    .local v4, "userData":Landroid/service/autofill/UserData;
    if-nez v4, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v4}, Landroid/service/autofill/UserData;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_23
    monitor-exit v1

    return-object v3

    .line 944
    .end local v4    # "userData":Landroid/service/autofill/UserData;
    :cond_25
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_3f

    .line 945
    const-string v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserDataId(): no service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_3f
    monitor-exit v1

    .line 949
    return-object v3

    .line 947
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_41

    throw v2
.end method

.method public isFieldClassificationEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 968
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 970
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 971
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 972
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_1d

    .line 973
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabled(I)Z

    move-result v3

    monitor-exit v1

    return v3

    .line 974
    :cond_1d
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_38

    .line 975
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFieldClassificationEnabled(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_38
    monitor-exit v1

    .line 979
    const/4 v1, 0x0

    return v1

    .line 977
    :catchall_3b
    move-exception v2

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method public isServiceEnabled(ILjava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1147
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1148
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 1149
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_19

    .line 1150
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1151
    :cond_19
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_34

    .line 1152
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isServiceEnabled(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_34
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1155
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public isServiceSupported(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1140
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1141
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$1100(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    .line 1142
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 8
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1160
    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_10

    const/4 v2, 0x2

    if-ne p1, v2, :cond_e

    goto :goto_10

    :cond_e
    move v2, v0

    goto :goto_11

    :cond_10
    :goto_10
    move v2, v1

    :goto_11
    const-string v3, "invalid operation: %d"

    new-array v1, v1, [Ljava/lang/Object;

    .line 1163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 1161
    invoke-static {v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1165
    :try_start_25
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1166
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1165
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 1167
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_34

    .line 1168
    invoke-virtual {v1, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 1170
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_34
    monitor-exit v0

    .line 1171
    return-void

    .line 1170
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1253
    new-instance v0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1255
    return-void
.end method

.method public removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    .registers 8
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p2, "userId"    # I

    .line 848
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 849
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 850
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_13

    .line 851
    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeClientLocked(Landroid/view/autofill/IAutoFillManagerClient;)V

    goto :goto_2e

    .line 852
    :cond_13
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2e

    .line 853
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeClient(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_2e
    :goto_2e
    monitor-exit v0

    .line 856
    return-void

    .line 855
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 10
    .param p1, "sessionId"    # I
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "appCallback"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1035
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1036
    .local v0, "userId":I
    const-string v1, "activityToken"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p2, v1

    check-cast p2, Landroid/os/IBinder;

    .line 1037
    const-string v1, "appCallback"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p3, v1

    check-cast p3, Landroid/os/IBinder;

    .line 1039
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1040
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/autofill/AutofillManagerService;->access$200(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1041
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_35

    .line 1042
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, p1, v3, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->restoreSession(IILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v3

    monitor-exit v1

    return v3

    .line 1044
    :cond_35
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_50

    .line 1045
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreSession(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_50
    monitor-exit v1

    .line 1049
    const/4 v1, 0x0

    return v1

    .line 1047
    :catchall_53
    move-exception v2

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_1d .. :try_end_55} :catchall_53

    throw v2
.end method

.method public setAuthenticationResult(Landroid/os/Bundle;III)V
    .registers 8
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "sessionId"    # I
    .param p3, "authenticationId"    # I
    .param p4, "userId"    # I

    .line 861
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 862
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, p4}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 863
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    nop

    .line 864
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v2

    .line 863
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationResultLocked(Landroid/os/Bundle;III)V

    .line 865
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public setAutofillFailure(ILjava/util/List;I)V
    .registers 9
    .param p1, "sessionId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;I)V"
        }
    .end annotation

    .line 1092
    .local p2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1093
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 1094
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_17

    .line 1095
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAutofillFailureLocked(IILjava/util/List;)V

    goto :goto_32

    .line 1096
    :cond_17
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_32

    .line 1097
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAutofillFailure(): no service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_32
    :goto_32
    monitor-exit v0

    .line 1100
    return-void

    .line 1099
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public setHasCallback(IIZ)V
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "userId"    # I
    .param p3, "hasIt"    # Z

    .line 870
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 871
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 872
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setHasCallback(IIZ)V

    .line 873
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    monitor-exit v0

    .line 874
    return-void

    .line 873
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setUserData(Landroid/service/autofill/UserData;)V
    .registers 8
    .param p1, "userData"    # Landroid/service/autofill/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 954
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 956
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 957
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v2

    .line 958
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v2, :cond_1b

    .line 959
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setUserData(ILandroid/service/autofill/UserData;)V

    goto :goto_36

    .line 960
    :cond_1b
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_36

    .line 961
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserData(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    .end local v2    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_36
    :goto_36
    monitor-exit v1

    .line 964
    return-void

    .line 963
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;Z)I
    .registers 31
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "appCallback"    # Landroid/os/IBinder;
    .param p3, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "value"    # Landroid/view/autofill/AutofillValue;
    .param p6, "userId"    # I
    .param p7, "hasCallback"    # Z
    .param p8, "flags"    # I
    .param p9, "componentName"    # Landroid/content/ComponentName;
    .param p10, "compatMode"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p6

    .line 881
    const-string v0, "activityToken"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/IBinder;

    .line 882
    .end local p1    # "activityToken":Landroid/os/IBinder;
    .local v15, "activityToken":Landroid/os/IBinder;
    const-string v0, "appCallback"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/IBinder;

    .line 883
    .end local p2    # "appCallback":Landroid/os/IBinder;
    .local v16, "appCallback":Landroid/os/IBinder;
    const-string v0, "autoFillId"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/autofill/AutofillId;

    .line 884
    .end local p3    # "autofillId":Landroid/view/autofill/AutofillId;
    .local v17, "autofillId":Landroid/view/autofill/AutofillId;
    const-string v0, "componentName"

    move-object/from16 v3, p9

    invoke-static {v3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/ComponentName;

    .line 885
    .end local p9    # "componentName":Landroid/content/ComponentName;
    .local v14, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 887
    .local v13, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v3, 0x0

    if-ne v2, v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :cond_4a
    move v0, v3

    :goto_4b
    const-string/jumbo v4, "userId"

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 890
    :try_start_51
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$600(Lcom/android/server/autofill/AutofillManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v13, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_5e} :catch_98

    .line 893
    nop

    .line 895
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 896
    :try_start_66
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    .line 897
    .local v3, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v5

    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 899
    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mAllowInstantService:Z
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$1000(Lcom/android/server/autofill/AutofillManagerService;)Z

    move-result v0
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_90

    .line 897
    move-object v4, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p7

    move-object v11, v14

    move/from16 v12, p10

    move-object v1, v13

    move v13, v0

    .end local v13    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    move-object/from16 v19, v14

    move/from16 v14, p8

    .line 897
    .end local v14    # "componentName":Landroid/content/ComponentName;
    .local v19, "componentName":Landroid/content/ComponentName;
    :try_start_8a
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->startSessionLocked(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;ZLandroid/content/ComponentName;ZZI)I

    move-result v0

    monitor-exit v18

    return v0

    .line 900
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .end local v19    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "componentName":Landroid/content/ComponentName;
    :catchall_90
    move-exception v0

    move-object v1, v13

    move-object/from16 v19, v14

    .line 900
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "componentName":Landroid/content/ComponentName;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v19    # "componentName":Landroid/content/ComponentName;
    :goto_94
    monitor-exit v18
    :try_end_95
    .catchall {:try_start_8a .. :try_end_95} :catchall_96

    throw v0

    :catchall_96
    move-exception v0

    goto :goto_94

    .line 891
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v19    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "componentName":Landroid/content/ComponentName;
    :catch_98
    move-exception v0

    move-object v1, v13

    move-object/from16 v19, v14

    .line 892
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "componentName":Landroid/content/ComponentName;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v19    # "componentName":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not a valid package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateOrRestartSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;IIZ)I
    .registers 28
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "appCallback"    # Landroid/os/IBinder;
    .param p3, "autoFillId"    # Landroid/view/autofill/AutofillId;
    .param p4, "bounds"    # Landroid/graphics/Rect;
    .param p5, "value"    # Landroid/view/autofill/AutofillValue;
    .param p6, "userId"    # I
    .param p7, "hasCallback"    # Z
    .param p8, "flags"    # I
    .param p9, "componentName"    # Landroid/content/ComponentName;
    .param p10, "sessionId"    # I
    .param p11, "action"    # I
    .param p12, "compatMode"    # Z

    move-object v12, p0

    move/from16 v13, p6

    .line 1071
    const/4 v1, 0x0

    .line 1072
    .local v1, "restart":Z
    iget-object v0, v12, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1073
    :try_start_b
    iget-object v0, v12, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    .line 1074
    .local v0, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v0, :cond_2a

    .line 1075
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v5

    move-object v3, v0

    move/from16 v4, p10

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p11

    move/from16 v10, p8

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateSessionLocked(IILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)Z

    move-result v3

    move v1, v3

    goto :goto_45

    .line 1077
    :cond_2a
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_45

    .line 1078
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateOrRestartSession(): no service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_b .. :try_end_45} :catchall_66

    .line 1080
    .end local v0    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .end local v1    # "restart":Z
    .local v14, "restart":Z
    :cond_45
    :goto_45
    move v14, v1

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_63

    .line 1081
    if-eqz v14, :cond_62

    .line 1082
    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v13

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p12

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;Z)I

    move-result v0

    return v0

    .line 1087
    :cond_62
    return p10

    .line 1080
    :catchall_63
    move-exception v0

    move v1, v14

    goto :goto_67

    .line 1080
    .end local v14    # "restart":Z
    .restart local v1    # "restart":Z
    :catchall_66
    move-exception v0

    :goto_67
    :try_start_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v0
.end method

.method public updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    .registers 20
    .param p1, "sessionId"    # I
    .param p2, "autoFillId"    # Landroid/view/autofill/AutofillId;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "value"    # Landroid/view/autofill/AutofillValue;
    .param p5, "action"    # I
    .param p6, "flags"    # I
    .param p7, "userId"    # I

    move-object v1, p0

    .line 1055
    move/from16 v2, p7

    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1056
    :try_start_a
    iget-object v0, v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    .line 1057
    .local v0, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v0, :cond_24

    .line 1058
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;->getCallingUid()I

    move-result v6

    move-object v4, v0

    move v5, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateSessionLocked(IILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)Z

    goto :goto_3f

    .line 1060
    :cond_24
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_3f

    .line 1061
    const-string v4, "AutofillManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSession(): no service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .end local v0    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_3f
    :goto_3f
    monitor-exit v3

    .line 1064
    return-void

    .line 1063
    :catchall_41
    move-exception v0

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_41

    throw v0
.end method
