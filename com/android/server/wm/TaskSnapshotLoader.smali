.class Lcom/android/server/wm/TaskSnapshotLoader;
.super Ljava/lang/Object;
.source "TaskSnapshotLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;)V
    .registers 2
    .param p1, "persister"    # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 53
    return-void
.end method


# virtual methods
.method loadTask(IIZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 27
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "reducedResolution"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 67
    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v14

    .line 68
    .local v14, "protoFile":Ljava/io/File;
    if-eqz p3, :cond_15

    .line 69
    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v0

    goto :goto_1b

    .line 70
    :cond_15
    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v0

    :goto_1b
    move-object v13, v0

    .line 71
    .local v13, "bitmapFile":Ljava/io/File;
    const/4 v15, 0x0

    if-eqz v13, :cond_f2

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 72
    move-object/from16 v19, v13

    goto/16 :goto_f4

    .line 75
    :cond_2f
    :try_start_2f
    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 76
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v4

    move-object v12, v4

    .line 77
    .local v12, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v11, v4

    .line 78
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v4, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 79
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_4e} :catch_d8

    move-object v10, v4

    .line 80
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_71

    .line 81
    :try_start_51
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load bitmap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_6b} :catch_6c

    .line 82
    return-object v15

    .line 95
    .end local v0    # "bytes":[B
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    :catch_6c
    move-exception v0

    move-object/from16 v19, v13

    goto/16 :goto_db

    .line 84
    .restart local v0    # "bytes":[B
    .restart local v10    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    :cond_71
    :try_start_71
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v4
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_75} :catch_d8

    move-object/from16 v16, v4

    .line 85
    .local v16, "buffer":Landroid/graphics/GraphicBuffer;
    if-nez v16, :cond_94

    .line 86
    :try_start_79
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to retrieve gralloc buffer for bitmap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_93} :catch_6c

    .line 88
    return-object v15

    .line 90
    :cond_94
    :try_start_94
    new-instance v17, Landroid/app/ActivityManager$TaskSnapshot;

    iget v6, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    new-instance v7, Landroid/graphics/Rect;

    iget v4, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v5, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    iget v8, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    iget v9, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v7, v4, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a5} :catch_d8

    .line 92
    if-eqz p3, :cond_aa

    :try_start_a7
    sget v4, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_a9} :catch_6c

    goto :goto_ac

    :cond_aa
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_ac
    move v9, v4

    :try_start_ad
    iget-boolean v8, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v5, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v4, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    move-object/from16 v18, v0

    iget-boolean v0, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b7} :catch_d8

    .end local v0    # "bytes":[B
    .local v18, "bytes":[B
    move/from16 v19, v4

    move-object/from16 v4, v17

    move/from16 v20, v5

    move-object/from16 v5, v16

    move/from16 v21, v8

    move/from16 v8, p3

    move-object/from16 v22, v10

    move/from16 v10, v21

    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .local v22, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v21, v11

    move/from16 v11, v20

    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v21, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v20, v12

    move/from16 v12, v19

    .end local v12    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .local v20, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    move-object/from16 v19, v13

    move v13, v0

    .end local v13    # "bitmapFile":Ljava/io/File;
    .local v19, "bitmapFile":Ljava/io/File;
    :try_start_d2
    invoke-direct/range {v4 .. v13}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/graphics/GraphicBuffer;ILandroid/graphics/Rect;ZFZIIZ)V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d6

    .line 90
    return-object v17

    .line 95
    .end local v16    # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v18    # "bytes":[B
    .end local v20    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .end local v21    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "bitmap":Landroid/graphics/Bitmap;
    :catch_d6
    move-exception v0

    goto :goto_db

    .end local v19    # "bitmapFile":Ljava/io/File;
    .restart local v13    # "bitmapFile":Ljava/io/File;
    :catch_d8
    move-exception v0

    move-object/from16 v19, v13

    .line 96
    .end local v13    # "bitmapFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "bitmapFile":Ljava/io/File;
    :goto_db
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load task snapshot data for taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v15

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    .end local v19    # "bitmapFile":Ljava/io/File;
    .restart local v13    # "bitmapFile":Ljava/io/File;
    :cond_f2
    move-object/from16 v19, v13

    .end local v13    # "bitmapFile":Ljava/io/File;
    .restart local v19    # "bitmapFile":Ljava/io/File;
    :goto_f4
    return-object v15
.end method
