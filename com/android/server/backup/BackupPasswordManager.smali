.class public final Lcom/android/server/backup/BackupPasswordManager;
.super Ljava/lang/Object;
.source "BackupPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;,
        Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;,
        Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
    }
.end annotation


# static fields
.field private static final BACKUP_PW_FILE_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PW_FILE_VERSION:I = 0x1

.field private static final PASSWORD_HASH_FILE_NAME:Ljava/lang/String; = "pwhash"

.field private static final PASSWORD_VERSION_FILE_NAME:Ljava/lang/String; = "pwversion"

.field public static final PBKDF_CURRENT:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field public static final PBKDF_FALLBACK:Ljava/lang/String; = "PBKDF2WithHmacSHA1And8bit"

.field private static final TAG:Ljava/lang/String; = "BackupPasswordManager"


# instance fields
.field private final mBaseStateDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordSalt:[B

.field private mPasswordVersion:I

.field private final mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseStateDir"    # Ljava/io/File;
    .param p3, "secureRandom"    # Ljava/security/SecureRandom;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/android/server/backup/BackupPasswordManager;->mRng:Ljava/security/SecureRandom;

    .line 74
    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    .line 75
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->loadStateFromFilesystem()V

    .line 76
    return-void
.end method

.method private clearPassword()Z
    .registers 4

    .line 163
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFile()Ljava/io/File;

    move-result-object v0

    .line 164
    .local v0, "passwordHashFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_19

    .line 165
    const-string v1, "BackupPasswordManager"

    const-string v2, "Unable to clear backup password"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v1, 0x0

    return v1

    .line 169
    :cond_19
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B

    .line 171
    const/4 v1, 0x1

    return v1
.end method

.method private getPasswordHashFile()Ljava/io/File;
    .registers 4

    .line 245
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v2, "pwhash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/backup/utils/DataStreamFileCodec<",
            "Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/android/server/backup/utils/DataStreamFileCodec;

    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;-><init>(Lcom/android/server/backup/BackupPasswordManager$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;-><init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V

    return-object v0
.end method

.method private getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/backup/utils/DataStreamFileCodec<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Lcom/android/server/backup/utils/DataStreamFileCodec;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v3, "pwversion"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;-><init>(Lcom/android/server/backup/BackupPasswordManager$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;-><init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V

    return-object v0
.end method

.method private loadStateFromFilesystem()V
    .registers 4

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->deserialize()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 184
    goto :goto_1c

    .line 181
    :catch_11
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupPasswordManager"

    const-string v2, "Unable to read backup pw version"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1c
    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->deserialize()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    .line 188
    .local v0, "hash":Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
    iget-object v1, v0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 189
    iget-object v1, v0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    iput-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2e} :catch_2f

    .line 192
    .end local v0    # "hash":Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
    goto :goto_37

    .line 190
    :catch_2f
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupPasswordManager"

    const-string v2, "Unable to read saved backup pw hash"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v0    # "e":Ljava/io/IOException;
    :goto_37
    return-void
.end method

.method private passwordMatchesSaved(Ljava/lang/String;)Z
    .registers 3
    .param p1, "candidatePassword"    # Ljava/lang/String;

    .line 203
    const-string v0, "PBKDF2WithHmacSHA1"

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 204
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->usePbkdf2Fallback()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "PBKDF2WithHmacSHA1And8bit"

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 203
    :goto_1a
    return v0
.end method

.method private passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "candidatePassword"    # Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 216
    if-eqz p2, :cond_11

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1

    .line 217
    :cond_13
    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_2b

    .line 221
    :cond_1c
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B

    const/16 v1, 0x2710

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "candidatePasswordHash":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 219
    .end local v0    # "candidatePasswordHash":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return v1
.end method

.method private randomSalt()[B
    .registers 4

    .line 228
    const/16 v0, 0x8

    .line 229
    .local v0, "bitsPerByte":I
    const/16 v1, 0x200

    div-int/2addr v1, v0

    new-array v1, v1, [B

    .line 230
    .local v1, "array":[B
    iget-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 231
    return-object v1
.end method

.method private usePbkdf2Fallback()Z
    .registers 3

    .line 154
    iget v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method backupPasswordMatches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 99
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method hasBackupPassword()Z
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "hasBackupPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "currentPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 117
    return v1

    .line 122
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/backup/utils/DataStreamFileCodec;->serialize(Ljava/lang/Object;)V

    .line 123
    iput v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_56

    .line 127
    nop

    .line 129
    if-eqz p2, :cond_51

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_51

    .line 134
    :cond_2a
    :try_start_2a
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->randomSalt()[B

    move-result-object v0

    .line 135
    .local v0, "salt":[B
    const-string v2, "PBKDF2WithHmacSHA1"

    const/16 v3, 0x2710

    invoke-static {v2, p2, v0, v3}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "newPwHash":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v3

    new-instance v4, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    invoke-direct {v4, v2, v0}, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v3, v4}, Lcom/android/server/backup/utils/DataStreamFileCodec;->serialize(Ljava/lang/Object;)V

    .line 139
    iput-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_46} :catch_48

    .line 141
    const/4 v1, 0x1

    return v1

    .line 142
    .end local v0    # "salt":[B
    .end local v2    # "newPwHash":Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupPasswordManager"

    const-string v3, "Unable to set backup password"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    return v1

    .line 130
    :cond_51
    :goto_51
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->clearPassword()Z

    move-result v0

    return v0

    .line 124
    :catch_56
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "BackupPasswordManager"

    const-string v3, "Unable to write backup pw version; password not changed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v1
.end method
