.class final enum Lcom/android/server/display/MiuiProjectionManager$State;
.super Ljava/lang/Enum;
.source "MiuiProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MiuiProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/MiuiProjectionManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/MiuiProjectionManager$State;

.field public static final enum STATE_CONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

.field public static final enum STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

.field public static final enum STATE_LISTENING:Lcom/android/server/display/MiuiProjectionManager$State;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 26
    new-instance v0, Lcom/android/server/display/MiuiProjectionManager$State;

    const-string v1, "STATE_LISTENING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/MiuiProjectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_LISTENING:Lcom/android/server/display/MiuiProjectionManager$State;

    .line 27
    new-instance v0, Lcom/android/server/display/MiuiProjectionManager$State;

    const-string v1, "STATE_CONNECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/MiuiProjectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_CONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    .line 28
    new-instance v0, Lcom/android/server/display/MiuiProjectionManager$State;

    const-string v1, "STATE_DISCONNECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/MiuiProjectionManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/display/MiuiProjectionManager$State;

    sget-object v1, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_LISTENING:Lcom/android/server/display/MiuiProjectionManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_CONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/MiuiProjectionManager$State;->STATE_DISCONNECTED:Lcom/android/server/display/MiuiProjectionManager$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/display/MiuiProjectionManager$State;->$VALUES:[Lcom/android/server/display/MiuiProjectionManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/MiuiProjectionManager$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/android/server/display/MiuiProjectionManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/MiuiProjectionManager$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/MiuiProjectionManager$State;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/server/display/MiuiProjectionManager$State;->$VALUES:[Lcom/android/server/display/MiuiProjectionManager$State;

    invoke-virtual {v0}, [Lcom/android/server/display/MiuiProjectionManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/MiuiProjectionManager$State;

    return-object v0
.end method
