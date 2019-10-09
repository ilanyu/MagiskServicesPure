.class public Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandbyUpdateRecord"
.end annotation


# instance fields
.field bucket:I

.field isUserInteraction:Z

.field packageName:Ljava/lang/String;

.field reason:I

.field userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIZ)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "reason"    # I
    .param p5, "isInteraction"    # Z

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    .line 281
    iput p2, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    .line 282
    iput p3, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    .line 283
    iput p4, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    .line 284
    iput-boolean p5, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    .line 285
    return-void
.end method

.method public static obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    .registers 14
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "bucket"    # I
    .param p3, "reason"    # I
    .param p4, "isInteraction"    # Z

    .line 289
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 290
    :try_start_3
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 291
    .local v1, "size":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_19

    .line 292
    new-instance v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-object v3, v2

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;-><init>(Ljava/lang/String;IIIZ)V

    monitor-exit v0

    return-object v2

    .line 294
    :cond_19
    sget-object v2, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    .line 295
    .local v2, "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    iput-object p0, v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    .line 296
    iput p1, v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    .line 297
    iput p2, v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    .line 298
    iput p3, v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    .line 299
    iput-boolean p4, v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    .line 300
    monitor-exit v0

    return-object v2

    .line 301
    .end local v1    # "size":I
    .end local v2    # "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 3

    .line 305
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 306
    :try_start_3
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    monitor-exit v0

    .line 308
    return-void

    .line 307
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
