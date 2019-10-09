.class Lcom/android/server/job/JobStore$1;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobStore;

    .line 341
    iput-object p1, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    const-string/jumbo v0, "jobid"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    const-string/jumbo v0, "package"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const-string v0, "class"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 427
    const-string/jumbo v0, "sourcePackageName"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    :cond_3a
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 430
    const-string/jumbo v0, "sourceTag"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    :cond_4a
    const-string/jumbo v0, "sourceUserId"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const-string/jumbo v0, "uid"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const-string/jumbo v0, "priority"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    const-string v0, "flags"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v0

    if-eqz v0, :cond_94

    .line 437
    const-string v0, "internalFlags"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    :cond_94
    const-string/jumbo v0, "lastSuccessfulRunTime"

    .line 441
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    const-string/jumbo v0, "lastFailedRunTime"

    .line 443
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    return-void
.end method

.method private deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;
    .registers 10
    .param p1, "bundle"    # Landroid/os/PersistableBundle;
    .param p2, "maxDepth"    # I

    .line 455
    if-gtz p2, :cond_4

    .line 456
    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_4
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 459
    .local v0, "copy":Landroid/os/PersistableBundle;
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 460
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 461
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 462
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-eqz v5, :cond_32

    .line 463
    move-object v5, v4

    check-cast v5, Landroid/os/PersistableBundle;

    add-int/lit8 v6, p2, -0x1

    invoke-direct {p0, v5, v6}, Lcom/android/server/job/JobStore$1;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 464
    .local v5, "bCopy":Landroid/os/PersistableBundle;
    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 466
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "bCopy":Landroid/os/PersistableBundle;
    :cond_32
    goto :goto_12

    .line 467
    :cond_33
    return-object v0
.end method

.method static synthetic lambda$run$0(Ljava/util/List;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p0, "storeCopy"    # Ljava/util/List;
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 349
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 350
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {v0, p1}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_e
    return-void
.end method

.method private writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/PersistableBundle;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 448
    const-string v0, "extras"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/JobStore$1;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 450
    .local v0, "extrasCopy":Landroid/os/PersistableBundle;
    invoke-virtual {v0, p2}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 451
    const-string v2, "extras"

    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    return-void
.end method

.method private writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    const-string v0, "constraints"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 477
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 478
    .local v0, "network":Landroid/net/NetworkRequest;
    const-string/jumbo v2, "net-capabilities"

    iget-object v3, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 479
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v3

    .line 478
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 480
    const-string/jumbo v2, "net-unwanted-capabilities"

    iget-object v3, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 481
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getUnwantedCapabilities()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v3

    .line 480
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    const-string/jumbo v2, "net-transport-types"

    iget-object v3, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 484
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v3

    .line 483
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    .end local v0    # "network":Landroid/net/NetworkRequest;
    :cond_50
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_60

    .line 487
    const-string v0, "idle"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    :cond_60
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 490
    const-string v0, "charging"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    :cond_6f
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 493
    const-string v0, "battery-not-low"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    :cond_7e
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 497
    const-string/jumbo v0, "storage-not-low"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    :cond_8e
    const-string v0, "constraints"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    return-void
.end method

.method private writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 14
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 506
    .local v0, "job":Landroid/app/job/JobInfo;
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 507
    const-string/jumbo v1, "periodic"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    const-string/jumbo v1, "period"

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    const-string v1, "flex"

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_37

    .line 511
    :cond_31
    const-string/jumbo v1, "one-off"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    :goto_37
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v1

    .line 518
    .local v1, "utcJobTimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v3

    if-eqz v3, :cond_5a

    if-eqz v1, :cond_5a

    .line 519
    const-string v3, "JobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "storing original UTC timestamps for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_5a
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 523
    .local v3, "nowRTC":J
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 524
    .local v5, "nowElapsed":J
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 526
    if-nez v1, :cond_75

    .line 527
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v7

    sub-long/2addr v7, v5

    add-long/2addr v7, v3

    goto :goto_7d

    .line 528
    :cond_75
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 529
    .local v7, "deadlineWallclock":J
    :goto_7d
    const-string v9, "deadline"

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v2, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    .end local v7    # "deadlineWallclock":J
    :cond_86
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 532
    if-nez v1, :cond_95

    .line 533
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    add-long/2addr v7, v3

    goto :goto_9d

    .line 534
    :cond_95
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 535
    .local v7, "delayWallclock":J
    :goto_9d
    const-string v9, "delay"

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v2, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 541
    .end local v7    # "delayWallclock":J
    :cond_a6
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x7530

    cmp-long v7, v7, v9

    if-nez v7, :cond_bf

    .line 542
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_d9

    .line 543
    :cond_bf
    const-string v7, "backoff-policy"

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v2, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 544
    const-string v7, "initial-backoff"

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v2, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 546
    :cond_d9
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 547
    const-string/jumbo v7, "periodic"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_ec

    .line 549
    :cond_e6
    const-string/jumbo v7, "one-off"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    :goto_ec
    return-void
.end method

.method private writeJobsMapImpl(Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 362
    .local p1, "jobList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v1, p0

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "numJobs":I
    const/4 v3, 0x0

    .line 364
    .local v3, "numSystemJobs":I
    const/4 v0, 0x0

    move v4, v0

    .line 366
    .local v4, "numSyncJobs":I
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 367
    .local v5, "startTime":J
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 368
    .local v7, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 369
    .local v8, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 370
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v8, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 371
    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 373
    const-string/jumbo v9, "job-info"

    invoke-interface {v8, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    const-string/jumbo v9, "version"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3b} :catch_11c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_3b} :catch_10b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_104

    .line 375
    move v9, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 375
    .local v2, "i":I
    .local v3, "numJobs":I
    .local v4, "numSystemJobs":I
    .local v9, "numSyncJobs":I
    :goto_3f
    :try_start_3f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_fd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_43} :catch_f6
    .catchall {:try_start_3f .. :try_end_43} :catchall_f2

    if-ge v2, v10, :cond_ab

    .line 376
    move-object/from16 v10, p1

    :try_start_47
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/JobStatus;

    .line 377
    .local v12, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v13

    if-eqz v13, :cond_6d

    .line 378
    const-string v13, "JobStore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Saving job "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_6d
    const-string/jumbo v13, "job"

    invoke-interface {v8, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    invoke-direct {v1, v8, v12}, Lcom/android/server/job/JobStore$1;->addAttributesToJobTag(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 382
    invoke-direct {v1, v8, v12}, Lcom/android/server/job/JobStore$1;->writeConstraintsToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 383
    invoke-direct {v1, v8, v12}, Lcom/android/server/job/JobStore$1;->writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 384
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v13

    invoke-direct {v1, v13, v8}, Lcom/android/server/job/JobStore$1;->writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 385
    const-string/jumbo v13, "job"

    invoke-interface {v8, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    add-int/lit8 v3, v3, 0x1

    .line 388
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v13

    const/16 v14, 0x3e8

    if-ne v13, v14, :cond_a1

    .line 389
    add-int/lit8 v4, v4, 0x1

    .line 390
    # invokes: Lcom/android/server/job/JobStore;->isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v12}, Lcom/android/server/job/JobStore;->access$100(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v13

    if-eqz v13, :cond_a1

    .line 391
    add-int/lit8 v9, v9, 0x1

    .line 375
    .end local v12    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 412
    .end local v2    # "i":I
    .end local v5    # "startTime":J
    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_a4
    move-exception v0

    goto/16 :goto_148

    .line 407
    :catch_a7
    move-exception v0

    goto :goto_f9

    .line 403
    :catch_a9
    move-exception v0

    goto :goto_100

    .line 395
    .restart local v5    # "startTime":J
    .restart local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_ab
    move-object/from16 v10, p1

    const-string/jumbo v2, "job-info"

    invoke-interface {v8, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 396
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 399
    iget-object v2, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;
    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$200(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 400
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 401
    iget-object v11, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;
    invoke-static {v11}, Lcom/android/server/job/JobStore;->access$200(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 402
    iget-object v11, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # setter for: Lcom/android/server/job/JobStore;->mDirtyOperations:I
    invoke-static {v11, v0}, Lcom/android/server/job/JobStore;->access$302(Lcom/android/server/job/JobStore;I)I
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_d5} :catch_a9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_d5} :catch_a7
    .catchall {:try_start_47 .. :try_end_d5} :catchall_a4

    .line 412
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "startTime":J
    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 413
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v4, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 414
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v9, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 415
    nop

    .line 416
    move v2, v3

    move v3, v4

    move v4, v9

    goto :goto_145

    .line 412
    :catchall_f2
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_148

    .line 407
    :catch_f6
    move-exception v0

    move-object/from16 v10, p1

    .line 407
    .end local v9    # "numSyncJobs":I
    .local v2, "numJobs":I
    .local v3, "numSystemJobs":I
    .local v4, "numSyncJobs":I
    :goto_f9
    move v2, v3

    move v3, v4

    move v4, v9

    goto :goto_10e

    .line 403
    .end local v2    # "numJobs":I
    .local v3, "numJobs":I
    .local v4, "numSystemJobs":I
    .restart local v9    # "numSyncJobs":I
    :catch_fd
    move-exception v0

    move-object/from16 v10, p1

    .line 403
    .end local v9    # "numSyncJobs":I
    .restart local v2    # "numJobs":I
    .local v3, "numSystemJobs":I
    .local v4, "numSyncJobs":I
    :goto_100
    move v2, v3

    move v3, v4

    move v4, v9

    goto :goto_11f

    .line 412
    :catchall_104
    move-exception v0

    move-object/from16 v10, p1

    .line 412
    .end local v2    # "numJobs":I
    .local v3, "numJobs":I
    .local v4, "numSystemJobs":I
    .restart local v9    # "numSyncJobs":I
    :goto_107
    move v9, v4

    move v4, v3

    move v3, v2

    goto :goto_148

    .line 407
    .end local v9    # "numSyncJobs":I
    .restart local v2    # "numJobs":I
    .local v3, "numSystemJobs":I
    .local v4, "numSyncJobs":I
    :catch_10b
    move-exception v0

    move-object/from16 v10, p1

    .line 408
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_10e
    :try_start_10e
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 409
    const-string v5, "JobStore"

    const-string v6, "Error persisting bundle."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_12c

    .line 403
    :catch_11c
    move-exception v0

    move-object/from16 v10, p1

    .line 404
    .local v0, "e":Ljava/io/IOException;
    :goto_11f
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 405
    const-string v5, "JobStore"

    const-string v6, "Error writing out job data."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12c
    .catchall {:try_start_10e .. :try_end_12c} :catchall_146

    .line 412
    .end local v0    # "e":Ljava/io/IOException;
    :cond_12c
    :goto_12c
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v2, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 413
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v3, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 414
    iget-object v0, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v0}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    iput v4, v0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 415
    nop

    .line 416
    :goto_145
    return-void

    .line 412
    :catchall_146
    move-exception v0

    goto :goto_107

    .line 412
    .end local v2    # "numJobs":I
    .local v3, "numJobs":I
    .local v4, "numSystemJobs":I
    .restart local v9    # "numSyncJobs":I
    :goto_148
    iget-object v2, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v3, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 413
    iget-object v2, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v4, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 414
    iget-object v2, v1, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    # getter for: Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    invoke-static {v2}, Lcom/android/server/job/JobStore;->access$400(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v2

    iput v9, v2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 344
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 345
    .local v0, "startElapsed":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v2, "storeCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    iget-object v3, v3, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 348
    :try_start_10
    iget-object v4, p0, Lcom/android/server/job/JobStore$1;->this$0:Lcom/android/server/job/JobStore;

    iget-object v4, v4, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/job/-$$Lambda$JobStore$1$Wgepg1oHZp0-Q01q1baIVZKWujU;

    invoke-direct {v6, v2}, Lcom/android/server/job/-$$Lambda$JobStore$1$Wgepg1oHZp0-Q01q1baIVZKWujU;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 353
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_4b

    .line 354
    invoke-direct {p0, v2}, Lcom/android/server/job/JobStore$1;->writeJobsMapImpl(Ljava/util/List;)V

    .line 355
    # getter for: Lcom/android/server/job/JobStore;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/JobStore;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 356
    const-string v3, "JobStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished writing, took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_4a
    return-void

    .line 353
    :catchall_4b
    move-exception v4

    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v4
.end method
