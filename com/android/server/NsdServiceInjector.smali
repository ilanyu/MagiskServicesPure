.class public Lcom/android/server/NsdServiceInjector;
.super Ljava/lang/Object;
.source "NsdServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resolveTextRecored(Landroid/net/nsd/NsdServiceInfo;[Ljava/lang/String;)V
    .registers 6
    .param p0, "nsdServiceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p1, "cooked"    # [Ljava/lang/String;

    .line 10
    array-length v0, p1

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1b

    .line 11
    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 12
    .local v0, "txtLen":I
    const/4 v1, 0x6

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 13
    .local v1, "txtRecordBase64":[B
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 14
    .local v2, "txtRecord":[B
    array-length v3, v2

    invoke-static {v3, v2, p0}, Landroid/net/nsd/NsdServiceInfoInjector;->setTxtRecord(I[BLandroid/net/nsd/NsdServiceInfo;)V

    .line 16
    .end local v0    # "txtLen":I
    .end local v1    # "txtRecordBase64":[B
    .end local v2    # "txtRecord":[B
    :cond_1b
    return-void
.end method
