.class public Lcom/android/server/am/AssistDataRequester;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "AssistDataRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
    }
.end annotation


# static fields
.field public static final KEY_RECEIVER_EXTRA_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_RECEIVER_EXTRA_INDEX:Ljava/lang/String; = "index"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAssistData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssistScreenshot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

.field private mCallbacksLock:Ljava/lang/Object;

.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mPendingDataCount:I

.field private mPendingScreenshotCount:I

.field private mRequestScreenshotAppOps:I

.field private mRequestStructureAppOps:I

.field private mService:Landroid/app/IActivityManager;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IActivityManager;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p5, "callbacks"    # Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
    .param p6, "callbacksLock"    # Ljava/lang/Object;
    .param p7, "requestStructureAppOps"    # I
    .param p8, "requestScreenshotAppOps"    # I

    .line 123
    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 124
    iput-object p5, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 125
    iput-object p6, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    .line 126
    iput-object p3, p0, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    .line 127
    iput-object p2, p0, Lcom/android/server/am/AssistDataRequester;->mService:Landroid/app/IActivityManager;

    .line 128
    iput-object p1, p0, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    .line 129
    iput-object p4, p0, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 130
    iput p7, p0, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    .line 131
    iput p8, p0, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    .line 132
    return-void
.end method

.method private dispatchAssistDataReceived(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "data"    # Landroid/os/Bundle;

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "activityIndex":I
    const/4 v1, 0x0

    .line 329
    .local v1, "activityCount":I
    if-eqz p1, :cond_c

    .line 330
    const-string/jumbo v2, "receiverExtras"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 331
    .local v2, "receiverExtras":Landroid/os/Bundle;
    :goto_d
    if-eqz v2, :cond_1b

    .line 332
    const-string v3, "index"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 333
    const-string v3, "count"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 335
    :cond_1b
    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v3, p1, v0, v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistDataReceivedLocked(Landroid/os/Bundle;II)V

    .line 336
    return-void
.end method

.method private dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 339
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V

    .line 340
    return-void
.end method

.method private flushPendingAssistData()V
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 254
    .local v0, "dataCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_18

    .line 255
    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 257
    .end local v2    # "i":I
    :cond_18
    iget-object v2, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v2, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 259
    .local v2, "screenshotsCount":I
    nop

    .local v1, "i":I
    :goto_24
    if-ge v1, v2, :cond_34

    .line 260
    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 262
    .end local v1    # "i":I
    :cond_34
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 263
    return-void
.end method

.method private tryDispatchRequestComplete()V
    .registers 2

    .line 343
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 344
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 345
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistRequestCompleted()V

    .line 347
    :cond_1d
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 281
    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 282
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 350
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDataCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 351
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 352
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingScreenshotCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 353
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAssistScreenshot="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method public getPendingDataCount()I
    .registers 2

    .line 266
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    return v0
.end method

.method public getPendingScreenshotCount()I
    .registers 2

    .line 270
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    return v0
.end method

.method public onHandleAssistData(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "data"    # Landroid/os/Bundle;

    .line 288
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_9

    .line 290
    monitor-exit v0

    return-void

    .line 292
    :cond_9
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 294
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 296
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 297
    invoke-direct {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 298
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_26

    .line 301
    :cond_21
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :goto_26
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 308
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_9

    .line 310
    monitor-exit v0

    return-void

    .line 312
    :cond_9
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 314
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 316
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    .line 318
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_26

    .line 321
    :cond_21
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :goto_26
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public processPendingAssistData()V
    .registers 1

    .line 248
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 249
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 250
    return-void
.end method

.method public requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V
    .registers 29
    .param p2, "fetchData"    # Z
    .param p3, "fetchScreenshot"    # Z
    .param p4, "allowFetchData"    # Z
    .param p5, "allowFetchScreenshot"    # Z
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;ZZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p1, "activityTokens":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    move-object/from16 v8, p0

    move/from16 v9, p6

    .line 157
    move-object/from16 v10, p7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 160
    return-void

    .line 164
    :cond_10
    const/4 v11, 0x0

    move v1, v11

    .line 166
    .local v1, "isAssistDataAllowed":Z
    :try_start_12
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mService:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_1a

    move v1, v0

    .line 169
    goto :goto_1b

    .line 167
    :catch_1a
    move-exception v0

    .line 170
    .end local v1    # "isAssistDataAllowed":Z
    .local v12, "isAssistDataAllowed":Z
    :goto_1b
    move v12, v1

    and-int v13, p4, v12

    .line 171
    .end local p4    # "allowFetchData":Z
    .local v13, "allowFetchData":Z
    const/4 v14, 0x1

    if-eqz p2, :cond_2a

    if-eqz v12, :cond_2a

    iget v0, v8, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    move v0, v14

    goto :goto_2b

    :cond_2a
    move v0, v11

    :goto_2b
    and-int v15, p5, v0

    .line 174
    .end local p5    # "allowFetchScreenshot":Z
    .local v15, "allowFetchScreenshot":Z
    iput-boolean v11, v8, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 175
    iput v11, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 176
    iput v11, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 177
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    const/4 v7, 0x0

    if-eqz p2, :cond_d8

    .line 181
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, v8, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    invoke-virtual {v0, v1, v9, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c4

    if-eqz v13, :cond_c4

    .line 183
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    .line 184
    .local v6, "numActivities":I
    move v0, v11

    .local v0, "i":I
    :goto_51
    move v4, v0

    .end local v0    # "i":I
    .local v4, "i":I
    if-ge v4, v6, :cond_c2

    .line 185
    move-object/from16 v3, p1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/IBinder;

    .line 187
    .local v5, "topActivity":Landroid/os/IBinder;
    :try_start_5d
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v1, "assist_with_context"

    invoke-static {v0, v1, v14}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "receiverExtras":Landroid/os/Bundle;
    const-string v1, "index"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    const-string v1, "count"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    iget-object v1, v8, Lcom/android/server/am/AssistDataRequester;->mService:Landroid/app/IActivityManager;
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_75} :catch_b5

    const/4 v2, 0x1

    if-nez v4, :cond_7b

    move/from16 v16, v14

    goto :goto_7d

    :cond_7b
    move/from16 v16, v11

    :goto_7d
    if-nez v4, :cond_82

    move/from16 v17, v14

    goto :goto_84

    :cond_82
    move/from16 v17, v11

    :goto_84
    move-object v3, v8

    move/from16 v18, v4

    move-object v4, v0

    .end local v4    # "i":I
    .local v18, "i":I
    move/from16 v19, v6

    move/from16 v6, v16

    .end local v6    # "numActivities":I
    .local v19, "numActivities":I
    move-object v11, v7

    move/from16 v7, v17

    :try_start_8f
    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 194
    iget v1, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/2addr v1, v14

    iput v1, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    goto :goto_b2

    .line 195
    :cond_9b
    if-nez v18, :cond_b2

    .line 197
    iget-object v1, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 198
    invoke-direct {v8, v11}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_ae

    .line 200
    :cond_a9
    iget-object v1, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_ae} :catch_b3

    .line 202
    :goto_ae
    const/4 v1, 0x0

    .line 203
    .end local v15    # "allowFetchScreenshot":Z
    .local v1, "allowFetchScreenshot":Z
    nop

    .line 209
    move v15, v1

    goto :goto_c3

    .line 207
    .end local v0    # "receiverExtras":Landroid/os/Bundle;
    .end local v1    # "allowFetchScreenshot":Z
    .restart local v15    # "allowFetchScreenshot":Z
    :cond_b2
    :goto_b2
    goto :goto_bb

    .line 205
    :catch_b3
    move-exception v0

    goto :goto_bb

    .end local v18    # "i":I
    .end local v19    # "numActivities":I
    .restart local v4    # "i":I
    .restart local v6    # "numActivities":I
    :catch_b5
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v6

    move-object v11, v7

    .line 184
    .end local v4    # "i":I
    .end local v5    # "topActivity":Landroid/os/IBinder;
    .end local v6    # "numActivities":I
    .restart local v18    # "i":I
    .restart local v19    # "numActivities":I
    :goto_bb
    add-int/lit8 v0, v18, 0x1

    .end local v18    # "i":I
    .local v0, "i":I
    move-object v7, v11

    move/from16 v6, v19

    const/4 v11, 0x0

    goto :goto_51

    .line 209
    .end local v0    # "i":I
    .end local v19    # "numActivities":I
    :cond_c2
    move-object v11, v7

    :goto_c3
    goto :goto_d9

    .line 211
    :cond_c4
    move-object v11, v7

    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 212
    invoke-direct {v8, v11}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_d6

    .line 214
    :cond_d1
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_d6
    const/4 v15, 0x0

    goto :goto_d9

    .line 220
    :cond_d8
    move-object v11, v7

    :goto_d9
    if-eqz p3, :cond_10c

    .line 221
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, v8, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    invoke-virtual {v0, v2, v9, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_fb

    if-eqz v15, :cond_fb

    .line 224
    :try_start_e7
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v2, "assist_with_screen"

    invoke-static {v0, v2, v14}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 225
    iget v0, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/2addr v0, v14

    iput v0, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 226
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, v8}, Landroid/view/IWindowManager;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    :try_end_f8
    .catch Landroid/os/RemoteException; {:try_start_e7 .. :try_end_f8} :catch_f9

    goto :goto_fa

    .line 227
    :catch_f9
    move-exception v0

    .line 229
    :goto_fa
    goto :goto_10c

    .line 231
    :cond_fb
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 232
    invoke-direct {v8, v11}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    goto :goto_10c

    .line 234
    :cond_107
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_10c
    :goto_10c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 241
    return-void
.end method
