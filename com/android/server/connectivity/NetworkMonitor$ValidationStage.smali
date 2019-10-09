.class final enum Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
.super Ljava/lang/Enum;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ValidationStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

.field public static final enum FIRST_VALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

.field public static final enum REVALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;


# instance fields
.field final isFirstValidation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 127
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    const-string v1, "FIRST_VALIDATION"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->FIRST_VALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    .line 128
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    const-string v1, "REVALIDATION"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->REVALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->FIRST_VALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->REVALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->$VALUES:[Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p3, "isFirstValidation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    iput-boolean p3, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    .line 132
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 126
    const-class v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .registers 1

    .line 126
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->$VALUES:[Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    return-object v0
.end method
