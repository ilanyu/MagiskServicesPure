.class public final enum Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
.super Ljava/lang/Enum;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;


# instance fields
.field public final eventId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 47
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string v1, "LOST_INTERNET"

    const/4 v2, 0x0

    const/16 v3, 0x2e6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 48
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string v1, "NETWORK_SWITCH"

    const/4 v3, 0x1

    const/16 v4, 0x2e7

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 49
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string v1, "NO_INTERNET"

    const/4 v4, 0x2

    const/16 v5, 0x2e5

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 50
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string v1, "SIGN_IN"

    const/4 v5, 0x3

    const/16 v6, 0x2e4

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->$VALUES:[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

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

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->eventId:I

    .line 56
    # getter for: Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->sIdToTypeMap:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->access$000()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method public static getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .registers 2
    .param p0, "id"    # I

    .line 64
    # getter for: Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->sIdToTypeMap:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->access$000()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .registers 1

    .line 46
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->$VALUES:[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v0}, [Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    return-object v0
.end method
