.class synthetic Lcom/android/server/ConnectivityService$8;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

.field static final synthetic $SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 2989
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->values()[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/ConnectivityService$8;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/android/server/ConnectivityService$8;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/android/server/ConnectivityService$8;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    sget-object v3, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    .line 2644
    :goto_23
    invoke-static {}, Lcom/android/server/ConnectivityService$UnneededFor;->values()[Lcom/android/server/ConnectivityService$UnneededFor;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/ConnectivityService$8;->$SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

    :try_start_2c
    sget-object v2, Lcom/android/server/ConnectivityService$8;->$SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

    sget-object v3, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v0

    :goto_38
    :try_start_38
    sget-object v0, Lcom/android/server/ConnectivityService$8;->$SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

    sget-object v2, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-exception v0

    :goto_44
    return-void
.end method
