.class final enum Lcom/android/server/backup/internal/BackupState;
.super Ljava/lang/Enum;
.source "BackupState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/backup/internal/BackupState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/backup/internal/BackupState;

.field public static final enum BACKUP_PM:Lcom/android/server/backup/internal/BackupState;

.field public static final enum FINAL:Lcom/android/server/backup/internal/BackupState;

.field public static final enum INITIAL:Lcom/android/server/backup/internal/BackupState;

.field public static final enum RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 7
    new-instance v0, Lcom/android/server/backup/internal/BackupState;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/internal/BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/internal/BackupState;->INITIAL:Lcom/android/server/backup/internal/BackupState;

    .line 8
    new-instance v0, Lcom/android/server/backup/internal/BackupState;

    const-string v1, "BACKUP_PM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/backup/internal/BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/internal/BackupState;->BACKUP_PM:Lcom/android/server/backup/internal/BackupState;

    .line 9
    new-instance v0, Lcom/android/server/backup/internal/BackupState;

    const-string v1, "RUNNING_QUEUE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/backup/internal/BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 10
    new-instance v0, Lcom/android/server/backup/internal/BackupState;

    const-string v1, "FINAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/backup/internal/BackupState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/backup/internal/BackupState;

    sget-object v1, Lcom/android/server/backup/internal/BackupState;->INITIAL:Lcom/android/server/backup/internal/BackupState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/backup/internal/BackupState;->BACKUP_PM:Lcom/android/server/backup/internal/BackupState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/backup/internal/BackupState;->$VALUES:[Lcom/android/server/backup/internal/BackupState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/backup/internal/BackupState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/android/server/backup/internal/BackupState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/internal/BackupState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/backup/internal/BackupState;
    .registers 1

    .line 6
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->$VALUES:[Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {v0}, [Lcom/android/server/backup/internal/BackupState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/backup/internal/BackupState;

    return-object v0
.end method
