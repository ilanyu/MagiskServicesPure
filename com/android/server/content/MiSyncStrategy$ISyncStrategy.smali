.class interface abstract Lcom/android/server/content/MiSyncStrategy$ISyncStrategy;
.super Ljava/lang/Object;
.source "MiSyncStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/MiSyncStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ISyncStrategy"
.end annotation


# virtual methods
.method public abstract apply(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;Landroid/app/job/JobInfo$Builder;)V
.end method

.method public abstract isAllowedToRun(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;)Z
.end method
