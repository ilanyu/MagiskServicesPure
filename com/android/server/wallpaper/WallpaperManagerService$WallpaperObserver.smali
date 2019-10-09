.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mUserId:I

.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final mWallpaperLockFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 5
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 204
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 205
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x688

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 207
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 208
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 209
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 210
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v1, "wallpaper_orig"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 211
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v1, "wallpaper_lock_orig"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    .line 212
    return-void
.end method

.method private dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 7
    .param p1, "sysChanged"    # Z
    .param p2, "lockChanged"    # Z

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    if-eqz p2, :cond_18

    .line 218
    :try_start_8
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v2

    goto :goto_18

    .line 224
    :catchall_16
    move-exception v2

    goto :goto_2f

    .line 220
    :cond_18
    :goto_18
    if-nez v0, :cond_27

    .line 222
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v2

    .line 224
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_16

    .line 225
    if-eqz v0, :cond_2c

    move-object v1, v0

    goto :goto_2e

    :cond_2c
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_2e
    return-object v1

    .line 224
    :goto_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_16

    throw v2
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 22
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 230
    move-object/from16 v3, p2

    if-nez v3, :cond_9

    .line 231
    return-void

    .line 233
    :cond_9
    const/16 v0, 0x80

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v0, :cond_11

    move v0, v5

    goto :goto_12

    :cond_11
    move v0, v4

    :goto_12
    move v6, v0

    .line 234
    .local v6, "moved":Z
    const/16 v0, 0x8

    if-eq v2, v0, :cond_1c

    if-eqz v6, :cond_1a

    goto :goto_1c

    :cond_1a
    move v7, v4

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v7, v5

    .line 235
    .local v7, "written":Z
    :goto_1d
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v8, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    .local v8, "changedFile":Ljava/io/File;
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v9, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 240
    .local v9, "sysWallpaperChanged":Z
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    invoke-virtual {v10, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 241
    .local v10, "lockWallpaperChanged":Z
    const/4 v11, 0x0

    .line 242
    .local v11, "notifyColorsWhich":I
    invoke-direct {v1, v9, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v15

    .line 254
    .local v15, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v14, 0x2

    if-eqz v6, :cond_48

    if-eqz v10, :cond_48

    .line 261
    invoke-static {v8}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 262
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    .line 263
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    invoke-static {v0, v15, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 264
    return-void

    .line 267
    :cond_48
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 268
    if-nez v9, :cond_57

    if-eqz v10, :cond_52

    goto :goto_57

    .line 332
    :cond_52
    move-object/from16 v18, v13

    move-object v4, v15

    goto/16 :goto_d1

    .line 269
    :cond_57
    :goto_57
    :try_start_57
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v12, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 270
    iget-object v12, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_dc

    if-eqz v12, :cond_6d

    if-ne v2, v0, :cond_6d

    :try_start_62
    iget-boolean v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_67

    if-eqz v0, :cond_52

    goto :goto_6d

    .line 332
    :catchall_67
    move-exception v0

    move-object/from16 v18, v13

    move-object v4, v15

    goto/16 :goto_e0

    .line 273
    :cond_6d
    :goto_6d
    if-eqz v7, :cond_ce

    .line 281
    :try_start_6f
    invoke-static {v8}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_dc

    .line 282
    if-eqz v6, :cond_7b

    .line 289
    :try_start_74
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v12, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V
    invoke-static {v0, v12, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_67

    .line 291
    :cond_7b
    :try_start_7b
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 295
    iput-boolean v4, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 296
    if-eqz v9, :cond_9d

    .line 298
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;
    :try_end_8a
    .catchall {:try_start_7b .. :try_end_8a} :catchall_dc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v13

    move-object v13, v0

    move v0, v14

    move v14, v4

    move-object v4, v15

    move v15, v5

    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v16, v4

    :try_start_97
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 300
    or-int/lit8 v11, v11, 0x1

    goto :goto_a1

    .line 302
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_9d
    move-object/from16 v18, v13

    move v0, v14

    move-object v4, v15

    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_a1
    if-nez v10, :cond_a8

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_bb

    .line 310
    :cond_a8
    if-nez v10, :cond_b3

    .line 311
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 314
    :cond_b3
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    .line 315
    or-int/lit8 v0, v11, 0x2

    .line 318
    .end local v11    # "notifyColorsWhich":I
    .local v0, "notifyColorsWhich":I
    move v11, v0

    .end local v0    # "notifyColorsWhich":I
    .restart local v11    # "notifyColorsWhich":I
    :cond_bb
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    invoke-static {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 321
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;
    :try_end_c4
    .catchall {:try_start_97 .. :try_end_c4} :catchall_da

    if-eqz v0, :cond_d1

    .line 323
    :try_start_c6
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_cb} :catch_cc
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_da

    .line 327
    goto :goto_d1

    .line 324
    :catch_cc
    move-exception v0

    goto :goto_d1

    .line 332
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_ce
    move-object/from16 v18, v13

    move-object v4, v15

    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_d1
    :goto_d1
    :try_start_d1
    monitor-exit v18
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_da

    .line 335
    if-eqz v11, :cond_d9

    .line 336
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    invoke-static {v0, v4, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 338
    :cond_d9
    return-void

    .line 332
    :catchall_da
    move-exception v0

    goto :goto_e0

    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_dc
    move-exception v0

    move-object/from16 v18, v13

    move-object v4, v15

    .end local v15    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_e0
    :try_start_e0
    monitor-exit v18
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_da

    throw v0
.end method
