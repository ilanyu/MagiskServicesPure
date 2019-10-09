.class Lcom/android/server/content/MiSyncStrategy$OfficialStrategy;
.super Ljava/lang/Object;
.source "MiSyncStrategy.java"

# interfaces
.implements Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/MiSyncStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OfficialStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/MiSyncStrategy$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/content/MiSyncStrategy$1;

    .line 168
    invoke-direct {p0}, Lcom/android/server/content/MiSyncStrategy$OfficialStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;Landroid/app/job/JobInfo$Builder;)V
    .registers 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "builder"    # Landroid/app/job/JobInfo$Builder;

    .line 173
    return-void
.end method

.method public isAllowedToRun(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "syncOperation"    # Lcom/android/server/content/SyncOperation;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 177
    const/4 v0, 0x1

    return v0
.end method
