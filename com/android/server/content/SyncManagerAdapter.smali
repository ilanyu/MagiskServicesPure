.class Lcom/android/server/content/SyncManagerAdapter;
.super Ljava/lang/Object;
.source "SyncManagerAdapter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postScheduleSyncMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .registers 4
    .param p0, "manager"    # Lcom/android/server/content/SyncManager;
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "delay"    # J

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    .line 8
    return-void
.end method
