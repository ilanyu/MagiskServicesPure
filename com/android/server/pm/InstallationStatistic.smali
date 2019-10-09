.class Lcom/android/server/pm/InstallationStatistic;
.super Ljava/lang/Object;
.source "InstallationStatistic.java"


# instance fields
.field installerPkg:Ljava/lang/String;

.field pkg:Ljava/lang/String;

.field timeAospSecurityCheck:J

.field timeBeginAospVerify:J

.field timeBeginInstall:J

.field timeCollectingCerts:J

.field timeCopyApkConsumed:J

.field timeDexopt:J

.field timeEndInstall:J

.field timeMiuiSecurityCheck:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/InstallationStatistic;->timeBeginInstall:J

    .line 14
    iput-wide v0, p0, Lcom/android/server/pm/InstallationStatistic;->timeCopyApkConsumed:J

    .line 15
    iput-wide v0, p0, Lcom/android/server/pm/InstallationStatistic;->timeCollectingCerts:J

    .line 16
    iput-wide v0, p0, Lcom/android/server/pm/InstallationStatistic;->timeMiuiSecurityCheck:J

    .line 17
    iput-wide v0, p0, Lcom/android/server/pm/InstallationStatistic;->timeBeginAospVerify:J

    .line 18
    iput-wide v0, p0, Lcom/android/server/pm/InstallationStatistic;->timeAospSecurityCheck:J

    .line 19
    iput-wide v0, p0, Lcom/android/server/pm/InstallationStatistic;->timeDexopt:J

    .line 20
    iput-wide v0, p0, Lcom/android/server/pm/InstallationStatistic;->timeEndInstall:J

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/pm/InstallationStatistic;->pkg:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/pm/InstallationStatistic;->installerPkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method dump()V
    .registers 3

    .line 25
    const-string v0, "InstallationStatistic"

    invoke-virtual {p0}, Lcom/android/server/pm/InstallationStatistic;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 29
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s|%s|%d|%d|%d|%d|%d|%d"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/pm/InstallationStatistic;->pkg:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/server/pm/InstallationStatistic;->installerPkg:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/android/server/pm/InstallationStatistic;->timeEndInstall:J

    iget-wide v5, p0, Lcom/android/server/pm/InstallationStatistic;->timeBeginInstall:J

    sub-long/2addr v3, v5

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/android/server/pm/InstallationStatistic;->timeCopyApkConsumed:J

    .line 31
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/android/server/pm/InstallationStatistic;->timeCollectingCerts:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/android/server/pm/InstallationStatistic;->timeMiuiSecurityCheck:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/android/server/pm/InstallationStatistic;->timeAospSecurityCheck:J

    .line 32
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget-wide v3, p0, Lcom/android/server/pm/InstallationStatistic;->timeDexopt:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 29
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
