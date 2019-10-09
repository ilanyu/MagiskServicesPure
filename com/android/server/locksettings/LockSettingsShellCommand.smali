.class Lcom/android/server/locksettings/LockSettingsShellCommand;
.super Landroid/os/ShellCommand;
.source "LockSettingsShellCommand.java"


# static fields
.field private static final COMMAND_CLEAR:Ljava/lang/String; = "clear"

.field private static final COMMAND_GET_DISABLED:Ljava/lang/String; = "get-disabled"

.field private static final COMMAND_SET_DISABLED:Ljava/lang/String; = "set-disabled"

.field private static final COMMAND_SET_PASSWORD:Ljava/lang/String; = "set-password"

.field private static final COMMAND_SET_PATTERN:Ljava/lang/String; = "set-pattern"

.field private static final COMMAND_SET_PIN:Ljava/lang/String; = "set-pin"

.field private static final COMMAND_SP:Ljava/lang/String; = "sp"

.field private static final COMMAND_VERIFY:Ljava/lang/String; = "verify"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNew:Ljava/lang/String;

.field private mOld:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .line 48
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 51
    return-void
.end method

.method private checkCredential()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    .line 170
    .local v0, "havePassword":Z
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    .line 171
    .local v1, "havePattern":Z
    if-nez v0, :cond_17

    if-eqz v1, :cond_15

    goto :goto_17

    .line 196
    :cond_15
    const/4 v2, 0x1

    return v2

    .line 172
    :cond_17
    :goto_17
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    .line 173
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, "Profile uses unified challenge"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    return v3

    .line 179
    :cond_2c
    if-eqz v0, :cond_3b

    .line 180
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_49

    .line 191
    .end local v2    # "result":Z
    :catch_39
    move-exception v2

    goto :goto_7c

    .line 182
    :cond_3b
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;I)Z

    move-result v2

    .line 184
    .restart local v2    # "result":Z
    :goto_49
    if-nez v2, :cond_7b

    .line 185
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isManagedProfileWithUnifiedChallenge(I)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 186
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 188
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old password \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' didn\'t match"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7b
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_2e .. :try_end_7b} :catch_39

    .line 190
    :cond_7b
    return v2

    .line 191
    .end local v2    # "result":Z
    :goto_7c
    nop

    .line 192
    .local v2, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Request throttled"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    return v3
.end method

.method private parseArgs()V
    .registers 5

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_47

    .line 111
    const-string v0, "--old"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 112
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_16
    const-string v0, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 114
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    goto :goto_0

    .line 116
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 120
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    .line 121
    return-void
.end method

.method private runChangeSp()V
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 125
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 126
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->enableSyntheticPassword()V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Synthetic password enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35

    .line 128
    :cond_1d
    const-string v0, "0"

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 129
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->disableSyntheticPassword()V

    .line 130
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Synthetic password disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "SP Enabled = %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 134
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 133
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private runClear()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Lock credential cleared"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private runGetDisabled()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    .line 165
    .local v0, "isLockScreenDisabled":Z
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 166
    return-void
.end method

.method private runSetDisabled()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 159
    .local v0, "disabled":Z
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 160
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock screen disabled set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private runSetPassword()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    const/high16 v4, 0x40000

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 144
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Password set to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private runSetPattern()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pattern set to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private runSetPin()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mOld:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    const/high16 v4, 0x20000

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pin set to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mNew:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private runVerify()V
    .registers 3

    .line 101
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Lock credential verified successfully"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 56
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCurrentUserId:I

    .line 58
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->parseArgs()V

    .line 59
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->checkCredential()Z

    move-result v1

    if-nez v1, :cond_17

    .line 60
    return v0

    .line 62
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_d6

    goto :goto_76

    :sswitch_20
    const-string/jumbo v1, "set-pin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/4 v1, 0x2

    goto :goto_77

    :sswitch_2b
    const-string/jumbo v1, "set-password"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/4 v1, 0x1

    goto :goto_77

    :sswitch_36
    const-string v1, "clear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/4 v1, 0x3

    goto :goto_77

    :sswitch_40
    const-string/jumbo v1, "set-disabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/4 v1, 0x5

    goto :goto_77

    :sswitch_4b
    const-string/jumbo v1, "sp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/4 v1, 0x4

    goto :goto_77

    :sswitch_56
    const-string/jumbo v1, "verify"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/4 v1, 0x6

    goto :goto_77

    :sswitch_61
    const-string v1, "get-disabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    const/4 v1, 0x7

    goto :goto_77

    :sswitch_6b
    const-string/jumbo v1, "set-pattern"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    move v1, v2

    goto :goto_77

    :cond_76
    :goto_76
    move v1, v0

    :goto_77
    packed-switch v1, :pswitch_data_f8

    .line 88
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    goto :goto_9f

    .line 85
    :pswitch_7f
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runGetDisabled()V

    .line 86
    goto :goto_b3

    .line 82
    :pswitch_83
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runVerify()V

    .line 83
    goto :goto_b3

    .line 79
    :pswitch_87
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetDisabled()V

    .line 80
    goto :goto_b3

    .line 76
    :pswitch_8b
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runChangeSp()V

    .line 77
    goto :goto_b3

    .line 73
    :pswitch_8f
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runClear()V

    .line 74
    goto :goto_b3

    .line 70
    :pswitch_93
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPin()V

    .line 71
    goto :goto_b3

    .line 67
    :pswitch_97
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPassword()V

    .line 68
    goto :goto_b3

    .line 64
    :pswitch_9b
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->runSetPattern()V

    .line 65
    goto :goto_b3

    .line 88
    :goto_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b3} :catch_b4

    .line 91
    :goto_b3
    return v2

    .line 92
    :catch_b4
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while executing command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 95
    return v0

    nop

    :sswitch_data_d6
    .sparse-switch
        -0x79d9f6db -> :sswitch_6b
        -0x57d6f0ed -> :sswitch_61
        -0x30df7787 -> :sswitch_56
        0xe5d -> :sswitch_4b
        0x47ccf87 -> :sswitch_40
        0x5a5b64d -> :sswitch_36
        0x3ce04fa6 -> :sswitch_2b
        0x763ee1aa -> :sswitch_20
    .end sparse-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_97
        :pswitch_93
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
    .end packed-switch
.end method

.method public onHelp()V
    .registers 1

    .line 106
    return-void
.end method
