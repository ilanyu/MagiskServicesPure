.class Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;
.super Landroid/os/AsyncTask;
.source "AutofillManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PruneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 2

    .line 1281
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .param p2, "x1"    # Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    .line 1281
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1281
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 11
    .param p1, "ignored"    # [Ljava/lang/Void;

    .line 1288
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    # getter for: Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$100(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1289
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    # getter for: Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$200(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1290
    .local v1, "numSessionsToRemove":I
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 1292
    .local v2, "sessionsToRemove":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_18
    if-ge v4, v1, :cond_32

    .line 1293
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    # getter for: Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$200(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    .line 1295
    .local v5, "session":Lcom/android/server/autofill/Session;
    iget v6, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1292
    .end local v5    # "session":Lcom/android/server/autofill/Session;
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 1297
    .end local v4    # "i":I
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_e5

    move v0, v1

    .end local v1    # "numSessionsToRemove":I
    .local v0, "numSessionsToRemove":I
    move-object v1, v2

    .line 1299
    .end local v2    # "sessionsToRemove":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    .local v1, "sessionsToRemove":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1302
    .local v2, "am":Landroid/app/IActivityManager;
    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "numSessionsToRemove":I
    :goto_3b
    if-ge v0, v4, :cond_5c

    .line 1305
    :try_start_3d
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-interface {v2, v5}, Landroid/app/IActivityManager;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 1306
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4c} :catch_51

    .line 1307
    add-int/lit8 v0, v0, -0x1

    .line 1308
    add-int/lit8 v4, v4, -0x1

    .line 1312
    :cond_50
    goto :goto_59

    .line 1310
    :catch_51
    move-exception v5

    .line 1311
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "AutofillManagerServiceImpl"

    const-string v7, "Cannot figure out if activity is finished"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1302
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1315
    .end local v0    # "i":I
    :cond_5c
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    # getter for: Lcom/android/server/autofill/AutofillManagerServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$100(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1316
    nop

    .local v3, "i":I
    :goto_64
    move v0, v3

    .end local v3    # "i":I
    .restart local v0    # "i":I
    if-ge v0, v4, :cond_e0

    .line 1317
    :try_start_67
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    # getter for: Lcom/android/server/autofill/AutofillManagerServiceImpl;->mSessions:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$200(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 1319
    .local v3, "sessionToRemove":Lcom/android/server/autofill/Session;
    if-eqz v3, :cond_db

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 1320
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    if-ne v6, v7, :cond_db

    .line 1321
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->isSavingLocked()Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 1322
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_db

    .line 1323
    const-string v6, "AutofillManagerServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is saving"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    .line 1326
    :cond_ab
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_d8

    .line 1327
    const-string v6, "AutofillManagerServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prune session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1327
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_d8
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 1316
    .end local v3    # "sessionToRemove":Lcom/android/server/autofill/Session;
    :cond_db
    :goto_db
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    goto :goto_64

    .line 1334
    .end local v3    # "i":I
    :catchall_de
    move-exception v0

    goto :goto_e3

    :cond_e0
    monitor-exit v5

    .line 1336
    const/4 v0, 0x0

    return-object v0

    .line 1334
    :goto_e3
    monitor-exit v5
    :try_end_e4
    .catchall {:try_start_67 .. :try_end_e4} :catchall_de

    throw v0

    .line 1297
    .end local v1    # "sessionsToRemove":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/IBinder;>;"
    .end local v2    # "am":Landroid/app/IActivityManager;
    .end local v4    # "numSessionsToRemove":I
    :catchall_e5
    move-exception v1

    :try_start_e6
    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v1
.end method
