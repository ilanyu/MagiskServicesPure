.class public Lcom/android/server/locksettings/SyntheticPasswordManager;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    }
.end annotation


# static fields
.field public static final DEFAULT_HANDLE:J = 0x0L

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default-password"

.field private static final INVALID_WEAVER_SLOT:I = -0x1

.field private static final PASSWORD_DATA_NAME:Ljava/lang/String; = "pwd"

.field private static final PASSWORD_SALT_LENGTH:I = 0x10

.field private static final PASSWORD_SCRYPT_N:I = 0xb

.field private static final PASSWORD_SCRYPT_P:I = 0x1

.field private static final PASSWORD_SCRYPT_R:I = 0x3

.field private static final PASSWORD_TOKEN_LENGTH:I = 0x20

.field private static final PERSONALISATION_SECDISCARDABLE:[B

.field private static final PERSONALISATION_WEAVER_KEY:[B

.field private static final PERSONALISATION_WEAVER_PASSWORD:[B

.field private static final PERSONALISATION_WEAVER_TOKEN:[B

.field private static final PERSONALIZATION_AUTHSECRET_KEY:[B

.field private static final PERSONALIZATION_E0:[B

.field private static final PERSONALIZATION_FBE_KEY:[B

.field private static final PERSONALIZATION_KEY_STORE_PASSWORD:[B

.field private static final PERSONALIZATION_PASSWORD_HASH:[B

.field private static final PERSONALIZATION_SP_GK_AUTH:[B

.field private static final PERSONALIZATION_SP_SPLIT:[B

.field private static final PERSONALIZATION_USER_GK_AUTH:[B

.field private static final SECDISCARDABLE_LENGTH:I = 0x4000

.field private static final SECDISCARDABLE_NAME:Ljava/lang/String; = "secdis"

.field private static final SP_BLOB_NAME:Ljava/lang/String; = "spblob"

.field private static final SP_E0_NAME:Ljava/lang/String; = "e0"

.field private static final SP_HANDLE_NAME:Ljava/lang/String; = "handle"

.field private static final SP_P1_NAME:Ljava/lang/String; = "p1"

.field private static final SYNTHETIC_PASSWORD_LENGTH:B = 0x20t

.field private static final SYNTHETIC_PASSWORD_PASSWORD_BASED:B = 0x0t

.field private static final SYNTHETIC_PASSWORD_TOKEN_BASED:B = 0x1t

.field private static final SYNTHETIC_PASSWORD_VERSION:B = 0x2t

.field private static final SYNTHETIC_PASSWORD_VERSION_V1:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "SyntheticPasswordManager"

.field private static final WEAVER_SLOT_NAME:Ljava/lang/String; = "weaver"

.field private static final WEAVER_VERSION:B = 0x1t

.field protected static final hexArray:[C


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

.field private mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

.field private tokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 119
    const-string/jumbo v0, "secdiscardable-transform"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    .line 120
    const-string/jumbo v0, "keystore-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 121
    const-string/jumbo v0, "user-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    .line 122
    const-string/jumbo v0, "sp-gk-authentication"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 123
    const-string v0, "fbe-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 124
    const-string v0, "authsecret-hal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    .line 125
    const-string/jumbo v0, "sp-split"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    .line 126
    const-string/jumbo v0, "pw-hash"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    .line 127
    const-string v0, "e0-encryption"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    .line 128
    const-string/jumbo v0, "weaver-pwd"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    .line 129
    const-string/jumbo v0, "weaver-key"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    .line 130
    const-string/jumbo v0, "weaver-token"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    .line 1174
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/android/server/locksettings/LockSettingsStorage;
    .param p3, "userManager"    # Landroid/os/UserManager;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 281
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 282
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 283
    iput-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 284
    return-void
.end method

.method static synthetic access$000()[B
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    return-object v0
.end method

.method static synthetic access$100()[B
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    return-object v0
.end method

.method static synthetic access$200()[B
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    return-object v0
.end method

.method static synthetic access$300()[B
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    return-object v0
.end method

.method static synthetic access$400()[B
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    return-object v0
.end method

.method static synthetic access$500()[B
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    return-object v0
.end method

.method static synthetic access$600()[B
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    return-object v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .line 1176
    if-nez p0, :cond_6

    .line 1177
    const-string/jumbo v0, "null"

    return-object v0

    .line 1179
    :cond_6
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 1180
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .line 1180
    .local v1, "j":I
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_2c

    .line 1181
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 1182
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1183
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1180
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1185
    .end local v1    # "j":I
    :cond_2c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private computePasswordToken(Ljava/lang/String;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 1131
    iget-object v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    const/4 v1, 0x1

    shl-int v3, v1, v0

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    shl-int v4, v1, v0

    iget-byte v0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    shl-int v5, v1, v0

    const/16 v6, 0x20

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->scrypt(Ljava/lang/String;[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private createSecdiscardable(JI)[B
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1063
    const/16 v0, 0x4000

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v0

    .line 1064
    .local v0, "data":[B
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 1065
    return-object v0
.end method

.method private createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V
    .registers 21
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p5, "applicationId"    # [B
    .param p6, "sid"    # J
    .param p8, "userId"    # I

    move v0, p3

    .line 798
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 799
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->computeP0()[B

    move-result-object v2

    .line 801
    .local v5, "secret":[B
    :goto_8
    move-object v5, v2

    goto :goto_13

    .line 801
    .end local v5    # "secret":[B
    :cond_a
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$900(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    goto :goto_8

    .line 803
    .restart local v5    # "secret":[B
    :goto_13
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v2

    .line 804
    .local v2, "content":[B
    array-length v3, v2

    add-int/2addr v3, v1

    add-int/2addr v3, v1

    new-array v3, v3, [B

    .line 805
    .local v3, "blob":[B
    const/4 v4, 0x2

    const/4 v6, 0x0

    aput-byte v4, v3, v6

    .line 806
    aput-byte v0, v3, v1

    .line 807
    array-length v1, v2

    invoke-static {v2, v6, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 808
    const-string/jumbo v7, "spblob"

    move-object v6, p0

    move-object v8, v3

    move-wide v9, p1

    move/from16 v11, p8

    invoke-direct/range {v6 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 809
    return-void
.end method

.method private destroyState(Ljava/lang/String;JI)V
    .registers 6
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1089
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteSyntheticPasswordState(IJLjava/lang/String;)V

    .line 1090
    return-void
.end method

.method private destroySyntheticPassword(JI)V
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1037
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1038
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 1039
    const-string/jumbo v0, "weaver"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1040
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 1042
    :cond_19
    return-void
.end method

.method private destroyWeaverSlot(JI)V
    .registers 9
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 542
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v0

    .line 543
    .local v0, "slot":I
    const-string/jumbo v1, "weaver"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 544
    const/4 v1, -0x1

    if-eq v0, v1, :cond_65

    .line 545
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    .line 546
    .local v1, "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 547
    const-string v2, "SyntheticPasswordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroy weaver slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v2, 0x0

    :try_start_3a
    invoke-direct {p0, v0, v2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 552
    .end local v1    # "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_3d
    goto :goto_65

    .line 550
    .restart local v1    # "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_3e
    move-exception v2

    .line 551
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SyntheticPasswordManager"

    const-string v4, "Failed to destroy slot"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_3d

    .line 554
    :cond_47
    const-string v2, "SyntheticPasswordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip destroying reused weaver slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .end local v1    # "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_65
    :goto_65
    return-void
.end method

.method private fakeUid(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 1114
    const v0, 0x186a0

    add-int/2addr v0, p1

    return v0
.end method

.method protected static fromByteArrayList(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 1167
    .local p0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 1168
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 1169
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1171
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method public static generateHandle()J
    .registers 5

    .line 1105
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1108
    .local v0, "rng":Ljava/security/SecureRandom;
    :cond_5
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 1109
    .local v1, "result":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    .line 1110
    return-wide v1
.end method

.method private getHandleName(J)Ljava/lang/String;
    .registers 7
    .param p1, "handle"    # J

    .line 1127
    const-string v0, "%s%x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "synthetic_password_"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNextAvailableWeaverSlot()I
    .registers 4

    .line 583
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v0

    .line 584
    .local v0, "usedSlots":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge v1, v2, :cond_19

    .line 585
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 586
    return v1

    .line 584
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 589
    .end local v1    # "i":I
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Run out of weaver slots."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getUsedWeaverSlots()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "weaver"

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 572
    .local v0, "slotHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 573
    .local v1, "slots":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 574
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 575
    .local v5, "handle":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v6

    .line 576
    .local v6, "slot":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 577
    .end local v5    # "handle":Ljava/lang/Long;
    .end local v6    # "slot":I
    goto :goto_2c

    .line 578
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    :cond_52
    goto :goto_16

    .line 579
    :cond_53
    return-object v1
.end method

.method private hasState(Ljava/lang/String;JI)Z
    .registers 6
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1077
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private declared-synchronized isWeaverAvailable()Z
    .registers 2

    monitor-enter p0

    .line 320
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-nez v0, :cond_8

    .line 322
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    .line 324
    :cond_8
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    monitor-exit p0

    return v0

    .line 319
    :catchall_17
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/locksettings/SyntheticPasswordManager;
    throw v0
.end method

.method public static synthetic lambda$initWeaverService$0(Lcom/android/server/locksettings/SyntheticPasswordManager;ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "config"    # Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 305
    if-nez p1, :cond_9

    iget v0, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-lez v0, :cond_9

    .line 306
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    goto :goto_2c

    .line 308
    :cond_9
    const-string v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get weaver config, status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slots: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 312
    :goto_2c
    return-void
.end method

.method static synthetic lambda$weaverVerify$1([Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .registers 7
    .param p0, "response"    # [Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p1, "slot"    # I
    .param p2, "status"    # I
    .param p3, "readResponse"    # Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    .line 373
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_b8

    .line 396
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p0, v0

    .line 397
    const-string v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read unknown status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b5

    .line 379
    :pswitch_29
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v2, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {v1, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object v1, p0, v0

    .line 380
    const-string v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (THROTTLE), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    goto :goto_b5

    .line 383
    :pswitch_4a
    iget v1, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    if-nez v1, :cond_6a

    .line 384
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p0, v0

    .line 385
    const-string v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (INCORRECT_KEY), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5

    .line 387
    :cond_6a
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v2, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-direct {v1, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    aput-object v1, p0, v0

    .line 388
    const-string v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (INCORRECT_KEY/THROTTLE), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    goto :goto_b5

    .line 392
    :pswitch_8b
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object v1, p0, v0

    .line 393
    const-string v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "weaver read failed (FAILED), slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    goto :goto_b5

    .line 375
    :pswitch_a7
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget-object v2, p3, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    .line 376
    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fromByteArrayList(Ljava/util/ArrayList;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    aput-object v1, p0, v0

    .line 377
    nop

    .line 400
    :goto_b5
    return-void

    nop

    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_8b
        :pswitch_4a
        :pswitch_29
    .end packed-switch
.end method

.method private loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 6
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 498
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    # setter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B
    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$702(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B

    .line 499
    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    # setter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B
    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$802(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B

    .line 500
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$700(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v0

    if-eqz v0, :cond_23

    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$800(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method private loadSecdiscardable(JI)[B
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1073
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadState(Ljava/lang/String;JI)[B
    .registers 6
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 1081
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private loadSyntheticPasswordHandle(I)[B
    .registers 5
    .param p1, "userId"    # I

    .line 490
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadWeaverSlot(JI)I
    .registers 11
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 519
    const/4 v0, 0x5

    .line 520
    .local v0, "LENGTH":I
    const-string/jumbo v1, "weaver"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    .line 521
    .local v1, "data":[B
    const/4 v2, -0x1

    if-eqz v1, :cond_3f

    array-length v3, v1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_10

    goto :goto_3f

    .line 524
    :cond_10
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 525
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 526
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 527
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3a

    .line 528
    const-string v4, "SyntheticPasswordManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid weaver slot version of handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return v2

    .line 531
    :cond_3a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    return v2

    .line 522
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_3f
    :goto_3f
    return v2
.end method

.method private passwordTokenToGkInput([B)[B
    .registers 5
    .param p1, "token"    # [B

    .line 1136
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method private passwordTokenToWeaverKey([B)[B
    .registers 5
    .param p1, "token"    # [B

    .line 1140
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1141
    .local v0, "key":[B
    array-length v1, v0

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-lt v1, v2, :cond_1c

    .line 1144
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 1142
    :cond_1c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "weaver key length too small"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 14
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 504
    const-string v1, "e0"

    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$700(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v2

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 505
    const-string/jumbo v6, "p1"

    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$800(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v7

    const-wide/16 v8, 0x0

    move-object v5, p0

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 506
    return-void
.end method

.method private saveSecdiscardable(J[BI)V
    .registers 11
    .param p1, "handle"    # J
    .param p3, "secdiscardable"    # [B
    .param p4, "userId"    # I

    .line 1069
    const-string/jumbo v1, "secdis"

    move-object v0, p0

    move-object v2, p3

    move-wide v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1070
    return-void
.end method

.method private saveState(Ljava/lang/String;[BJI)V
    .registers 12
    .param p1, "stateName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "handle"    # J
    .param p5, "userId"    # I

    .line 1085
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move v1, p5

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsStorage;->writeSyntheticPasswordState(IJLjava/lang/String;[B)V

    .line 1086
    return-void
.end method

.method private saveSyntheticPasswordHandle([BI)V
    .registers 9
    .param p1, "spHandle"    # [B
    .param p2, "userId"    # I

    .line 494
    const-string v1, "handle"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 495
    return-void
.end method

.method private saveWeaverSlot(IJI)V
    .registers 13
    .param p1, "slot"    # I
    .param p2, "handle"    # J
    .param p4, "userId"    # I

    .line 535
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 536
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 537
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 538
    const-string/jumbo v3, "weaver"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 539
    return-void
.end method

.method protected static secureRandom(I)[B
    .registers 3
    .param p0, "length"    # I

    .line 1119
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1120
    :catch_b
    move-exception v0

    .line 1121
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1122
    const/4 v1, 0x0

    return-object v1
.end method

.method private synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V
    .registers 7
    .param p1, "pwd"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .param p2, "requestedQuality"    # I
    .param p3, "userId"    # I

    .line 701
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 703
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 702
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 704
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 705
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x1

    .line 706
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    .line 705
    invoke-virtual {v0, v1, p3, p2, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_2d

    .line 708
    :cond_26
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 711
    :cond_2d
    :goto_2d
    return-void
.end method

.method private synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V
    .registers 8
    .param p1, "pwd"    # Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .param p2, "requestedQuality"    # I
    .param p3, "userId"    # I
    .param p4, "weaverSlot"    # I

    .line 715
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 717
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 716
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 718
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 719
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x2

    .line 720
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    .line 719
    invoke-virtual {v0, v1, p4, p2, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_2d

    .line 722
    :cond_26
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 725
    :cond_2d
    :goto_2d
    return-void
.end method

.method protected static toByteArrayList([B)Ljava/util/ArrayList;
    .registers 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1159
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1160
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 1161
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1163
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method private transformUnderSecdiscardable([B[B)[B
    .registers 8
    .param p1, "data"    # [B
    .param p2, "rawSecdiscardable"    # [B

    .line 1054
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1056
    .local v0, "secdiscardable":[B
    array-length v1, p1

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 1057
    .local v1, "result":[B
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1058
    array-length v3, p1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1059
    return-object v1
.end method

.method private transformUnderWeaverSecret([B[B)[B
    .registers 8
    .param p1, "data"    # [B
    .param p2, "secret"    # [B

    .line 1045
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 1047
    .local v0, "weaverSecret":[B
    array-length v1, p1

    array-length v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 1048
    .local v1, "result":[B
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1049
    array-length v3, p1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1050
    return-object v1
.end method

.method private unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 27
    .param p1, "handle"    # J
    .param p3, "type"    # B
    .param p4, "applicationId"    # [B
    .param p5, "sid"    # J
    .param p7, "userId"    # I

    move-object/from16 v9, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    .line 938
    move/from16 v12, p7

    const-string/jumbo v0, "spblob"

    move-wide/from16 v13, p1

    invoke-direct {v9, v0, v13, v14, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v15

    .line 939
    .local v15, "blob":[B
    const/4 v0, 0x0

    if-nez v15, :cond_15

    .line 940
    return-object v0

    .line 942
    :cond_15
    const/4 v1, 0x0

    aget-byte v8, v15, v1

    .line 943
    .local v8, "version":B
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v8, v1, :cond_27

    if-ne v8, v2, :cond_1f

    goto :goto_27

    .line 944
    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown blob version"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_27
    :goto_27
    aget-byte v3, v15, v2

    if-ne v3, v10, :cond_cc

    .line 950
    if-ne v8, v2, :cond_3b

    .line 951
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v3

    array-length v4, v15

    .line 952
    invoke-static {v15, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 951
    invoke-static {v3, v1, v11}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v1

    .line 951
    .local v1, "secret":[B
    goto :goto_48

    .line 954
    .end local v1    # "secret":[B
    :cond_3b
    invoke-direct/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v3

    array-length v4, v15

    .line 955
    invoke-static {v15, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 954
    invoke-virtual {v9, v3, v1, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[B)[B

    move-result-object v1

    .line 954
    .restart local v1    # "secret":[B
    :goto_48
    move-object v6, v1

    .line 957
    .end local v1    # "secret":[B
    .local v6, "secret":[B
    if-nez v6, :cond_62

    .line 958
    const-string v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to decrypt SP for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return-object v0

    .line 961
    :cond_62
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>()V

    move-object v7, v1

    .line 962
    .local v7, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-ne v10, v2, :cond_8b

    .line 963
    invoke-direct {v9, v7, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v1

    if-nez v1, :cond_87

    .line 964
    const-string v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User is not escrowable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return-object v0

    .line 967
    :cond_87
    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreate([B)V

    goto :goto_93

    .line 969
    :cond_8b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    # setter for: Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->access$902(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;

    .line 971
    :goto_93
    if-ne v8, v2, :cond_c5

    .line 972
    const-string v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade v1 SP blob for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    move-object v0, v9

    move-wide v1, v13

    move v3, v10

    move-object v4, v7

    move-object v5, v11

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-wide/from16 v6, p5

    .line 973
    .end local v6    # "secret":[B
    .end local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .local v16, "secret":[B
    .local v17, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    move/from16 v18, v8

    move v8, v12

    .line 973
    .end local v8    # "version":B
    .local v18, "version":B
    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    goto :goto_cb

    .line 975
    .end local v16    # "secret":[B
    .end local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v18    # "version":B
    .restart local v6    # "secret":[B
    .restart local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v8    # "version":B
    :cond_c5
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v18, v8

    .line 975
    .end local v6    # "secret":[B
    .end local v7    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v8    # "version":B
    .restart local v16    # "secret":[B
    .restart local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v18    # "version":B
    :goto_cb
    return-object v17

    .line 947
    .end local v16    # "secret":[B
    .end local v17    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v18    # "version":B
    .restart local v8    # "version":B
    :cond_cc
    move/from16 v18, v8

    .line 947
    .end local v8    # "version":B
    .restart local v18    # "version":B
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid blob type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private weaverEnroll(I[B[B)[B
    .registers 8
    .param p1, "slot"    # I
    .param p2, "key"    # [B
    .param p3, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    const/4 v0, -0x1

    if-eq p1, v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v0, :cond_5d

    .line 340
    if-nez p2, :cond_12

    .line 341
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v0, [B

    goto :goto_19

    .line 342
    :cond_12
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v0, v1, :cond_55

    .line 345
    :goto_19
    if-nez p3, :cond_23

    .line 346
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object p3

    .line 348
    :cond_23
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/hardware/weaver/V1_0/IWeaver;->write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    .line 349
    .local v0, "writeStatus":I
    if-eqz v0, :cond_54

    .line 350
    const-string v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "weaver write failed, slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v1, 0x0

    return-object v1

    .line 353
    :cond_54
    return-object p3

    .line 343
    .end local v0    # "writeStatus":I
    :cond_55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid key size for weaver"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_5d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid slot for weaver"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7
    .param p1, "slot"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    const/4 v0, -0x1

    if-eq p1, v0, :cond_36

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v0, :cond_36

    .line 366
    if-nez p2, :cond_12

    .line 367
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, v0, [B

    goto :goto_19

    .line 368
    :cond_12
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v1, v1, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v0, v1, :cond_2e

    .line 371
    :goto_19
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 372
    .local v0, "response":[Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;

    invoke-direct {v3, v0, p1}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$aWnbfYziDTrRrLqWFePMTj6-dy0;-><init>([Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    invoke-interface {v1, p1, v2, v3}, Landroid/hardware/weaver/V1_0/IWeaver;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V

    .line 401
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 369
    .end local v0    # "response":[Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid key size for weaver"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid slot for weaver"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 16
    .param p1, "handle"    # J
    .param p3, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p4, "userId"    # I

    .line 766
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 767
    return v1

    .line 769
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    .line 770
    .local v0, "tokenData":Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
    if-nez v0, :cond_27

    .line 771
    return v1

    .line 773
    :cond_27
    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    if-nez v2, :cond_35

    .line 774
    const-string v2, "SyntheticPasswordManager"

    const-string v3, "User is not escrowable"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return v1

    .line 777
    :cond_35
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 778
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v2

    .line 780
    .local v2, "slot":I
    :try_start_3f
    const-string v3, "SyntheticPasswordManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Weaver enroll token to slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_63} :catch_68

    .line 785
    nop

    .line 786
    invoke-direct {p0, v2, p1, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .end local v2    # "slot":I
    goto :goto_71

    .line 782
    .restart local v2    # "slot":I
    :catch_68
    move-exception v3

    .line 783
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "SyntheticPasswordManager"

    const-string v5, "Failed to enroll weaver secret when activating token"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    return v1

    .line 788
    .end local v2    # "slot":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_71
    :goto_71
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 789
    const/4 v5, 0x1

    iget-object v7, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v10, p4

    invoke-direct/range {v2 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 791
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const/4 v1, 0x1

    return v1
.end method

.method public clearSidForUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 479
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 480
    return-void
.end method

.method public createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J
    .registers 29
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "credentialType"    # I
    .param p4, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p5, "requestedQuality"    # I
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p5

    .line 608
    move/from16 v12, p6

    if-eqz p2, :cond_14

    const/4 v1, -0x1

    move/from16 v2, p3

    if-ne v2, v1, :cond_10

    goto :goto_16

    .line 613
    :cond_10
    move-object/from16 v14, p2

    move v13, v2

    goto :goto_1b

    .line 609
    :cond_14
    move/from16 v2, p3

    :goto_16
    const/4 v1, -0x1

    .line 610
    .end local p3    # "credentialType":I
    .local v1, "credentialType":I
    const-string v0, "default-password"

    .line 613
    .end local p2    # "credential":Ljava/lang/String;
    .local v0, "credential":Ljava/lang/String;
    move-object v14, v0

    move v13, v1

    .line 613
    .end local v0    # "credential":Ljava/lang/String;
    .end local v1    # "credentialType":I
    .local v13, "credentialType":I
    .local v14, "credential":Ljava/lang/String;
    :goto_1b
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v6

    .line 614
    .local v6, "handle":J
    invoke-static {v13}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v15

    .line 615
    .local v15, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {v9, v14, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v8

    .line 619
    .local v8, "pwdToken":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_87

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v0

    .line 622
    .local v0, "weaverSlot":I
    const-string v4, "SyntheticPasswordManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Weaver enroll password to slot "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-direct {v9, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v1

    invoke-direct {v9, v0, v1, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v1

    .line 624
    .local v1, "weaverSecret":[B
    if-nez v1, :cond_73

    .line 625
    const-string v2, "SyntheticPasswordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to enroll user password under weaver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-wide/16 v2, 0x0

    return-wide v2

    .line 628
    :cond_73
    invoke-direct {v9, v0, v6, v7, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 629
    invoke-direct {v9, v15, v11, v12, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    .line 631
    iput-object v3, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 632
    const-wide/16 v2, 0x0

    .line 633
    .local v2, "sid":J
    invoke-direct {v9, v8, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v0

    .line 634
    .end local v1    # "weaverSecret":[B
    .local v0, "applicationId":[B
    nop

    .line 651
    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    goto :goto_d5

    .line 637
    .end local v0    # "applicationId":[B
    .end local v2    # "sid":J
    :cond_87
    invoke-direct {v9, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 639
    invoke-direct {v9, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    .line 640
    invoke-direct {v9, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v1

    .line 639
    invoke-interface {v10, v0, v3, v3, v1}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 641
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_b9

    .line 642
    const-string v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to enroll user password when creating SP for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-wide/16 v1, 0x0

    return-wide v1

    .line 645
    :cond_b9
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 646
    iget-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v9, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v1

    .line 647
    .local v1, "sid":J
    nop

    .line 648
    invoke-direct {v9, v6, v7, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v3

    .line 647
    invoke-direct {v9, v8, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v3

    .line 649
    .local v3, "applicationId":[B
    invoke-direct {v9, v15, v11, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    .line 651
    .end local v0    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    move-wide/from16 v17, v1

    move-object/from16 v16, v3

    .line 651
    .end local v1    # "sid":J
    .end local v3    # "applicationId":[B
    .local v16, "applicationId":[B
    .local v17, "sid":J
    :goto_d5
    const-string/jumbo v1, "pwd"

    invoke-virtual {v15}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v2

    move-object v0, v9

    move-wide v3, v6

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 653
    const/4 v3, 0x0

    move-wide v1, v6

    move-object/from16 v4, p4

    move-object/from16 v5, v16

    move-wide/from16 v19, v6

    move-wide/from16 v6, v17

    .line 653
    .end local v6    # "handle":J
    .local v19, "handle":J
    move-object/from16 v21, v8

    move v8, v12

    .line 653
    .end local v8    # "pwdToken":[B
    .local v21, "pwdToken":[B
    invoke-direct/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 655
    return-wide v19
.end method

.method protected createSPBlob(Ljava/lang/String;[B[BJ)[B
    .registers 7
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "applicationId"    # [B
    .param p4, "sid"    # J

    .line 1097
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method public createTokenBasedSyntheticPassword([BI)J
    .registers 9
    .param p1, "token"    # [B
    .param p2, "userId"    # I

    .line 730
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v0

    .line 731
    .local v0, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 732
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    :cond_1e
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    invoke-direct {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;-><init>()V

    .line 735
    .local v2, "tokenData":Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
    const/16 v3, 0x4000

    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v3

    .line 736
    .local v3, "secdiscardable":[B
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 737
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v4, v4, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 738
    iget-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v4, v5, v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    goto :goto_49

    .line 741
    :cond_44
    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    .line 742
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 744
    :goto_49
    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    .line 746
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    return-wide v0
.end method

.method protected decryptSPBlob(Ljava/lang/String;[B[B)[B
    .registers 5
    .param p1, "blobKeyName"    # Ljava/lang/String;
    .param p2, "blob"    # [B
    .param p3, "applicationId"    # [B

    .line 1093
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public destroyEscrowData(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 514
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 515
    const-string/jumbo v0, "p1"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 516
    return-void
.end method

.method public destroyPasswordBasedSyntheticPassword(JI)V
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1031
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 1032
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1033
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1034
    return-void
.end method

.method protected destroySPBlobKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "keyAlias"    # Ljava/lang/String;

    .line 1101
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->destroyBlobKey(Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method public destroyTokenBasedSyntheticPassword(JI)V
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1026
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    .line 1027
    const-string/jumbo v0, "secdis"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 1028
    return-void
.end method

.method public existsHandle(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 1022
    const-string/jumbo v0, "spblob"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public getCredentialType(JI)I
    .registers 8
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 412
    const-string/jumbo v0, "pwd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    .line 413
    .local v0, "passwordData":[B
    if-nez v0, :cond_21

    .line 414
    const-string v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCredentialType: encountered empty password data for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v1, -0x1

    return v1

    .line 417
    :cond_21
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    iget v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    return v1
.end method

.method public getPendingTokensForUser(I)Ljava/util/Set;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 752
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 754
    :cond_11
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    :try_start_0
    invoke-static {}, Landroid/hardware/weaver/V1_0/IWeaver;->getService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 290
    :catch_5
    move-exception v0

    .line 291
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Device does not support weaver"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasEscrowData(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 509
    const-string v0, "e0"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "p1"

    .line 510
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 509
    :goto_16
    return v0
.end method

.method public hasSidForUser(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 483
    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized initWeaverService()V
    .registers 4

    monitor-enter p0

    .line 297
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    if-eqz v0, :cond_7

    .line 298
    monitor-exit p0

    return-void

    .line 301
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 302
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    .line 303
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v0, :cond_1e

    .line 304
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$WjMV-qfQ1YUbeAiLzyAhyepqPFI;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    invoke-interface {v0, v1}, Landroid/hardware/weaver/V1_0/IWeaver;->getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1e} :catch_1f
    .catchall {:try_start_8 .. :try_end_1e} :catchall_29

    .line 316
    :cond_1e
    goto :goto_27

    .line 314
    :catch_1f
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Failed to get weaver service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_29

    .line 317
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_27
    monitor-exit p0

    return-void

    .line 296
    :catchall_29
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/locksettings/SyntheticPasswordManager;
    throw v0
.end method

.method public migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V
    .registers 8
    .param p1, "handle"    # J
    .param p3, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p4, "requestedQuality"    # I

    .line 684
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlock()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 685
    invoke-static {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 686
    const-string/jumbo v0, "pwd"

    iget v1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 688
    .local v0, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    .line 689
    iget v1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v1

    .line 690
    .local v1, "weaverSlot":I
    if-eq v1, v2, :cond_30

    .line 691
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    goto :goto_35

    .line 693
    :cond_30
    iget v2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, p4, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    .line 697
    .end local v0    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v1    # "weaverSlot":I
    :cond_35
    :goto_35
    return-void
.end method

.method native nativeScrypt([B[BIIII)[B
.end method

.method native nativeSidFromPasswordHandle([B)J
.end method

.method public newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 8
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    nop

    .line 469
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v0

    .line 468
    const/4 v1, 0x0

    invoke-interface {p1, p3, v1, v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 470
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_27

    .line 471
    const-string v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to create new SID for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void

    .line 474
    :cond_27
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 475
    return-void
.end method

.method public newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLjava/lang/String;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 10
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "hash"    # [B
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 446
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-eqz p2, :cond_3a

    .line 447
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 448
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v2

    .line 447
    invoke-interface {p1, p4, p2, v1, v2}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    .line 449
    .local v1, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_32

    .line 450
    const-string v2, "SyntheticPasswordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to migrate SID, assuming no SID, user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    goto :goto_3d

    .line 453
    :cond_32
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v2

    invoke-direct {p0, v2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    goto :goto_3d

    .line 456
    .end local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_3a
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 458
    :goto_3d
    invoke-direct {p0, v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 459
    return-object v0
.end method

.method public removePendingToken(JI)Z
    .registers 7
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 758
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 759
    return v1

    .line 761
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    nop

    :cond_26
    return v1
.end method

.method public removeUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 405
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "spblob"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 406
    .local v1, "handle":J
    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 407
    invoke-direct {p0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getHandleName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    .line 408
    .end local v1    # "handle":J
    goto :goto_d

    .line 409
    :cond_28
    return-void
.end method

.method protected scrypt(Ljava/lang/String;[BIIII)[B
    .registers 14
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "salt"    # [B
    .param p3, "N"    # I
    .param p4, "r"    # I
    .param p5, "p"    # I
    .param p6, "outLen"    # I

    .line 1152
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeScrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method protected sidFromPasswordHandle([B)J
    .registers 4
    .param p1, "handle"    # [B

    .line 1148
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 32
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "credential"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-wide/from16 v12, p2

    move/from16 v14, p5

    .line 821
    if-nez p4, :cond_c

    .line 822
    const-string v0, "default-password"

    .line 824
    .end local p4    # "credential":Ljava/lang/String;
    .local v0, "credential":Ljava/lang/String;
    move-object v15, v0

    goto :goto_e

    .line 824
    .end local v0    # "credential":Ljava/lang/String;
    .restart local p4    # "credential":Ljava/lang/String;
    :cond_c
    move-object/from16 v15, p4

    .line 824
    .end local p4    # "credential":Ljava/lang/String;
    .local v15, "credential":Ljava/lang/String;
    :goto_e
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    move-object v10, v0

    .line 825
    .local v10, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    const-string/jumbo v0, "pwd"

    invoke-direct {v11, v0, v12, v13, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v8

    .line 826
    .local v8, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    iget v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    iput v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->credentialType:I

    .line 827
    invoke-direct {v11, v15, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v9

    .line 831
    .local v9, "pwdToken":[B
    invoke-direct {v11, v12, v13, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v7

    .line 832
    .local v7, "weaverSlot":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_66

    .line 834
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v0

    if-nez v0, :cond_40

    .line 835
    const-string v0, "SyntheticPasswordManager"

    const-string v1, "No weaver service to unwrap password based SP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 837
    return-object v10

    .line 839
    :cond_40
    invoke-direct {v11, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v0

    invoke-direct {v11, v7, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 840
    iget-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_53

    .line 841
    return-object v10

    .line 843
    :cond_53
    const-wide/16 v0, 0x0

    .line 844
    .local v0, "sid":J
    iget-object v2, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    invoke-direct {v11, v9, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v2

    .line 877
    .local v2, "applicationId":[B
    move-wide/from16 v16, v0

    move-object v4, v2

    move/from16 v23, v7

    goto/16 :goto_107

    .line 846
    .end local v0    # "sid":J
    .end local v2    # "applicationId":[B
    :cond_66
    invoke-direct {v11, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v6

    .line 847
    .local v6, "gkPwdToken":[B
    invoke-direct {v11, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v17

    const-wide/16 v18, 0x0

    iget-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v16, p1

    move-object/from16 v20, v0

    move-object/from16 v21, v6

    invoke-interface/range {v16 .. v21}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v5

    .line 849
    .local v5, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v5}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    .line 850
    .local v3, "responseCode":I
    const/4 v4, 0x1

    if-nez v3, :cond_12d

    .line 851
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 852
    invoke-virtual {v5}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 853
    invoke-direct {v11, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v0

    iget-object v1, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v2, p1

    invoke-interface {v2, v0, v1, v6, v6}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    .line 855
    .local v1, "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_ce

    .line 856
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 857
    const-string/jumbo v16, "pwd"

    invoke-virtual {v8}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v17

    move-object v0, v11

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    .line 857
    .end local v1    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .local v18, "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    move-object/from16 v2, v17

    move-object/from16 v22, v6

    move/from16 v23, v7

    move v6, v3

    move v7, v4

    move-wide v3, v12

    .line 857
    .end local v3    # "responseCode":I
    .end local v7    # "weaverSlot":I
    .local v6, "responseCode":I
    .local v22, "gkPwdToken":[B
    .local v23, "weaverSlot":I
    move-object/from16 v24, v5

    move v5, v14

    .line 857
    .end local v5    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .local v24, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 858
    nop

    .line 859
    iget v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordType:I

    if-ne v0, v7, :cond_c8

    .line 860
    const/high16 v0, 0x10000

    goto :goto_ca

    .line 861
    :cond_c8
    const/high16 v0, 0x50000

    .line 858
    :goto_ca
    invoke-direct {v11, v8, v0, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    goto :goto_ed

    .line 865
    .end local v18    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v22    # "gkPwdToken":[B
    .end local v23    # "weaverSlot":I
    .end local v24    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v1    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v3    # "responseCode":I
    .restart local v5    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .local v6, "gkPwdToken":[B
    .restart local v7    # "weaverSlot":I
    :cond_ce
    move-object/from16 v18, v1

    move-object/from16 v24, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    move v6, v3

    .line 865
    .end local v1    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v3    # "responseCode":I
    .end local v5    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v7    # "weaverSlot":I
    .local v6, "responseCode":I
    .restart local v18    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v22    # "gkPwdToken":[B
    .restart local v23    # "weaverSlot":I
    .restart local v24    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    const-string v0, "SyntheticPasswordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to re-enroll user password for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    .end local v18    # "reenrollResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_ed
    goto :goto_f5

    .line 876
    .end local v22    # "gkPwdToken":[B
    .end local v23    # "weaverSlot":I
    .end local v24    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v3    # "responseCode":I
    .restart local v5    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .local v6, "gkPwdToken":[B
    .restart local v7    # "weaverSlot":I
    :cond_ee
    move-object/from16 v24, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    move v6, v3

    .line 876
    .end local v3    # "responseCode":I
    .end local v5    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v7    # "weaverSlot":I
    .local v6, "responseCode":I
    .restart local v22    # "gkPwdToken":[B
    .restart local v23    # "weaverSlot":I
    .restart local v24    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_f5
    iget-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v11, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v0

    .line 877
    .restart local v0    # "sid":J
    nop

    .line 878
    invoke-direct {v11, v12, v13, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v2

    .line 877
    invoke-direct {v11, v9, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v2

    .line 877
    .end local v6    # "responseCode":I
    .end local v22    # "gkPwdToken":[B
    .end local v24    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    move-wide/from16 v16, v0

    move-object v4, v2

    .line 882
    .end local v0    # "sid":J
    .local v4, "applicationId":[B
    .local v16, "sid":J
    :goto_107
    if-eqz p6, :cond_10c

    .line 883
    invoke-interface/range {p6 .. p6}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    .line 885
    :cond_10c
    const/4 v3, 0x0

    move-object v0, v11

    move-wide v1, v12

    move-wide/from16 v5, v16

    move/from16 v19, v23

    move v7, v14

    .line 885
    .end local v23    # "weaverSlot":I
    .local v19, "weaverSlot":I
    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 889
    iget-object v7, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v0, 0x0

    move-object v5, v11

    move-object/from16 v6, p1

    move-object v2, v8

    move-object v3, v9

    move-wide v8, v0

    .line 889
    .end local v8    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v9    # "pwdToken":[B
    .local v2, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .local v3, "pwdToken":[B
    move-object v0, v10

    move v10, v14

    .line 889
    .end local v10    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 890
    return-object v0

    .line 869
    .end local v0    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v2    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v4    # "applicationId":[B
    .end local v16    # "sid":J
    .end local v19    # "weaverSlot":I
    .local v3, "responseCode":I
    .restart local v5    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .local v6, "gkPwdToken":[B
    .restart local v7    # "weaverSlot":I
    .restart local v8    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .restart local v9    # "pwdToken":[B
    .restart local v10    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    :cond_12d
    move-object/from16 v24, v5

    move-object/from16 v22, v6

    move/from16 v19, v7

    move-object v2, v8

    move-object v0, v10

    move v6, v3

    move v7, v4

    move-object v3, v9

    .line 869
    .end local v5    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v7    # "weaverSlot":I
    .end local v8    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v9    # "pwdToken":[B
    .end local v10    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .restart local v0    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .restart local v2    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .local v3, "pwdToken":[B
    .local v6, "responseCode":I
    .restart local v19    # "weaverSlot":I
    .restart local v22    # "gkPwdToken":[B
    .restart local v24    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-ne v6, v7, :cond_148

    .line 870
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v4, v24

    invoke-virtual {v4}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v5

    .line 870
    .end local v24    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .local v4, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-direct {v1, v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 871
    return-object v0

    .line 873
    .end local v4    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v24    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_148
    move-object/from16 v4, v24

    .line 873
    .end local v24    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v4    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 874
    return-object v0
.end method

.method public unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 23
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "handle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-wide/from16 v9, p2

    .line 901
    move/from16 v11, p5

    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    move-object v12, v0

    .line 902
    .local v12, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v0

    .line 903
    .local v0, "secdiscardable":[B
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v13

    .line 904
    .local v13, "slotId":I
    const/4 v1, -0x1

    if-eq v13, v1, :cond_52

    .line 905
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v1

    if-nez v1, :cond_29

    .line 906
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "No weaver service to unwrap token based SP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v1, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 908
    return-object v12

    .line 910
    :cond_29
    const/4 v1, 0x0

    invoke-direct {v8, v13, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 911
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_46

    .line 912
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    if-nez v2, :cond_3b

    goto :goto_46

    .line 917
    :cond_3b
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v2, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_52

    .line 913
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_46
    :goto_46
    const-string v2, "SyntheticPasswordManager"

    const-string v3, "Failed to retrieve weaver secret when unwrapping token"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v2, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 915
    return-object v12

    .line 920
    .end local v0    # "secdiscardable":[B
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v14, "secdiscardable":[B
    :cond_52
    :goto_52
    move-object v14, v0

    move-object/from16 v15, p4

    invoke-direct {v8, v15, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v16

    .line 921
    .local v16, "applicationId":[B
    const/4 v3, 0x1

    const-wide/16 v5, 0x0

    move-object v0, v8

    move-wide v1, v9

    move-object/from16 v4, v16

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 923
    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v0, :cond_82

    .line 924
    iget-object v2, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v3, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 925
    iget-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-nez v0, :cond_86

    .line 928
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_86

    .line 931
    :cond_82
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 933
    :cond_86
    :goto_86
    return-object v12
.end method

.method public verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 988
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSyntheticPasswordHandle(I)[B

    move-result-object v6

    .line 989
    .local v6, "spHandle":[B
    if-nez v6, :cond_8

    .line 992
    const/4 v0, 0x0

    return-object v0

    .line 995
    :cond_8
    nop

    .line 996
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v5

    .line 995
    move-object v0, p1

    move v1, p5

    move-wide v2, p3

    move-object v4, v6

    invoke-interface/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 997
    .local v0, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    .line 998
    .local v1, "responseCode":I
    if-nez v1, :cond_5c

    .line 999
    new-instance v2, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .line 1000
    .local v2, "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1001
    nop

    .line 1002
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v3

    .line 1001
    invoke-interface {p1, p5, v6, v6, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_45

    .line 1004
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v3

    .line 1005
    .end local v6    # "spHandle":[B
    .local v3, "spHandle":[B
    invoke-direct {p0, v3, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 1007
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    return-object v4

    .line 1009
    .end local v3    # "spHandle":[B
    .restart local v6    # "spHandle":[B
    :cond_45
    const-string v3, "SyntheticPasswordManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to re-enroll SP handle for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 1013
    .end local v2    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_5c
    const/4 v2, 0x1

    if-ne v1, v2, :cond_69

    .line 1014
    new-instance v2, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .restart local v2    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_6b

    .line 1016
    .end local v2    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_69
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1018
    .restart local v2    # "result":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_6b
    :goto_6b
    return-object v2
.end method

.method public verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15
    .param p1, "gatekeeper"    # Landroid/service/gatekeeper/IGateKeeperService;
    .param p2, "userCredential"    # Ljava/lang/String;
    .param p3, "credentialType"    # I
    .param p4, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    .line 662
    .local v0, "persistentData":Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    .line 663
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    .line 664
    .local v1, "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {p0, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v2

    .line 666
    .local v2, "pwdToken":[B
    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v5

    const-wide/16 v6, 0x0

    iget-object v8, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 667
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v9

    .line 666
    move-object v4, p1

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v3

    .line 668
    .local v3, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-static {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    return-object v4

    .line 669
    .end local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v2    # "pwdToken":[B
    .end local v3    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_2d
    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4b

    .line 670
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    .line 671
    .restart local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    invoke-direct {p0, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Ljava/lang/String;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v2

    .line 672
    .restart local v2    # "pwdToken":[B
    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 674
    .local v3, "weaverSlot":I
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    return-object v4

    .line 676
    .end local v1    # "pwd":Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .end local v2    # "pwdToken":[B
    .end local v3    # "weaverSlot":I
    :cond_4b
    const-string v1, "SyntheticPasswordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistentData.type must be TYPE_SP or TYPE_SP_WEAVER, but is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1
.end method
