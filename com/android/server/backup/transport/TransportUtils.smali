.class public Lcom/android/server/backup/transport/TransportUtils;
.super Ljava/lang/Object;
.source "TransportUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/transport/TransportUtils$Priority;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransportUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTransportNotNull(Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;
    .registers 4
    .param p0, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;
        }
    .end annotation

    .line 40
    if-eqz p0, :cond_3

    .line 44
    return-object p0

    .line 41
    :cond_3
    const/4 v0, 0x6

    const-string v1, "TransportUtils"

    const-string v2, "Transport not available"

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/android/server/backup/transport/TransportNotAvailableException;

    invoke-direct {v0}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    throw v0
.end method

.method static formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "string":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_f

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_f
    if-eqz p1, :cond_1e

    .line 61
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_1e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    .line 49
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 50
    :cond_7
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_10
    :goto_10
    return-void
.end method
