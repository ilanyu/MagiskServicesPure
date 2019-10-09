.class final enum Lcom/android/server/WifiAssistant$NetworkCandidate;
.super Ljava/lang/Enum;
.source "WifiAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NetworkCandidate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/WifiAssistant$NetworkCandidate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/WifiAssistant$NetworkCandidate;

.field public static final enum DATA:Lcom/android/server/WifiAssistant$NetworkCandidate;

.field public static final enum NONE:Lcom/android/server/WifiAssistant$NetworkCandidate;

.field public static final enum SELF:Lcom/android/server/WifiAssistant$NetworkCandidate;

.field public static final enum WIFI:Lcom/android/server/WifiAssistant$NetworkCandidate;


# instance fields
.field public final eventId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 59
    new-instance v0, Lcom/android/server/WifiAssistant$NetworkCandidate;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/WifiAssistant$NetworkCandidate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->NONE:Lcom/android/server/WifiAssistant$NetworkCandidate;

    .line 60
    new-instance v0, Lcom/android/server/WifiAssistant$NetworkCandidate;

    const-string v1, "SELF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/WifiAssistant$NetworkCandidate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->SELF:Lcom/android/server/WifiAssistant$NetworkCandidate;

    .line 61
    new-instance v0, Lcom/android/server/WifiAssistant$NetworkCandidate;

    const-string v1, "WIFI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/WifiAssistant$NetworkCandidate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->WIFI:Lcom/android/server/WifiAssistant$NetworkCandidate;

    .line 62
    new-instance v0, Lcom/android/server/WifiAssistant$NetworkCandidate;

    const-string v1, "DATA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/WifiAssistant$NetworkCandidate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->DATA:Lcom/android/server/WifiAssistant$NetworkCandidate;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/WifiAssistant$NetworkCandidate;

    sget-object v1, Lcom/android/server/WifiAssistant$NetworkCandidate;->NONE:Lcom/android/server/WifiAssistant$NetworkCandidate;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/WifiAssistant$NetworkCandidate;->SELF:Lcom/android/server/WifiAssistant$NetworkCandidate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/WifiAssistant$NetworkCandidate;->WIFI:Lcom/android/server/WifiAssistant$NetworkCandidate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/WifiAssistant$NetworkCandidate;->DATA:Lcom/android/server/WifiAssistant$NetworkCandidate;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->$VALUES:[Lcom/android/server/WifiAssistant$NetworkCandidate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "eventId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/WifiAssistant$NetworkCandidate;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lcom/android/server/WifiAssistant$NetworkCandidate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/WifiAssistant$NetworkCandidate;

    return-object v0
.end method

.method public static values()[Lcom/android/server/WifiAssistant$NetworkCandidate;
    .registers 1

    .line 58
    sget-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->$VALUES:[Lcom/android/server/WifiAssistant$NetworkCandidate;

    invoke-virtual {v0}, [Lcom/android/server/WifiAssistant$NetworkCandidate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/WifiAssistant$NetworkCandidate;

    return-object v0
.end method
