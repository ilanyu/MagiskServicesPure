.class Lcom/android/server/pm/ShortcutService$LocalService;
.super Landroid/content/pm/ShortcutServiceInternal;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 2523
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/pm/ShortcutServiceInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "x1"    # Lcom/android/server/pm/ShortcutService$1;

    .line 2523
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method

.method private getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;
    .registers 22
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "getPinnedByAnyLauncher"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ShortcutService.this.mLock"
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 2643
    const-string/jumbo v4, "packageName"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2644
    const-string/jumbo v4, "shortcutId"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2646
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2647
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v12, p1

    invoke-virtual {v4, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2649
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4

    .line 2650
    invoke-virtual {v4, v1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v4

    .line 2651
    .local v4, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v13, 0x0

    if-nez v4, :cond_2d

    .line 2652
    return-object v13

    .line 2655
    :cond_2d
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v5

    .line 2656
    .local v14, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v7, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$a6cj3oQpS-Z6FB4DytB0FytYmiM;

    invoke-direct {v7, v2}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$a6cj3oQpS-Z6FB4DytB0FytYmiM;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v5, v4

    move-object v6, v14

    move-object/from16 v9, p2

    move v10, v12

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 2659
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4b

    goto :goto_53

    :cond_4b
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/content/pm/ShortcutInfo;

    :goto_53
    return-object v13
.end method

.method private getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    .registers 38
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "changedSince"    # J
    .param p7, "componentName"    # Landroid/content/ComponentName;
    .param p8, "queryFlags"    # I
    .param p9, "userId"    # I
    .param p11, "cloneFlag"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "ShortcutService.this.mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Landroid/content/ComponentName;",
            "II",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;III)V"
        }
    .end annotation

    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    .line 2572
    if-nez v1, :cond_b

    const/4 v3, 0x0

    .line 2573
    :goto_9
    move-object v7, v3

    goto :goto_11

    :cond_b
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    goto :goto_9

    .line 2575
    .local v7, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_11
    iget-object v3, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v13, p9

    invoke-virtual {v3, v13}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    .line 2576
    .local v3, "user":Lcom/android/server/pm/ShortcutUser;
    move-object/from16 v14, p3

    invoke-virtual {v3, v14}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v22

    .line 2577
    .local v22, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v22, :cond_22

    .line 2578
    return-void

    .line 2580
    :cond_22
    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2a

    move v9, v6

    goto :goto_2b

    :cond_2a
    move v9, v5

    .line 2581
    .local v9, "matchDynamic":Z
    :goto_2b
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_31

    move v10, v6

    goto :goto_32

    :cond_31
    move v10, v5

    .line 2582
    .local v10, "matchPinned":Z
    :goto_32
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_38

    move v12, v6

    goto :goto_39

    :cond_38
    move v12, v5

    .line 2584
    .local v12, "matchManifest":Z
    :goto_39
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2585
    move/from16 v15, p1

    move-object/from16 v8, p2

    move/from16 v11, p12

    move/from16 v0, p13

    invoke-virtual {v4, v8, v15, v11, v0}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v23

    .line 2587
    .local v23, "canAccessAllShortcuts":Z
    if-eqz v23, :cond_4f

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_4f

    move v5, v6

    nop

    :cond_4f
    move v11, v5

    .line 2591
    .local v11, "getPinnedByAnyLauncher":Z
    new-instance v17, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;

    move-object/from16 v4, v17

    move-wide/from16 v5, p5

    move-object/from16 v8, p7

    invoke-direct/range {v4 .. v12}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$ltDE7qm9grkumxffFI8cLCFpNqU;-><init>(JLandroid/util/ArraySet;Landroid/content/ComponentName;ZZZZ)V

    move-object/from16 v15, v22

    move-object/from16 v16, p10

    move/from16 v18, p11

    move-object/from16 v19, p2

    move/from16 v20, p1

    move/from16 v21, v11

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 2616
    return-void
.end method

.method static synthetic lambda$getShortcutInfoLocked$2(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .registers 3
    .param p0, "shortcutId"    # Ljava/lang/String;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2657
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getShortcuts$0(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;IIILcom/android/server/pm/ShortcutPackage;)V
    .registers 28
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "shortcutIdsF"    # Ljava/util/List;
    .param p4, "changedSince"    # J
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "queryFlags"    # I
    .param p8, "userId"    # I
    .param p9, "ret"    # Ljava/util/ArrayList;
    .param p10, "cloneFlag"    # I
    .param p11, "callingPid"    # I
    .param p12, "callingUid"    # I
    .param p13, "p"    # Lcom/android/server/pm/ShortcutPackage;

    .line 2556
    nop

    .line 2557
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2556
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    .line 2560
    return-void
.end method

.method static synthetic lambda$getShortcutsInnerLocked$1(JLandroid/util/ArraySet;Landroid/content/ComponentName;ZZZZLandroid/content/pm/ShortcutInfo;)Z
    .registers 12
    .param p0, "changedSince"    # J
    .param p2, "ids"    # Landroid/util/ArraySet;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "matchDynamic"    # Z
    .param p5, "matchPinned"    # Z
    .param p6, "getPinnedByAnyLauncher"    # Z
    .param p7, "matchManifest"    # Z
    .param p8, "si"    # Landroid/content/pm/ShortcutInfo;

    .line 2593
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    cmp-long v0, v0, p0

    const/4 v1, 0x0

    if-gez v0, :cond_a

    .line 2594
    return v1

    .line 2596
    :cond_a
    if-eqz p2, :cond_17

    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2597
    return v1

    .line 2599
    :cond_17
    if-eqz p3, :cond_2a

    .line 2600
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2601
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2602
    return v1

    .line 2605
    :cond_2a
    const/4 v0, 0x1

    if-eqz p4, :cond_34

    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2606
    return v0

    .line 2608
    :cond_34
    if-nez p5, :cond_38

    if-eqz p6, :cond_3f

    :cond_38
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2609
    return v0

    .line 2611
    :cond_3f
    if-eqz p7, :cond_48

    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2612
    return v0

    .line 2614
    :cond_48
    return v1
.end method


# virtual methods
.method public addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    .line 2720
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2721
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->access$400(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2722
    monitor-exit v0

    .line 2723
    return-void

    .line 2722
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;
    .registers 24
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    .line 2691
    const-string/jumbo v0, "packageName can\'t be empty"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2692
    const-string/jumbo v0, "shortcutId can\'t be empty"

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2694
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 2695
    :try_start_1f
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v12}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2696
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2698
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v10, v12, v9}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 2699
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2701
    iget-object v0, v8, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_7c

    .line 2702
    move/from16 v15, p6

    move/from16 v7, p7

    :try_start_38
    invoke-virtual {v0, v10, v9, v15, v7}, Lcom/android/server/pm/ShortcutService;->canSeeAnyPinnedShortcut(Ljava/lang/String;III)Z

    move-result v0

    .line 2706
    .local v0, "getPinnedByAnyLauncher":Z
    move-object v1, v8

    move v2, v9

    move-object v3, v10

    move-object v4, v13

    move-object v5, v11

    move v6, v12

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 2710
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v2

    if-nez v2, :cond_58

    if-nez v0, :cond_58

    goto :goto_5e

    .line 2714
    :cond_58
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object v2

    monitor-exit v14

    return-object v2

    .line 2711
    :cond_5e
    :goto_5e
    const-string v2, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist or disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    const/4 v2, 0x0

    monitor-exit v14

    return-object v2

    .line 2715
    .end local v0    # "getPinnedByAnyLauncher":Z
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_7c
    move-exception v0

    move/from16 v15, p6

    :goto_7f
    monitor-exit v14
    :try_end_80
    .catchall {:try_start_38 .. :try_end_80} :catchall_81

    throw v0

    :catchall_81
    move-exception v0

    goto :goto_7f
.end method

.method public getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 15
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 2755
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2756
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2757
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2759
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2760
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2761
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2763
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2764
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2766
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2767
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2768
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x0

    if-nez v1, :cond_3a

    .line 2769
    monitor-exit v0

    return-object v2

    .line 2772
    :cond_3a
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 2773
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v3, :cond_83

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    move-result v4

    if-nez v4, :cond_47

    goto :goto_83

    .line 2776
    :cond_47
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;
    invoke-static {v4}, Lcom/android/server/pm/ShortcutService;->access$500(Lcom/android/server/pm/ShortcutService;)Lcom/android/server/pm/ShortcutBitmapSaver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ShortcutBitmapSaver;->getBitmapPathMayWaitLocked(Landroid/content/pm/ShortcutInfo;)Ljava/lang/String;

    move-result-object v4

    .line 2777
    .local v4, "path":Ljava/lang/String;
    if-nez v4, :cond_5d

    .line 2778
    const-string v5, "ShortcutService"

    const-string/jumbo v6, "null bitmap detected in getShortcutIconFd()"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_18 .. :try_end_5c} :catchall_85

    return-object v2

    .line 2782
    :cond_5d
    :try_start_5d
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_68} :catch_6a
    .catchall {:try_start_5d .. :try_end_68} :catchall_85

    :try_start_68
    monitor-exit v0

    return-object v5

    .line 2785
    :catch_6a
    move-exception v5

    .line 2786
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon file not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    monitor-exit v0

    return-object v2

    .line 2774
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_83
    :goto_83
    monitor-exit v0

    return-object v2

    .line 2789
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_68 .. :try_end_87} :catchall_85

    throw v1
.end method

.method public getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 2728
    const-string v0, "callingPackage"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2729
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2730
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2732
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2733
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2734
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2736
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2737
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2739
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v1

    .line 2740
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 2741
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    const/4 v2, 0x0

    if-nez v1, :cond_3a

    .line 2742
    monitor-exit v0

    return v2

    .line 2745
    :cond_3a
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 2746
    .local v3, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v3, :cond_4b

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2747
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v2

    nop

    :cond_4b
    monitor-exit v0

    .line 2746
    return v2

    .line 2748
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_18 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;
    .registers 44
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "changedSince"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p7, "componentName"    # Landroid/content/ComponentName;
    .param p8, "queryFlags"    # I
    .param p9, "userId"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            "IIII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .local p6, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p9

    .line 2531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 2533
    .local v11, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    move/from16 v27, v0

    .line 2535
    .local v27, "cloneKeyFieldOnly":Z
    if-eqz v27, :cond_1a

    .line 2536
    const/4 v0, 0x4

    :goto_18
    move v12, v0

    goto :goto_1d

    :cond_1a
    const/16 v0, 0xb

    goto :goto_18

    .line 2537
    .local v12, "cloneFlag":I
    :goto_1d
    if-nez p5, :cond_23

    .line 2538
    const/4 v0, 0x0

    .line 2541
    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v28, v0

    goto :goto_25

    .end local v0    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_23
    move-object/from16 v28, p6

    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v28, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_25
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v29

    monitor-enter v29

    .line 2542
    :try_start_2c
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2543
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2545
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v10, p2

    invoke-virtual {v0, v10, v13, v14}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 2546
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_a8

    .line 2548
    if-eqz p5, :cond_65

    .line 2549
    move-object v1, v15

    move v2, v14

    move-object v3, v10

    move-object/from16 v4, p5

    move-object/from16 v5, v28

    move-wide/from16 v6, p3

    move-object/from16 v8, p7

    move/from16 v9, p8

    move v10, v13

    move-object/from16 v30, v11

    .end local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .local v30, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move/from16 v13, p10

    move/from16 v14, p11

    :try_start_57
    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5e

    .line 2562
    move-object v3, v15

    move/from16 v1, p9

    goto :goto_90

    :catchall_5e
    move-exception v0

    move-object v3, v15

    move-object/from16 v2, v30

    move/from16 v1, p9

    goto :goto_ac

    .line 2554
    .end local v30    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :cond_65
    move-object/from16 v30, v11

    .end local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v30    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    move-object/from16 v17, v28

    .line 2555
    .local v17, "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_69
    iget-object v0, v15, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_a1

    move/from16 v1, p9

    :try_start_6d
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v0

    new-instance v2, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;
    :try_end_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_9c

    move-object v13, v2

    move-object v14, v15

    move-object v3, v15

    move/from16 v15, p1

    move-object/from16 v16, p2

    move-wide/from16 v18, p3

    move-object/from16 v20, p7

    move/from16 v21, p8

    move/from16 v22, v1

    move-object/from16 v23, v30

    move/from16 v24, v12

    move/from16 v25, p10

    move/from16 v26, p11

    :try_start_8a
    invoke-direct/range {v13 .. v26}, Lcom/android/server/pm/-$$Lambda$ShortcutService$LocalService$Q0t7aDuDFJ8HWAf1NHW1dGQjOf8;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;III)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 2562
    .end local v17    # "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_90
    monitor-exit v29
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_9a

    .line 2563
    iget-object v0, v3, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v2, v30

    # invokes: Lcom/android/server/pm/ShortcutService;->setReturnedByServer(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v2}, Lcom/android/server/pm/ShortcutService;->access$300(Lcom/android/server/pm/ShortcutService;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .end local v30    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    return-object v0

    .line 2562
    .end local v2    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v30    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_9a
    move-exception v0

    goto :goto_9e

    :catchall_9c
    move-exception v0

    move-object v3, v15

    :goto_9e
    move-object/from16 v2, v30

    goto :goto_a7

    :catchall_a1
    move-exception v0

    move-object v3, v15

    move-object/from16 v2, v30

    move/from16 v1, p9

    .end local v30    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v2    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :goto_a7
    goto :goto_ac

    .end local v2    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :catchall_a8
    move-exception v0

    move-object v2, v11

    move v1, v13

    move-object v3, v15

    .end local v11    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    .restart local v2    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    :goto_ac
    :try_start_ac
    monitor-exit v29
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ae

    throw v0

    :catchall_ae
    move-exception v0

    goto :goto_ac
.end method

.method public hasShortcutHostPermission(ILjava/lang/String;II)Z
    .registers 6
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 2795
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermission(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public isForegroundDefaultLauncher(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 2820
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2822
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2823
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 2824
    .local v1, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 2825
    return v2

    .line 2827
    :cond_11
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 2828
    return v2

    .line 2830
    :cond_1c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2831
    :try_start_23
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 2832
    monitor-exit v3

    return v2

    .line 2834
    :cond_2d
    monitor-exit v3

    .line 2835
    const/4 v2, 0x1

    return v2

    .line 2834
    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 2621
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2622
    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2624
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2625
    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2626
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2628
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2629
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2631
    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 2634
    .local v1, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    monitor-exit v0

    return v2

    .line 2635
    .end local v1    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_13 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public isRequestPinItemSupported(II)Z
    .registers 4
    .param p1, "callingUserId"    # I
    .param p2, "requestType"    # I

    .line 2815
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->isRequestPinItemSupported(II)Z

    move-result v0

    return v0
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .registers 9
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2667
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2668
    const-string/jumbo v0, "shortcutIds"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2670
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2671
    :try_start_13
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2672
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2674
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 2675
    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    .line 2676
    .local v1, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2678
    const/4 v2, 0x0

    invoke-virtual {v1, p5, p3, p4, v2}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;Z)V

    .line 2679
    .end local v1    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_36

    .line 2680
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p3, p5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2682
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2683
    return-void

    .line 2679
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z
    .registers 13
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "resultIntent"    # Landroid/content/IntentSender;
    .param p5, "userId"    # I

    .line 2809
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2810
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    # invokes: Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/ShortcutService;->access$600(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;)Z

    move-result v0

    return v0
.end method

.method public setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2802
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->setShortcutHostPackage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2803
    return-void
.end method
