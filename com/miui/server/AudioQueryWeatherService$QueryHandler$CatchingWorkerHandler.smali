.class public Lcom/miui/server/AudioQueryWeatherService$QueryHandler$CatchingWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "AudioQueryWeatherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/AudioQueryWeatherService$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;


# direct methods
.method public constructor <init>(Lcom/miui/server/AudioQueryWeatherService$QueryHandler;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$1"    # Lcom/miui/server/AudioQueryWeatherService$QueryHandler;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 329
    iput-object p1, p0, Lcom/miui/server/AudioQueryWeatherService$QueryHandler$CatchingWorkerHandler;->this$1:Lcom/miui/server/AudioQueryWeatherService$QueryHandler;

    .line 330
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 331
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 337
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_3} :catch_16
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_3} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_3} :catch_4

    .line 344
    :goto_3
    goto :goto_1f

    .line 342
    :catch_4
    move-exception v0

    .line 343
    .local v0, "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v1, "AudioQueryWeatherService"

    const-string v2, "Exception on background"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    goto :goto_1f

    .line 340
    :catch_d
    move-exception v0

    .line 341
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "AudioQueryWeatherService"

    const-string v2, "Exception worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_3

    .line 338
    :catch_16
    move-exception v0

    .line 339
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v1, "AudioQueryWeatherService"

    const-string v2, "Exception background worker thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    goto :goto_3

    .line 345
    :goto_1f
    return-void
.end method
