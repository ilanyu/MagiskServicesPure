.class public Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkAgentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LingerTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
        ">;"
    }
.end annotation


# instance fields
.field public final expiryMs:J

.field public final request:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>(Landroid/net/NetworkRequest;J)V
    .registers 4
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "expiryMs"    # J

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    .line 173
    iput-wide p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    .line 174
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;)I
    .registers 6
    .param p1, "other"    # Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    .line 184
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    iget-wide v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 185
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    iget-wide v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    goto :goto_1d

    .line 186
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 184
    :goto_1d
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 167
    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->compareTo(Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 176
    instance-of v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 177
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    .line 178
    .local v0, "other":Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    if-ne v2, v3, :cond_1d

    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    iget-wide v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    const/4 v1, 0x1

    nop

    :cond_1d
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 189
    const-string v0, "%s, expires %dms"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 189
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
