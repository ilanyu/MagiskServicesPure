.class public abstract Lcom/android/server/fingerprint/InternalEnumerateClient;
.super Lcom/android/server/fingerprint/EnumerateClient;
.source "InternalEnumerateClient.java"


# instance fields
.field private mEnrolledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownFingerprints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/util/List;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "groupId"    # I
    .param p7, "userId"    # I
    .param p8, "restricted"    # Z
    .param p9, "owner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/os/IBinder;",
            "Landroid/hardware/fingerprint/IFingerprintServiceReceiver;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;)V"
        }
    .end annotation

    .local p10, "enrolledList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    move-object v10, p0

    .line 39
    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/EnumerateClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/android/server/fingerprint/InternalEnumerateClient;->mUnknownFingerprints:Ljava/util/List;

    .line 40
    move-object/from16 v0, p10

    iput-object v0, v10, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 41
    return-void
.end method

.method private doFingerprintCleanup()V
    .registers 7

    .line 63
    iget-object v0, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    if-nez v0, :cond_5

    .line 64
    return-void

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 68
    .local v1, "f":Landroid/hardware/fingerprint/Fingerprint;
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal Enumerate: Removing dangling enrolled fingerprint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 73
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getTargetUserId()I

    move-result v5

    .line 72
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 74
    .end local v1    # "f":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_b

    .line 75
    :cond_69
    iget-object v0, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    return-void
.end method

.method private handleEnumeratedFingerprint(III)V
    .registers 12
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "matched":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 47
    iget-object v2, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 48
    iget-object v2, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 49
    const/4 v0, 0x1

    .line 50
    goto :goto_22

    .line 46
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 55
    .end local v1    # "i":I
    :cond_22
    :goto_22
    if-nez v0, :cond_39

    if-eqz p1, :cond_39

    .line 56
    new-instance v7, Landroid/hardware/fingerprint/Fingerprint;

    const-string v2, ""

    invoke-virtual {p0}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getHalDeviceId()J

    move-result-wide v5

    move-object v1, v7

    move v3, p2

    move v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 57
    .local v1, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v2, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mUnknownFingerprints:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v1    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    :cond_39
    return-void
.end method


# virtual methods
.method public getUnknownFingerprints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/server/fingerprint/InternalEnumerateClient;->mUnknownFingerprints:Ljava/util/List;

    return-object v0
.end method

.method public onEnumerationResult(III)Z
    .registers 5
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/InternalEnumerateClient;->handleEnumeratedFingerprint(III)V

    .line 86
    if-nez p3, :cond_8

    .line 87
    invoke-direct {p0}, Lcom/android/server/fingerprint/InternalEnumerateClient;->doFingerprintCleanup()V

    .line 90
    :cond_8
    if-nez p3, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
