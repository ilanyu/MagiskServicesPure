.class final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field duration:I

.field mode:I

.field final op:I

.field final packageName:Ljava/lang/String;

.field proxyPackageName:Ljava/lang/String;

.field proxyUid:I

.field rejectTime:[J

.field startNesting:I

.field startRealtime:J

.field time:[J

.field final uid:I

.field final uidState:Lcom/android/server/AppOpsService$UidState;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService$UidState;Ljava/lang/String;I)V
    .registers 6
    .param p1, "_uidState"    # Lcom/android/server/AppOpsService$UidState;
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_op"    # I

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 464
    const/4 v0, 0x6

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/AppOpsService$Op;->time:[J

    .line 465
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    .line 470
    iput-object p1, p0, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 471
    iget v0, p1, Lcom/android/server/AppOpsService$UidState;->uid:I

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 472
    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 473
    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    .line 474
    iget v0, p0, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 475
    return-void
.end method


# virtual methods
.method getMode()I
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/android/server/AppOpsService$Op;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v1, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$UidState;->evalMode(I)I

    move-result v0

    return v0
.end method

.method hasAnyTime()Z
    .registers 9

    .line 478
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1d

    .line 479
    iget-object v2, p0, Lcom/android/server/AppOpsService$Op;->time:[J

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_11

    .line 480
    return v3

    .line 482
    :cond_11
    iget-object v2, p0, Lcom/android/server/AppOpsService$Op;->rejectTime:[J

    aget-wide v6, v2, v1

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1a

    .line 483
    return v3

    .line 478
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 486
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method
