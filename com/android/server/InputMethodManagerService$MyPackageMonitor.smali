.class final Lcom/android/server/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field private final mChangedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImePackageAppeared:Z

.field private final mKnownImePackageNames:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    .line 988
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 997
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    .line 1010
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 1018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    return-void
.end method

.method private clearPackageChangeState()V
    .registers 2

    .line 1135
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 1137
    return-void
.end method

.method private isChangingPackagesOfCurrentUserLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1033
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1039
    .local v1, "retval":Z
    :goto_11
    return v1
.end method

.method private onFinishPackageChangesInternal()V
    .registers 15

    .line 1163
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1164
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1165
    monitor-exit v0

    return-void

    .line 1167
    :cond_d
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->shouldRebuildInputMethodListLocked()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1168
    monitor-exit v0

    return-void

    .line 1171
    :cond_15
    const/4 v1, 0x0

    .line 1172
    .local v1, "curIm":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 1173
    .local v2, "curInputMethodId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1174
    .local v3, "N":I
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_8a

    .line 1175
    move-object v7, v1

    move v1, v6

    .local v1, "i":I
    .local v7, "curIm":Landroid/view/inputmethod/InputMethodInfo;
    :goto_2d
    if-ge v1, v3, :cond_89

    .line 1176
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 1177
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 1178
    .local v9, "imiId":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 1179
    move-object v7, v8

    .line 1182
    :cond_44
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v10

    .line 1183
    .local v10, "change":I
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 1184
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    invoke-static {v11}, Lcom/android/server/InputMethodManagerService;->access$600(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-result-object v11

    # invokes: Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->deleteAllInputMethodSubtypes(Ljava/lang/String;)V
    invoke-static {v11, v9}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->access$700(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V

    .line 1186
    :cond_5f
    if-eq v10, v5, :cond_63

    if-ne v10, v4, :cond_86

    .line 1188
    :cond_63
    const-string v11, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input method uninstalled, disabling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1188
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v6}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 1175
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v9    # "imiId":Ljava/lang/String;
    .end local v10    # "change":I
    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 1195
    .end local v1    # "i":I
    :cond_89
    move-object v1, v7

    .end local v7    # "curIm":Landroid/view/inputmethod/InputMethodInfo;
    .local v1, "curIm":Landroid/view/inputmethod/InputMethodInfo;
    :cond_8a
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1197
    const/4 v7, 0x0

    .line 1199
    .local v7, "changed":Z
    if-eqz v1, :cond_f5

    .line 1200
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v8
    :try_end_9a
    .catchall {:try_start_5 .. :try_end_9a} :catchall_115

    .line 1201
    .local v8, "change":I
    if-eq v8, v5, :cond_9e

    if-ne v8, v4, :cond_f5

    .line 1203
    :cond_9e
    const/4 v4, 0x0

    .line 1205
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    :try_start_9f
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->access$800(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 1206
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    .line 1205
    invoke-interface {v5, v9, v6, v10}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v5
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_b5} :catch_b7
    .catchall {:try_start_9f .. :try_end_b5} :catchall_115

    move-object v4, v5

    .line 1208
    goto :goto_b8

    .line 1207
    :catch_b7
    move-exception v5

    .line 1209
    :goto_b8
    if-nez v4, :cond_f5

    .line 1212
    :try_start_ba
    const-string v5, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current input method removed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget v10, v10, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    # invokes: Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    invoke-static {v5, v9, v6, v10}, Lcom/android/server/InputMethodManagerService;->access$900(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V

    .line 1214
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z
    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)Z

    move-result v5

    if-nez v5, :cond_f5

    .line 1215
    const/4 v7, 0x1

    .line 1216
    const/4 v1, 0x0

    .line 1217
    const-string v5, "InputMethodManagerService"

    const-string v9, "Unsetting current input method"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v9, ""

    # invokes: Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    invoke-static {v5, v9}, Lcom/android/server/InputMethodManagerService;->access$300(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    .line 1224
    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "change":I
    :cond_f5
    if-nez v1, :cond_ff

    .line 1227
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)Z

    move-result v4

    move v7, v4

    goto :goto_10c

    .line 1228
    :cond_ff
    if-nez v7, :cond_10c

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 1231
    const/4 v7, 0x1

    .line 1234
    :cond_10c
    :goto_10c
    if-eqz v7, :cond_113

    .line 1235
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1237
    .end local v1    # "curIm":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "curInputMethodId":Ljava/lang/String;
    .end local v3    # "N":I
    .end local v7    # "changed":Z
    :cond_113
    monitor-exit v0

    .line 1238
    return-void

    .line 1237
    :catchall_115
    move-exception v1

    monitor-exit v0
    :try_end_117
    .catchall {:try_start_ba .. :try_end_117} :catchall_115

    throw v1
.end method

.method private shouldRebuildInputMethodListLocked()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 1145
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1146
    return v1

    .line 1152
    :cond_6
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1153
    .local v0, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_e
    if-ge v3, v0, :cond_24

    .line 1154
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1155
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1156
    return v1

    .line 1153
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1159
    .end local v3    # "i":I
    :cond_24
    return v2
.end method


# virtual methods
.method final addKnownImePackageNameLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1028
    return-void
.end method

.method clearKnownImePackageNamesLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 1022
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1023
    return-void
.end method

.method public onBeginPackageChanges()V
    .registers 1

    .line 1079
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 1080
    return-void
.end method

.method public onFinishPackageChanges()V
    .registers 1

    .line 1129
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->onFinishPackageChangesInternal()V

    .line 1130
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 1131
    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 1044
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1045
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 1046
    monitor-exit v0

    return v2

    .line 1048
    :cond_e
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, "curInputMethodId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1050
    .local v3, "N":I
    if-eqz v1, :cond_68

    .line 1051
    move v4, v2

    .local v4, "i":I
    :goto_21
    if-ge v4, v3, :cond_68

    .line 1052
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 1053
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 1054
    array-length v6, p2

    move v7, v2

    :goto_39
    if-ge v7, v6, :cond_65

    aget-object v8, p2, v7

    .line 1055
    .local v8, "pkg":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 1056
    const/4 v2, 0x1

    if-nez p4, :cond_4c

    .line 1057
    monitor-exit v0

    return v2

    .line 1060
    :cond_4c
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerServiceInjector;->shouldResetIME(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v6

    if-nez v6, :cond_54

    .line 1062
    monitor-exit v0

    return v2

    .line 1065
    :cond_54
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string v7, ""

    # invokes: Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/server/InputMethodManagerService;->access$300(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    .line 1066
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z
    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)Z

    .line 1067
    monitor-exit v0

    return v2

    .line 1054
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 1051
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1073
    .end local v1    # "curInputMethodId":Ljava/lang/String;
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_68
    monitor-exit v0

    .line 1074
    return v2

    .line 1073
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_5 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 1084
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    if-nez v0, :cond_30

    .line 1085
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1086
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const/16 v3, 0x200

    .line 1088
    # invokes: Lcom/android/server/InputMethodManagerService;->getComponentMatchingFlags(I)I
    invoke-static {v2, v3}, Lcom/android/server/InputMethodManagerService;->access$500(Lcom/android/server/InputMethodManagerService;I)I

    move-result v2

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v3

    .line 1086
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1091
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    .line 1092
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 1096
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_30
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 1102
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1108
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .registers 6
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1114
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 1115
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1117
    :cond_e
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 6
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1122
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 1123
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1125
    :cond_e
    return-void
.end method
