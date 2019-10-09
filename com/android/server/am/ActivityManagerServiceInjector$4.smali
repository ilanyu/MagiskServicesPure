.class Lcom/android/server/am/ActivityManagerServiceInjector$4;
.super Landroid/os/FileObserver;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;->dumpAppTrace(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I

    .line 1149
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onEvent(ILjava/lang/String;)V
    .registers 3
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 1152
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1153
    monitor-exit p0

    return-void

    .line 1151
    .end local p1    # "event":I
    .end local p2    # "path":Ljava/lang/String;
    :catchall_6
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerServiceInjector$4;
    throw p1
.end method
