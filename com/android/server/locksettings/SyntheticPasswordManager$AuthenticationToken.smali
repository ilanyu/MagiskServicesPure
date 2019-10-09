.class Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationToken"
.end annotation


# instance fields
.field private E0:[B

.field private P1:[B

.field private syntheticPassword:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 138
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "x1"    # [B

    .line 138
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 138
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "x1"    # [B

    .line 138
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 138
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p1, "x1"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object p1
.end method

.method protected static create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 3

    .line 188
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>()V

    .line 189
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    .line 190
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    .line 189
    invoke-direct {v0, v2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    .line 191
    return-object v0
.end method

.method private initialize([B[B)V
    .registers 6
    .param p1, "P0"    # [B
    .param p2, "P1"    # [B

    .line 175
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    .line 176
    nop

    .line 178
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$500()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 177
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 176
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 180
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$600()[B

    move-result-object v1

    .line 179
    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    .line 181
    return-void
.end method


# virtual methods
.method public computeP0()[B
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    if-nez v0, :cond_6

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$600()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveDiskEncryptionKey()[B
    .registers 5

    .line 160
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$200()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    .line 161
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 160
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveGkPassword()[B
    .registers 5

    .line 155
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$100()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 155
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeyStorePassword()Ljava/lang/String;
    .registers 5

    .line 151
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$000()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 150
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public derivePasswordHashFactor()[B
    .registers 5

    .line 170
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$400()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    .line 171
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 170
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveVendorAuthSecret()[B
    .registers 5

    .line 165
    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$300()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 165
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public recreate([B)V
    .registers 3
    .param p1, "secret"    # [B

    .line 184
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    .line 185
    return-void
.end method
