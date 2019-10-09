.class Lcom/android/server/WatchdogInjector;
.super Ljava/lang/Object;
.source "WatchdogInjector.java"


# static fields
.field private static final SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final TAG:Ljava/lang/String; = "WatchdogInjector"

.field private static mMonitorThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    .line 17
    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string v1, "ActivityManager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string v1, "PowerManagerService"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string/jumbo v1, "miui.fg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needMonitorThread(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 56
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static onWatchdog(IILjava/lang/String;Ljava/io/File;)V
    .registers 5
    .param p0, "type"    # I
    .param p1, "pid"    # I
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "trace"    # Ljava/io/File;

    .line 23
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/WatchdogInjector;->onWatchdog(IILjava/lang/String;Ljava/io/File;Ljava/util/List;)V

    .line 24
    return-void
.end method

.method public static onWatchdog(IILjava/lang/String;Ljava/io/File;Ljava/util/List;)V
    .registers 14
    .param p0, "type"    # I
    .param p1, "pid"    # I
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "trace"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p4, "handlerCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Lmiui/mqsas/sdk/event/WatchdogEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/WatchdogEvent;-><init>()V

    .line 29
    .local v0, "event":Lmiui/mqsas/sdk/event/WatchdogEvent;
    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setType(I)V

    .line 30
    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setPid(I)V

    .line 31
    const-string/jumbo v1, "system_server"

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setProcessName(Ljava/lang/String;)V

    .line 32
    const-string/jumbo v1, "system_server"

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setPackageName(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setTimeStamp(J)V

    .line 34
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setSystem(Z)V

    .line 35
    invoke-virtual {v0, p2}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setSummary(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p2}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setDetails(Ljava/lang/String;)V

    .line 37
    if-eqz p3, :cond_31

    .line 38
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setLogName(Ljava/lang/String;)V

    .line 40
    :cond_31
    if-eqz p4, :cond_73

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v1, "details":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    move v3, v2

    .line 42
    .local v3, "i":I
    :goto_3a
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6c

    .line 43
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v4}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 44
    .local v4, "st":[Ljava/lang/StackTraceElement;
    array-length v5, v4

    move v6, v2

    :goto_50
    if-ge v6, v5, :cond_64

    aget-object v7, v4, v6

    .line 45
    .local v7, "element":Ljava/lang/StackTraceElement;
    const-string v8, "    at "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .end local v7    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    .line 47
    :cond_64
    const-string v5, "\n\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .end local v4    # "st":[Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 49
    .end local v3    # "i":I
    :cond_6c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setDetails(Ljava/lang/String;)V

    .line 51
    .end local v1    # "details":Ljava/lang/StringBuilder;
    :cond_73
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    .line 52
    return-void
.end method
