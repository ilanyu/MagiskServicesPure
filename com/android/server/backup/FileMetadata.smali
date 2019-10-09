.class public Lcom/android/server/backup/FileMetadata;
.super Ljava/lang/Object;
.source "FileMetadata.java"


# instance fields
.field public domain:Ljava/lang/String;

.field public hasApk:Z

.field public installerPackageName:Ljava/lang/String;

.field public mode:J

.field public mtime:J

.field public packageName:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:J

.field public type:I

.field public version:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()V
    .registers 13

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .local v0, "b":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/server/backup/FileMetadata;->type:I

    const/16 v2, 0x2d

    const/4 v3, 0x2

    if-ne v1, v3, :cond_11

    const/16 v1, 0x64

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    iget-wide v3, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v5, 0x100

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const/16 v3, 0x72

    if-eqz v1, :cond_24

    move v1, v3

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v7, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v9, 0x80

    and-long/2addr v7, v9

    cmp-long v1, v7, v5

    const/16 v4, 0x77

    if-eqz v1, :cond_35

    move v1, v4

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    iget-wide v7, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v9, 0x40

    and-long/2addr v7, v9

    cmp-long v1, v7, v5

    const/16 v7, 0x78

    if-eqz v1, :cond_46

    move v1, v7

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    iget-wide v8, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x20

    and-long/2addr v8, v10

    cmp-long v1, v8, v5

    if-eqz v1, :cond_55

    move v1, v3

    goto :goto_56

    :cond_55
    move v1, v2

    :goto_56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    iget-wide v8, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x10

    and-long/2addr v8, v10

    cmp-long v1, v8, v5

    if-eqz v1, :cond_64

    move v1, v4

    goto :goto_65

    :cond_64
    move v1, v2

    :goto_65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    iget-wide v8, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    cmp-long v1, v8, v5

    if-eqz v1, :cond_73

    move v1, v7

    goto :goto_74

    :cond_73
    move v1, v2

    :goto_74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    iget-wide v8, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    cmp-long v1, v8, v5

    if-eqz v1, :cond_81

    goto :goto_82

    :cond_81
    move v3, v2

    :goto_82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    iget-wide v8, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    cmp-long v1, v8, v5

    if-eqz v1, :cond_8f

    goto :goto_90

    :cond_8f
    move v4, v2

    :goto_90
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    iget-wide v3, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    const-wide/16 v8, 0x1

    and-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9e

    move v2, v7

    nop

    :cond_9e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, " %9d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/backup/FileMetadata;->mtime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 77
    .local v1, "stamp":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMM dd HH:mm:ss "

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v2, p0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v2, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v2, " :: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v2, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v2, "BackupManagerService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FileMetadata{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    iget v2, p0, Lcom/android/server/backup/FileMetadata;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    iget-object v2, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    iget-object v2, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    iget-wide v1, p0, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
