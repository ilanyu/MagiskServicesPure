.class final Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
.super Landroid/database/ContentObserver;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ContentObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ObserverInstance"
.end annotation


# instance fields
.field final mJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/ContentObserverController$JobInstance;",
            ">;"
        }
    .end annotation
.end field

.field final mUri:Landroid/app/job/JobInfo$TriggerContentUri;

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/job/controllers/ContentObserverController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ContentObserverController;Landroid/os/Handler;Landroid/app/job/JobInfo$TriggerContentUri;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ContentObserverController;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "uri"    # Landroid/app/job/JobInfo$TriggerContentUri;
    .param p4, "userId"    # I

    .line 198
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    .line 199
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 195
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    .line 200
    iput-object p3, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    .line 201
    iput p4, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    .line 202
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 206
    # getter for: Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 207
    const-string v0, "JobScheduler.ContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange(self="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " when mUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_39
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3e
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 212
    .local v1, "N":I
    const/4 v2, 0x0

    .line 212
    .local v2, "i":I
    :goto_45
    if-ge v2, v1, :cond_83

    .line 213
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 214
    .local v3, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-nez v4, :cond_5a

    .line 215
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 217
    :cond_5a
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_69

    .line 218
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_69
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v4, :cond_74

    .line 221
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 223
    :cond_74
    iget-object v4, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v3}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->scheduleLocked()V

    .line 212
    .end local v3    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 226
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_83
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_3e .. :try_end_87} :catchall_85

    throw v1
.end method
