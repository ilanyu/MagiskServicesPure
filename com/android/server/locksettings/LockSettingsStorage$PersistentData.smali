.class public Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentData"
.end annotation


# static fields
.field public static final NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SP:I = 0x1

.field public static final TYPE_SP_WEAVER:I = 0x2

.field static final VERSION_1:B = 0x1t

.field static final VERSION_1_HEADER_SIZE:I = 0xa


# instance fields
.field final payload:[B

.field final qualityForUi:I

.field final type:I

.field final userId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 653
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    const/4 v1, 0x0

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    sput-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-void
.end method

.method private constructor <init>(III[B)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .param p3, "qualityForUi"    # I
    .param p4, "payload"    # [B

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 663
    iput p2, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 664
    iput p3, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    .line 665
    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 666
    return-void
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .registers 10
    .param p0, "frpData"    # [B

    .line 669
    if-eqz p0, :cond_5a

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_5a

    .line 673
    :cond_6
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 675
    .local v0, "is":Ljava/io/DataInputStream;
    :try_start_10
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 676
    .local v1, "version":B
    const/4 v2, 0x1

    if-ne v1, v2, :cond_36

    .line 677
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 678
    .local v2, "type":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 679
    .local v3, "userId":I
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 680
    .local v4, "qualityForUi":I
    array-length v5, p0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    new-array v5, v5, [B

    .line 681
    .local v5, "payload":[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {p0, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 682
    new-instance v6, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;-><init>(III[B)V

    return-object v6

    .line 684
    .end local v2    # "type":I
    .end local v3    # "userId":I
    .end local v4    # "qualityForUi":I
    .end local v5    # "payload":[B
    :cond_36
    const-string v2, "LockSettingsStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown PersistentData version code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    sget-object v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4e} :catch_4f

    return-object v2

    .line 687
    .end local v1    # "version":B
    :catch_4f
    move-exception v1

    .line 688
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "LockSettingsStorage"

    const-string v3, "Could not parse PersistentData"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    sget-object v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v2

    .line 670
    .end local v0    # "is":Ljava/io/DataInputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5a
    :goto_5a
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    return-object v0
.end method

.method public static toBytes(III[B)[B
    .registers 9
    .param p0, "persistentType"    # I
    .param p1, "userId"    # I
    .param p2, "qualityForUi"    # I
    .param p3, "payload"    # [B

    .line 695
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_f

    .line 696
    if-nez p3, :cond_8

    move v0, v1

    nop

    :cond_8
    const-string v1, "TYPE_NONE must have empty payload"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 698
    const/4 v0, 0x0

    return-object v0

    .line 700
    :cond_f
    if-eqz p3, :cond_16

    array-length v2, p3

    if-lez v2, :cond_16

    move v0, v1

    nop

    :cond_16
    const-string v2, "empty payload must only be used with TYPE_NONE"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 703
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa

    array-length v3, p3

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 705
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 707
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_29
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 708
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 709
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 710
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 711
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_38} :catch_3e

    .line 714
    nop

    .line 715
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 712
    :catch_3e
    move-exception v1

    .line 713
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ByteArrayOutputStream cannot throw IOException"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
