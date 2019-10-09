.class Lcom/android/server/location/NanoAppStateManager;
.super Ljava/lang/Object;
.source "NanoAppStateManager.java"


# static fields
.field private static final ENABLE_LOG_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NanoAppStateManager"


# instance fields
.field private final mNanoAppHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextHandle:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNextHandle:I

    return-void
.end method

.method private handleQueryAppEntry(IJI)V
    .registers 16
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "nanoAppVersion"    # I

    .line 176
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v6

    .line 177
    .local v6, "nanoAppHandle":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_b

    .line 178
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/NanoAppStateManager;->addNanoAppInstance(IJI)V

    goto :goto_67

    .line 180
    :cond_b
    iget-object v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 181
    .local v7, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {v7}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppVersion()I

    move-result v0

    if-eq v0, p4, :cond_67

    .line 182
    iget-object v8, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Landroid/hardware/location/NanoAppInstanceInfo;

    move-object v0, v10

    move v1, v6

    move-wide v2, p2

    move v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>(IJII)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "NanoAppStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated app instance with handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at hub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": ID=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", version=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v7    # "info":Landroid/hardware/location/NanoAppInstanceInfo;
    :cond_67
    :goto_67
    return-void
.end method


# virtual methods
.method declared-synchronized addNanoAppInstance(IJI)V
    .registers 19
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "nanoAppVersion"    # I

    move-object v1, p0

    monitor-enter p0

    .line 108
    :try_start_2
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/location/NanoAppStateManager;->removeNanoAppInstance(IJ)V

    .line 109
    iget-object v0, v1, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_19

    .line 110
    const-string v0, "NanoAppStateManager"

    const-string v2, "Error adding nanoapp instance: max limit exceeded"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_8c

    .line 111
    monitor-exit p0

    return-void

    .line 114
    :cond_19
    :try_start_19
    iget v0, v1, Lcom/android/server/location/NanoAppStateManager;->mNextHandle:I

    .line 115
    .local v0, "nanoAppHandle":I
    const/4 v3, 0x0

    move v10, v0

    move v0, v3

    .local v0, "i":I
    .local v10, "nanoAppHandle":I
    :goto_1e
    if-gt v0, v2, :cond_53

    .line 116
    iget-object v4, v1, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 117
    iget-object v11, v1, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Landroid/hardware/location/NanoAppInstanceInfo;

    move-object v4, v13

    move v5, v10

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move v9, p1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>(IJII)V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    if-ne v10, v2, :cond_44

    goto :goto_46

    :cond_44
    add-int/lit8 v3, v10, 0x1

    :goto_46
    iput v3, v1, Lcom/android/server/location/NanoAppStateManager;->mNextHandle:I

    .line 120
    goto :goto_53

    .line 122
    :cond_49
    if-ne v10, v2, :cond_4d

    move v4, v3

    goto :goto_4f

    :cond_4d
    add-int/lit8 v4, v10, 0x1

    :goto_4f
    move v10, v4

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 126
    .end local v0    # "i":I
    :cond_53
    :goto_53
    const-string v0, "NanoAppStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added app instance with handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to hub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": ID=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", version=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_19 .. :try_end_8a} :catchall_8c

    .line 130
    monitor-exit p0

    return-void

    .line 107
    .end local v10    # "nanoAppHandle":I
    .end local p1    # "contextHubId":I
    .end local p2    # "nanoAppId":J
    .end local p4    # "nanoAppVersion":I
    :catchall_8c
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/NanoAppStateManager;
    throw v0
.end method

.method declared-synchronized getNanoAppHandle(IJ)I
    .registers 8
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 88
    .local v1, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v2

    if-ne v2, p1, :cond_2b

    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_2b

    .line 89
    invoke-virtual {v1}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result v0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2f

    monitor-exit p0

    return v0

    .line 91
    .end local v1    # "info":Landroid/hardware/location/NanoAppInstanceInfo;
    :cond_2b
    goto :goto_b

    .line 93
    :cond_2c
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 86
    .end local p1    # "contextHubId":I
    .end local p2    # "nanoAppId":J
    :catchall_2f
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/NanoAppStateManager;
    throw p1
.end method

.method declared-synchronized getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .registers 4
    .param p1, "nanoAppHandle"    # I

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .end local p1    # "nanoAppHandle":I
    :catchall_f
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/NanoAppStateManager;
    throw p1
.end method

.method declared-synchronized getNanoAppInstanceInfoCollection()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/NanoAppStateManager;
    throw v0
.end method

.method declared-synchronized removeNanoAppInstance(IJ)V
    .registers 7
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J

    monitor-enter p0

    .line 139
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/NanoAppStateManager;->getNanoAppHandle(IJ)I

    move-result v0

    .line 140
    .local v0, "nanoAppHandle":I
    iget-object v1, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 141
    monitor-exit p0

    return-void

    .line 138
    .end local v0    # "nanoAppHandle":I
    .end local p1    # "contextHubId":I
    .end local p2    # "nanoAppId":J
    :catchall_10
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/NanoAppStateManager;
    throw p1
.end method

.method declared-synchronized updateCache(ILjava/util/List;)V
    .registers 9
    .param p1, "contextHubId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    .local p2, "nanoAppInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    monitor-enter p0

    .line 151
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 152
    .local v0, "nanoAppIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 153
    .local v2, "appInfo":Landroid/hardware/contexthub/V1_0/HubAppInfo;
    iget-wide v3, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iget v5, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/server/location/NanoAppStateManager;->handleQueryAppEntry(IJI)V

    .line 154
    iget-wide v3, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v2    # "appInfo":Landroid/hardware/contexthub/V1_0/HubAppInfo;
    goto :goto_a

    .line 157
    :cond_27
    iget-object v1, p0, Lcom/android/server/location/NanoAppStateManager;->mNanoAppHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/NanoAppInstanceInfo;>;"
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 160
    .local v2, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppInstanceInfo;->getContexthubId()I

    move-result v3

    if-ne v3, p1, :cond_54

    .line 161
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_57

    .line 164
    .end local v2    # "info":Landroid/hardware/location/NanoAppInstanceInfo;
    :cond_54
    goto :goto_31

    .line 165
    :cond_55
    monitor-exit p0

    return-void

    .line 150
    .end local v0    # "nanoAppIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/location/NanoAppInstanceInfo;>;"
    .end local p1    # "contextHubId":I
    .end local p2    # "nanoAppInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    :catchall_57
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/location/NanoAppStateManager;
    throw p1
.end method
